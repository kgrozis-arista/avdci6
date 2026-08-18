#!/usr/bin/env python3
"""Interactive setup wizard for avdci6 AVD project configuration.

This wizard walks through setting critical project variables:
- CloudVision Portal IP (for configuration management and deployment)
- Optional: DC device IPs and management settings

Uses standard YAML parsing without external dependencies (stdlib only).
"""

from __future__ import annotations

import ipaddress
import re
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent

# Regex to match YAML keys at any indent: key: value
KEY_RE = re.compile(r"^(?P<indent>\s*)(?P<key>[^\s#:][^:]*):\s*(?P<rest>.*)$")


# ============================================================================
# YAML Utilities (stdlib only — no PyYAML dependency)
# ============================================================================


def find_host_key_line(lines: list[str], host_name: str, key_name: str) -> int:
    """Find the 0-indexed line number of `<key_name>:` under `<host_name>:`.

    Scans for a line matching `<indent><host_name>:` then looks for the
    first `<key_name>:` nested deeper than that indentation. Raises ValueError
    if the host or key is not found.
    """
    host_indent: int | None = None
    for i, line in enumerate(lines):
        match = KEY_RE.match(line.rstrip("\n"))
        if not match:
            continue
        indent = len(match.group("indent"))
        key = match.group("key").strip()

        if host_indent is None:
            if key == host_name and not match.group("rest").strip():
                host_indent = indent
            continue

        # We're inside the host block; bail out if we leave it
        if indent <= host_indent:
            break
        if key == key_name:
            return i

    if host_indent is None:
        raise ValueError(f"Host '{host_name}' not found in inventory.")
    raise ValueError(
        f"Host '{host_name}' has no `{key_name}:` entry."
    )


def _value_re(key_name: str) -> re.Pattern[str]:
    """Build a regex pattern for extracting IP from `<indent><key>: <ip>`."""
    return re.compile(
        rf"^(?P<indent>\s+){re.escape(key_name)}:\s*(?P<ip>\S+)\s*$"
    )


def read_host_ip(
    file_path: Path, host_name: str, key_name: str = "ansible_host"
) -> tuple[str, int]:
    """Return (IP value, 1-indexed line number) for `<host>.<key>`."""
    lines = file_path.read_text().splitlines()
    idx = find_host_key_line(lines, host_name, key_name)
    match = _value_re(key_name).match(lines[idx])
    if not match:
        raise ValueError(
            f"Line {idx + 1} doesn't look like a `{key_name}:` entry:\n"
            f"  {lines[idx]!r}"
        )
    return match.group("ip"), idx + 1


def update_host_keys(
    file_path: Path,
    host_name: str,
    key_names: list[str],
    new_ip: str,
) -> list[int]:
    """Rewrite one or more keys under `host_name` to `new_ip`.

    Returns the list of 1-indexed line numbers modified.
    Preserves indentation and trailing newlines.
    """
    lines = file_path.read_text().splitlines(keepends=True)
    bare_lines = [line.rstrip("\n") for line in lines]

    updates: list[tuple[int, str, str]] = []  # (line_idx, indent, newline)
    for key_name in key_names:
        idx = find_host_key_line(bare_lines, host_name, key_name)
        original = lines[idx]
        match = _value_re(key_name).match(original.rstrip("\n"))
        if not match:
            raise ValueError(
                f"Refusing to update line {idx + 1}; doesn't match the "
                f"`{key_name}:` pattern:\n  {original!r}"
            )
        newline = "\n" if original.endswith("\n") else ""
        updates.append((idx, match.group("indent"), newline))

    for (idx, indent, newline), key_name in zip(updates, key_names):
        lines[idx] = f"{indent}{key_name}: {new_ip}{newline}"

    file_path.write_text("".join(lines))
    return [idx + 1 for idx, _, _ in updates]


# ============================================================================
# User Interaction Utilities
# ============================================================================


def prompt_yes_no(question: str) -> bool:
    """Prompt user for yes/no answer, retry on invalid input."""
    while True:
        try:
            sys.stdout.write(f"{question} [y/n]: ")
            sys.stdout.flush()
            answer = input().strip().lower()
        except (EOFError, KeyboardInterrupt):
            print()
            return False
        if answer in {"y", "yes"}:
            return True
        if answer in {"n", "no"}:
            return False
        print("  Please answer 'y' or 'n'.")


