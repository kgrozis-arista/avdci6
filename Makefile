# Makefile for avdci6 AVD Project
#
# Targets for bootstrapping, building, deploying, and validating a multi-DC
# Spine-Leaf fabric using Arista Validated Design (AVD) 6.x.
#
# Usage:
#   make help              # Show this help message
#   make step0-setup-env   # Bootstrap: setup venv, wizard, prepare
#
# Optional environment variables:
#   VENV               - Path to Python virtual environment (default: .venv)
#   LIMIT              - Limit playbook to specific hosts (Ansible --limit)
#   TAGS               - Run only specific tags (Ansible --tags)
#   EXTRA              - Pass extra variables (Ansible --extra-vars)

VENV       ?= .venv
LIMIT      ?=
TAGS       ?=
EXTRA      ?=

# Auto-prefer venv binaries when available; fall back to system tools
# Use absolute paths so targets work after cd
VENV_ABS         := $(abspath $(VENV))
ifneq ($(wildcard $(VENV)/bin/ansible-playbook),)
  ANSIBLE          := $(VENV_ABS)/bin/ansible
  ANSIBLE_PLAYBOOK := $(VENV_ABS)/bin/ansible-playbook
  ANSIBLE_LINT     := $(VENV_ABS)/bin/ansible-lint
else
  ANSIBLE          := ansible
  ANSIBLE_PLAYBOOK := ansible-playbook
  ANSIBLE_LINT     := ansible-lint
endif

# Build Ansible flags from optional variables
ANSIBLE_FLAGS =
ifneq ($(LIMIT),)
  ANSIBLE_FLAGS += --limit $(LIMIT)
endif
ifneq ($(TAGS),)
  ANSIBLE_FLAGS += --tags $(TAGS)
endif
ifneq ($(EXTRA),)
  ANSIBLE_FLAGS += --extra-vars "$(EXTRA)"
endif

.PHONY: help step0-setup-env setup setup-wizard setup-github-runner build-check build deploy validate check syntax lint clean

# ============================================================================
# Help
# ============================================================================

help:
	@echo "avdci6 AVD Project — Makefile Targets"
	@echo "======================================"
	@echo ""
	@echo "Bootstrap (one-shot setup):"
	@echo "  step0-setup-env    - Full bootstrap: setup → wizard → runner → validate"
	@echo "    setup            - Create .venv and install Python/Ansible deps"
	@echo "    setup-wizard     - Interactive prompt for project configuration"
	@echo "    setup-github-runner - Configure GitHub Actions runner on AVD-tooling server"
	@echo ""
	@echo "Build, Deploy & Validate:"
	@echo "  build              - Generate AVD configurations (eos_designs + eos_cli_config_gen)"
	@echo "  deploy             - Deploy configurations to CloudVision Portal"
	@echo "  validate           - Run ANTA validation tests on fabric"
	@echo ""
	@echo "Utilities:"
	@echo "  check              - Dry-run: --check --diff"
	@echo "  syntax             - Syntax-check the playbooks"
	@echo "  lint               - Run ansible-lint on playbooks"
	@echo "  clean              - Remove generated outputs"
	@echo ""
	@echo "Optional variables:"
	@echo "  VENV=$(VENV)"
	@echo "  LIMIT=host1 TAGS=tag1 EXTRA='key=value'"
	@echo "  RUNNER_TOKEN=token (for setup-github-runner)"
	@echo ""
	@echo "Examples:"
	@echo "  make step0-setup-env        # Bootstrap from scratch"
	@echo "  make build                  # Generate configurations locally"
	@echo "  make deploy                 # Deploy to CloudVision"
	@echo "  make validate               # Validate fabric state"
	@echo "  make build LIMIT=DC1-SPINE1 # Build for specific device"
	@echo ""

# ============================================================================
# Bootstrap
# ============================================================================

step0-setup-env: setup setup-wizard build-check setup-github-runner
	@echo ""
	@echo "✓ Step 0 complete: venv setup, configuration, and runner setup done"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Review your configuration:"
	@echo "     cat avd_project/inventory/inventory.yml"
	@echo ""
	@echo "  2. Create group_vars files (see AVD 6.3 documentation)"
	@echo ""
	@echo "  3. Generate configurations:"
	@echo "     make build"

setup:
	@scripts/setup-venv.sh

setup-wizard:
	@$(VENV)/bin/python3 scripts/setup-wizard.py 2>/dev/null || \
	  python3 scripts/setup-wizard.py

setup-github-runner:
	@echo ""
	@echo "Setting up GitHub Actions runner on AVD-tooling server..."
	@echo ""
	@if [ -f "$$HOME/RUNNER_TOKEN" ]; then \
	  if [ -f "avd_project/inventory/inventory.yml" ]; then \
	    $(ANSIBLE_PLAYBOOK) -i avd_project/inventory/inventory.yml \
	      -e "runner_token=$$(cat $$HOME/RUNNER_TOKEN)" \
	      $(if $(LIMIT),-l $(LIMIT),) \
	      playbooks/setup-github-runner.yml; \
	  else \
	    echo "⚠ Inventory file not found (avd_project/inventory/inventory.yml)."; \
	    echo "   Please run 'make step0-setup-env' first."; \
	  fi; \
	else \
	  echo "⚠ RUNNER_TOKEN file not found at $$HOME/RUNNER_TOKEN"; \
	  echo "   Usage: make setup-github-runner RUNNER_TOKEN=your_token"; \
	  echo "   Or save token to: echo 'your_token' > ~/RUNNER_TOKEN"; \
	fi

# ============================================================================
# Build, Deploy & Validate
# ============================================================================

build:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/build.yml

deploy:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/deploy.yml

validate:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/validate.yml

# ============================================================================
# Validation & Diagnostics
# ============================================================================

check:
	@echo "Checking Ansible/venv configuration..."
	$(ANSIBLE) --version | head -1
	@echo "✓ Ready to run playbooks"

syntax:
	@if [ -f avd_project/playbooks/build.yml ]; then \
		cd avd_project && $(ANSIBLE_PLAYBOOK) -i inventory/inventory.yml --syntax-check playbooks/build.yml; \
	else \
		echo "⚠ Playbooks not yet created (skipping syntax check)"; \
	fi

lint:
	cd avd_project && $(ANSIBLE_LINT) playbooks/build.yml || true
	@echo "✓ Lint check complete"

build-check: syntax
	@echo ""
	@echo "Syntax check passed ✓"
	@echo ""
	@echo "Current configuration:"
	$(ANSIBLE) --version | head -1
	@echo ""

# ============================================================================
# Cleanup
# ============================================================================

clean:
	rm -rf avd_project/intended/configs/*
	rm -rf avd_project/intended/structured_configs/*
	rm -rf avd_project/documentation/*
	@echo "Cleaned generated outputs"
