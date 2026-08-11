#!/usr/bin/env bash
# Setup Python venv and install dependencies for avdci6 AVD project
#
# Creates a Python virtual environment at .venv/ and installs all required
# Python packages and Ansible collections needed to run the project.
#
# Safe to re-run: existing venv is reused, pip and collections are upgraded.
#
# Usage:
#   ./scripts/setup-venv.sh
#   # or via Makefile:
#   make setup

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VENV_DIR="${VENV_DIR:-${REPO_ROOT}/.venv}"
PYTHON="${PYTHON:-python3}"
REQUIREMENTS="${REPO_ROOT}/requirements.txt"
COLLECTIONS="${REPO_ROOT}/collections.yml"

# ============================================================================
# Utility Functions
# ============================================================================

log_info() {
    echo "[INFO] $@"
}

log_error() {
    echo "[ERROR] $@" >&2
}

# ============================================================================
# Validation
# ============================================================================

log_info "Checking Python availability..."
if ! command -v "${PYTHON}" >/dev/null 2>&1; then
    log_error "${PYTHON} not found on PATH"
    log_error "Install Python 3.8+ first, then try again"
    exit 1
fi

PY_VERSION=$("${PYTHON}" -c 'import sys; print(f"{sys.version_info[0]}.{sys.version_info[1]}")')
log_info "Using ${PYTHON} (${PY_VERSION})"

# Check for minimum Python version
PY_MAJOR=$(echo "$PY_VERSION" | cut -d. -f1)
PY_MINOR=$(echo "$PY_VERSION" | cut -d. -f2)
if [[ $PY_MAJOR -lt 3 ]] || [[ $PY_MAJOR -eq 3 && $PY_MINOR -lt 8 ]]; then
    log_error "Python 3.8+ is required, but found $PY_VERSION"
    exit 1
fi

# ============================================================================
# System Dependencies (optional, with graceful degradation)
# ============================================================================

log_info "Checking for sshpass (used by rsync-based file transfer)..."
if command -v sshpass >/dev/null 2>&1; then
    log_info "✓ sshpass already installed"
elif [[ "$(uname)" == "Darwin" ]]; then
    if command -v brew >/dev/null 2>&1; then
        log_info "Installing sshpass via Homebrew..."
        brew install hudochenkov/sshpass/sshpass 2>/dev/null || {
            log_error "Failed to install sshpass via brew"
            log_error "  Reinstall Homebrew or install sshpass manually"
        }
    else
        log_error "sshpass not installed and brew not found"
        log_error "  Install Homebrew first: https://brew.sh"
    fi
else
    log_error "sshpass not found (optional for basic setup)"
    log_error "  Install via your package manager:"
    log_error "    Debian/Ubuntu:  sudo apt install -y sshpass"
    log_error "    RHEL/CentOS:    sudo yum install -y sshpass"
    log_error "    Fedora:         sudo dnf install -y sshpass"
    log_error "  Skipping for now; you may need it later for CloudVision deployment"
fi

# ============================================================================
# Python Virtual Environment
# ============================================================================

if [[ ! -d "${VENV_DIR}" ]]; then
    log_info "Creating virtual environment at ${VENV_DIR}..."
    "${PYTHON}" -m venv "${VENV_DIR}"
else
    log_info "Reusing existing virtual environment at ${VENV_DIR}"
fi

# Activate venv
# shellcheck disable=SC1091
source "${VENV_DIR}/bin/activate"

# ============================================================================
# Pip Cache Cleanup (optional)
# ============================================================================

if [[ "${CLEAR_PIP_CACHE:-1}" == "1" ]]; then
    log_info "Clearing pip cache (set CLEAR_PIP_CACHE=0 to skip)..."
    rm -rf "${HOME}/Library/Caches/pip" "${HOME}/.cache/pip" 2>/dev/null || true
fi

# ============================================================================
# Python Package Installation
# ============================================================================

log_info "Upgrading pip and wheel..."
python -m pip install --quiet --upgrade pip wheel setuptools

if [[ ! -f "${REQUIREMENTS}" ]]; then
    log_error "requirements.txt not found at ${REQUIREMENTS}"
    exit 1
fi

log_info "Installing Python requirements from ${REQUIREMENTS}..."
pip install --quiet --requirement "${REQUIREMENTS}"

# ============================================================================
# Ansible Collections Installation
# ============================================================================

if [[ ! -f "${COLLECTIONS}" ]]; then
    log_error "collections.yml not found at ${COLLECTIONS}"
    exit 1
fi

log_info "Installing Ansible collections from ${COLLECTIONS}..."
ansible-galaxy collection install --upgrade --requirements-file "${COLLECTIONS}" 2>&1 | grep -v "Skipping"

# ============================================================================
# Validation
# ============================================================================

log_info "Validating installation..."

# Check key tools are available
for tool in ansible ansible-playbook ansible-lint ansible-galaxy; do
    if ! command -v "$tool" >/dev/null 2>&1; then
        log_error "$tool not found in PATH"
        exit 1
    fi
done

log_info "✓ All tools installed successfully"

# ============================================================================
# Summary
# ============================================================================

cat <<EOF

================================================================================
  Setup Complete
================================================================================

Virtual environment created at:
  ${VENV_DIR}

To activate the venv in your current shell:
  source ${VENV_DIR}/bin/activate

Or use the Makefile (auto-activates venv):
  make step0-setup-env       # Full bootstrap (venv + wizard + prepare)
  make setup                 # Just create venv
  make setup-wizard          # Just run config wizard

To verify the installation:
  ansible --version
  ansible-galaxy collection list | grep arista.avd

Next steps:
  1. Review the main README: cat README.md
  2. Run setup wizard:      make setup-wizard
  3. Generate configs:      make build

EOF