def prompt_ipv4(prompt: str, max_attempts: int = 3) -> str | None:
    """Prompt user for IPv4 address with validation."""
    for attempt in range(1, max_attempts + 1):
        try:
            sys.stdout.write(prompt)
            sys.stdout.flush()
            raw = input().strip()
        except (EOFError, KeyboardInterrupt):
            print()
            return None
        try:
            ipaddress.IPv4Address(raw)
        except (ipaddress.AddressValueError, ValueError):
            remaining = max_attempts - attempt
            if remaining > 0:
                print(
                    f"  '{raw}' is not a valid IPv4 address. "
                    f"Try again ({remaining} attempt(s) left)."
                )
                continue
            print(f"  '{raw}' is not a valid IPv4 address. Giving up.")
            return None
        return raw
    return None


# ============================================================================
# Configuration Sections
# ============================================================================


def configure_host_ip(
    *,
    label: str,
    hint: str,
    file_path: Path,
    host_name: str,
    key_names: list[str],
) -> None:
    """Generic prompt → read → validate → update workflow."""
    try:
        # Read current value first (before any prompts)
        current_ip, line_no = read_host_ip(file_path, host_name, key_names[0])
    except (FileNotFoundError, ValueError) as e:
        print(f"ERROR: could not read current IP: {e}", file=sys.stderr)
        return

    print()
    print(f"{label}")
    print(f"  Current value: {current_ip}")
    print()

    # Now ask if they want to change it
    if not prompt_yes_no(f"  Change {label}?"):
        print(f"  Skipping {label}.\n")
        return

    new_ip = prompt_ipv4("  Enter new IPv4 address: ")
    if new_ip is None:
        print(f"  No valid IP provided. {label} unchanged.\n")
        return

    if new_ip == current_ip:
        print(f"  IP unchanged ({new_ip}). Nothing to do.\n")
        return

    try:
        updated_lines = update_host_keys(file_path, host_name, key_names, new_ip)
    except (OSError, ValueError) as e:
        print(f"ERROR: could not update file: {e}", file=sys.stderr)
        return

    print(f"  ✓ {label} is now {new_ip}\n")


# ============================================================================
# Main
# ============================================================================


def main() -> int:
    """Run the setup wizard.

    Optional arguments:
      dev     - Configure dev environment only
      prod    - Configure prod environment only
      both    - Configure both dev and prod (default)
      (none)  - Configure both dev and prod (default)
    """
    # Parse environment argument
    environment = "both"
    if len(sys.argv) > 1:
        env_arg = sys.argv[1].strip().lower()
        if env_arg in ("dev", "prod", "both"):
            environment = env_arg
        else:
            print(f"ERROR: Unknown environment '{env_arg}'", file=sys.stderr)
            print("  Valid options: dev, prod, both", file=sys.stderr)
            return 1

    print("=" * 70)
    print("  avdci6 AVD Project Setup Wizard")
    print("=" * 70)
    print()
    print(f"Configuring: {environment.upper()}")
    print()

    inventory_path = REPO_ROOT / "avd_project" / "inventory" / "inventory.yml"

    # Configure Dev environment
    if environment in ("dev", "both"):
        print("─" * 70)
        print("DEV ENVIRONMENT")
        print("─" * 70)
        print()

        # Dev CloudVision Portal
        configure_host_ip(
            label="Dev CloudVision Portal IP",
            hint="",
            file_path=inventory_path,
            host_name="cv_dev_server",
            key_names=["ansible_httpapi_host", "ansible_host", "ansible_user"],
        )

        # Dev AVD Tooling server
        configure_host_ip(
            label="Dev AVD Tooling Server IP",
            hint="",
            file_path=inventory_path,
            host_name="dev_avd",
            key_names=["ansible_host"],
        )

    # Configure Prod environment
    if environment in ("prod", "both"):
        print("─" * 70)
        print("PROD ENVIRONMENT")
        print("─" * 70)
        print()

        # Prod CloudVision Portal
        configure_host_ip(
            label="Prod CloudVision Portal IP",
            hint="",
            file_path=inventory_path,
            host_name="cv_prod_server",
            key_names=["ansible_httpapi_host", "ansible_host", "ansible_user"],
        )

        # Prod AVD Tooling server
        configure_host_ip(
            label="Prod AVD Tooling Server IP",
            hint="",
            file_path=inventory_path,
            host_name="prod_avd",
            key_names=["ansible_host"],
        )

    print("=" * 70)
    print("Setup wizard complete.")
    print("=" * 70)
    print()
    print("Next steps:")
    print("  1. Review the generated inventory:")
    print("     cat avd_project/inventory/inventory.yml")
    print()
    print("  2. Generate configurations:")
    print("     make build")
    print()
    print("  3. (Optional) Deploy to CloudVision:")
    print("     make deploy")
    print()

    return 0


if __name__ == "__main__":
    sys.exit(main())
