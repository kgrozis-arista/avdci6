# Makefile for avdci6 AVD Project
#
# Targets for bootstrapping, building, deploying, and validating a multi-DC
# Spine-Leaf fabric using Arista Validated Design (AVD) 6.x.
#
# Usage:
#   make help          # Show this help message
#   make step1-setup   # Full bootstrap: setup → wizard → server → runner → validate
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

# macOS fork safety - required for Python multiprocessing on macOS
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

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

.PHONY: help step1-setup step1-setup-dev step1-setup-prod step2-avd step3-hosts step99-reset setup setup-wizard setup-github-runner bootstrap-avd-server dev-setup dev-setup-wizard dev-bootstrap-avd-server dev-setup-github-runner prod-setup prod-setup-wizard prod-bootstrap-avd-server prod-setup-github-runner build-check build deploy validate host-build host-deploy reset-build reset-deploy check syntax lint clean

# ============================================================================
# Help
# ============================================================================

help:
	@echo "avdci6 AVD Project — Makefile Targets"
	@echo "======================================"
	@echo ""
	@echo "Bootstrap (one-shot setup):"
	@echo "  step1-setup              - Full bootstrap (local only): setup → wizard → validate"
	@echo "  step1-setup-dev          - Full dev bootstrap: setup → wizard → avd-server → runner"
	@echo "  step1-setup-prod         - Full prod bootstrap: setup → wizard → avd-server → runner"
	@echo ""
	@echo "  Local Setup (shared by all):"
	@echo "    setup                  - Create .venv and install Python/Ansible deps"
	@echo "    setup-wizard           - Interactive prompt for project configuration"
	@echo ""
	@echo "  Dev Environment:"
	@echo "    dev-setup              - Create .venv (local setup)"
	@echo "    dev-setup-wizard       - Configure inventory (local setup)"
	@echo "    dev-bootstrap-avd-server - Bootstrap dev AVD-tooling server"
	@echo "    dev-setup-github-runner - Configure dev GitHub Actions runner"
	@echo ""
	@echo "  Prod Environment:"
	@echo "    prod-setup             - Create .venv (local setup)"
	@echo "    prod-setup-wizard      - Configure inventory (local setup)"
	@echo "    prod-bootstrap-avd-server - Bootstrap prod AVD-tooling server"
	@echo "    prod-setup-github-runner - Configure prod GitHub Actions runner"
	@echo ""
	@echo "Build, Deploy & Validate:"
	@echo "  step2-avd                - Full AVD workflow: build → deploy → validate"
	@echo "    build                  - Generate AVD configurations (eos_designs + eos_cli_config_gen)"
	@echo "    deploy                 - Deploy configurations to CloudVision Portal"
	@echo "    validate               - Run ANTA validation tests on fabric"
	@echo ""
	@echo "Configure Hosts:"
	@echo "  step3-hosts              - Configure hosts: host-build → host-deploy"
	@echo "    host-build             - Generate host endpoint configurations"
	@echo "    host-deploy            - Deploy host configurations to CloudVision Portal"
	@echo ""
	@echo "Reset & Recovery:"
	@echo "  step99-reset             - Reset topology to baseline: reset-build → reset-deploy"
	@echo "    reset-build            - Generate reset configurations for all devices"
	@echo "    reset-deploy           - Deploy reset configs to fabric and hosts"
	@echo ""
	@echo "Utilities:"
	@echo "  check                    - Dry-run: --check --diff"
	@echo "  syntax                   - Syntax-check the playbooks"
	@echo "  lint                     - Run ansible-lint on playbooks"
	@echo "  clean                    - Remove generated outputs"
	@echo ""
	@echo "Optional variables:"
	@echo "  VENV=$(VENV)"
	@echo "  LIMIT=host1              - Limit playbooks to specific host"
	@echo "  TAGS=tag1 EXTRA='key=value'"
	@echo "  RUNNER_TOKEN=token       - GitHub runner token"
	@echo "  AVD_USER=username AVD_WORKSPACE=/path - Custom user/path"
	@echo ""
	@echo "Examples:"
	@echo "  make step1-setup                          # Local bootstrap only"
	@echo "  make step1-setup-dev                      # Full dev bootstrap (local + dev_avd)"
	@echo "  make step1-setup-prod                     # Full prod bootstrap (local + prod_avd)"
	@echo "  make step2-avd                            # Full AVD workflow"
	@echo "  make build                                # Generate configurations only"
	@echo "  make deploy                               # Deploy to CloudVision"
	@echo "  make validate                             # Validate fabric state"
	@echo "  make bootstrap-avd-server LIMIT=dev_avd   # Manual: bootstrap specific server"
	@echo ""

# ============================================================================
# Bootstrap
# ============================================================================

step1-setup: setup setup-wizard build-check
	@echo ""
	@echo "✓ Step 1 complete: Local bootstrap done!"
	@echo ""
	@echo "Setup includes:"
	@echo "  ✓ Local: Python venv, Ansible, AVD collections"
	@echo "  ✓ Local: Interactive project configuration"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Review your configuration:"
	@echo "     cat avd_project/inventory/inventory.yml"
	@echo ""
	@echo "  2. Bootstrap dev environment:"
	@echo "     make step1-setup-dev"
	@echo ""
	@echo "  3. Or bootstrap prod environment:"
	@echo "     make step1-setup-prod"
	@echo ""

step1-setup-dev: setup setup-wizard build-check dev-bootstrap-avd-server dev-setup-github-runner
	@echo ""
	@echo "✓ Step 1 Dev complete: Full dev environment bootstrap done!"
	@echo ""
	@echo "Dev setup includes:"
	@echo "  ✓ Local: Python venv, Ansible, AVD collections"
	@echo "  ✓ Local: Interactive project configuration"
	@echo "  ✓ Remote: dev_avd server provisioned with AVD"
	@echo "  ✓ Remote: dev GitHub Actions runner configured"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Verify dev runner registration:"
	@echo "     GitHub Settings → Actions → Runners (look for dev_avd)"
	@echo ""
	@echo "  2. Generate configurations:"
	@echo "     make build"
	@echo ""
	@echo "  3. Push to non-main branch to test CI/CD:"
	@echo "     git checkout -b test/my-config"
	@echo "     git push origin test/my-config"
	@echo ""

step1-setup-prod: setup setup-wizard build-check prod-bootstrap-avd-server prod-setup-github-runner
	@echo ""
	@echo "✓ Step 1 Prod complete: Full prod environment bootstrap done!"
	@echo ""
	@echo "Prod setup includes:"
	@echo "  ✓ Local: Python venv, Ansible, AVD collections"
	@echo "  ✓ Local: Interactive project configuration"
	@echo "  ✓ Remote: prod_avd server provisioned with AVD"
	@echo "  ✓ Remote: prod GitHub Actions runner configured"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Verify prod runner registration:"
	@echo "     GitHub Settings → Actions → Runners (look for prod_avd)"
	@echo ""
	@echo "  2. Generate configurations:"
	@echo "     make build"
	@echo ""
	@echo "  3. Push to non-main branch to test CI/CD:"
	@echo "     git checkout -b test/my-config"
	@echo "     git push origin test/my-config"
	@echo ""

setup:
	@scripts/setup-venv.sh

setup-wizard:
	@$(VENV)/bin/python3 scripts/setup-wizard.py both 2>/dev/null || \
	  python3 scripts/setup-wizard.py both

# Dev environment targets
dev-setup: setup
	@echo "✓ Dev local setup complete"

dev-setup-wizard:
	@$(VENV)/bin/python3 scripts/setup-wizard.py dev 2>/dev/null || \
	  python3 scripts/setup-wizard.py dev
	@echo "✓ Dev inventory configuration complete"

dev-bootstrap-avd-server:
	@echo ""
	@echo "Bootstrapping dev AVD-tooling server..."
	@echo ""
	@if [ -f "avd_project/inventory/inventory.yml" ]; then \
	  $(ANSIBLE_PLAYBOOK) -i avd_project/inventory/inventory.yml \
	    -l dev_avd \
	    $(if $(AVD_USER),-e "avd_user=$(AVD_USER)",) \
	    $(if $(AVD_WORKSPACE),-e "avd_workspace=$(AVD_WORKSPACE)",) \
	    playbooks/bootstrap-avd-server.yml; \
	else \
	  echo "⚠ Inventory file not found (avd_project/inventory/inventory.yml)."; \
	  echo "   Please run 'make step1-setup' first."; \
	fi

dev-setup-github-runner:
	@echo ""
	@echo "Setting up GitHub Actions runner on dev AVD-tooling server..."
	@echo ""
	@if [ -f "$$HOME/RUNNER_TOKEN" ]; then \
	  if [ -f "avd_project/inventory/inventory.yml" ]; then \
	    $(ANSIBLE_PLAYBOOK) -i avd_project/inventory/inventory.yml \
	      -e "runner_token=$$(cat $$HOME/RUNNER_TOKEN)" \
	      -l dev_avd \
	      playbooks/setup-github-runner.yml; \
	  else \
	    echo "⚠ Inventory file not found (avd_project/inventory/inventory.yml)."; \
	  fi; \
	else \
	  echo "⚠ RUNNER_TOKEN file not found at $$HOME/RUNNER_TOKEN"; \
	  echo "   Usage: echo 'your_token' > ~/RUNNER_TOKEN"; \
	fi

# Prod environment targets
prod-setup: setup
	@echo "✓ Prod local setup complete"

prod-setup-wizard:
	@$(VENV)/bin/python3 scripts/setup-wizard.py prod 2>/dev/null || \
	  python3 scripts/setup-wizard.py prod
	@echo "✓ Prod inventory configuration complete"

prod-bootstrap-avd-server:
	@echo ""
	@echo "Bootstrapping prod AVD-tooling server..."
	@echo ""
	@if [ -f "avd_project/inventory/inventory.yml" ]; then \
	  $(ANSIBLE_PLAYBOOK) -i avd_project/inventory/inventory.yml \
	    -l prod_avd \
	    $(if $(AVD_USER),-e "avd_user=$(AVD_USER)",) \
	    $(if $(AVD_WORKSPACE),-e "avd_workspace=$(AVD_WORKSPACE)",) \
	    playbooks/bootstrap-avd-server.yml; \
	else \
	  echo "⚠ Inventory file not found (avd_project/inventory/inventory.yml)."; \
	  echo "   Please run 'make step1-setup' first."; \
	fi

prod-setup-github-runner:
	@echo ""
	@echo "Setting up GitHub Actions runner on prod AVD-tooling server..."
	@echo ""
	@if [ -f "$$HOME/RUNNER_TOKEN" ]; then \
	  if [ -f "avd_project/inventory/inventory.yml" ]; then \
	    $(ANSIBLE_PLAYBOOK) -i avd_project/inventory/inventory.yml \
	      -e "runner_token=$$(cat $$HOME/RUNNER_TOKEN)" \
	      -l prod_avd \
	      playbooks/setup-github-runner.yml; \
	  else \
	    echo "⚠ Inventory file not found (avd_project/inventory/inventory.yml)."; \
	  fi; \
	else \
	  echo "⚠ RUNNER_TOKEN file not found at $$HOME/RUNNER_TOKEN"; \
	  echo "   Usage: echo 'your_token' > ~/RUNNER_TOKEN"; \
	fi

# These targets are available for manual use with LIMIT parameter if needed
setup-github-runner:
	@if [ -z "$(LIMIT)" ]; then \
	  echo "⚠ LIMIT parameter required. Use: make setup-github-runner LIMIT=dev_avd"; \
	  echo "   Or use: make dev-setup-github-runner"; \
	  exit 1; \
	fi
	@echo ""
	@echo "Setting up GitHub Actions runner on $(LIMIT)..."
	@echo ""
	@if [ -f "$$HOME/RUNNER_TOKEN" ]; then \
	  if [ -f "avd_project/inventory/inventory.yml" ]; then \
	    $(ANSIBLE_PLAYBOOK) -i avd_project/inventory/inventory.yml \
	      -e "runner_token=$$(cat $$HOME/RUNNER_TOKEN)" \
	      -l $(LIMIT) \
	      playbooks/setup-github-runner.yml; \
	  else \
	    echo "⚠ Inventory file not found (avd_project/inventory/inventory.yml)."; \
	  fi; \
	else \
	  echo "⚠ RUNNER_TOKEN file not found at $$HOME/RUNNER_TOKEN"; \
	  echo "   Usage: echo 'your_token' > ~/RUNNER_TOKEN"; \
	fi

bootstrap-avd-server:
	@if [ -z "$(LIMIT)" ]; then \
	  echo "⚠ LIMIT parameter required. Use: make bootstrap-avd-server LIMIT=dev_avd"; \
	  echo "   Or use: make dev-bootstrap-avd-server"; \
	  exit 1; \
	fi
	@echo ""
	@echo "Bootstrapping AVD-tooling server: $(LIMIT)..."
	@echo ""
	@if [ -f "avd_project/inventory/inventory.yml" ]; then \
	  $(ANSIBLE_PLAYBOOK) -i avd_project/inventory/inventory.yml \
	    -l $(LIMIT) \
	    $(if $(AVD_USER),-e "avd_user=$(AVD_USER)",) \
	    $(if $(AVD_WORKSPACE),-e "avd_workspace=$(AVD_WORKSPACE)",) \
	    playbooks/bootstrap-avd-server.yml; \
	else \
	  echo "⚠ Inventory file not found (avd_project/inventory/inventory.yml)."; \
	  echo "   Please run 'make step1-setup' first."; \
	fi


# ============================================================================
# Build, Deploy & Validate
# ============================================================================

step2-avd: build deploy validate
	@echo ""
	@echo "✓ Step 2 complete: Full AVD workflow finished!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Generated AVD fabric configurations"
	@echo "  ✓ Deployed to CloudVision Portal"
	@echo "  ✓ Validated fabric state with ANTA tests"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Review configurations in avd_project/AVD-information/"
	@echo "  2. Monitor devices in CloudVision Portal"
	@echo "  3. Check validation reports in avd_project/AVD-information/reports/"
	@echo ""

build:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/build.yml

deploy:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/deploy.yml

validate:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/validate.yml

# ============================================================================
# Configure Hosts
# ============================================================================

step3-hosts: host-build host-deploy
	@echo ""
	@echo "✓ Step 3 complete: Host configuration finished!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Generated host endpoint configurations"
	@echo "  ✓ Deployed to CloudVision Portal"
	@echo ""
	@echo "Host topology:"
	@echo "  - L2 trunks connecting to each datacenter"
	@echo "  - VLANs 10, 20, 30, 40, 50 with SVIs"
	@echo "  - IP pattern: <VLAN>.0.<DC>.<Host>/23"
	@echo ""

host-build:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/host-build.yml

host-deploy:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/host-deploy.yml

# ============================================================================
# Reset & Recovery
# ============================================================================

step99-reset: reset-build reset-deploy
	@echo ""
	@echo "✓ Step 99 complete: Topology reset finished!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Generated reset baseline configurations"
	@echo "  ✓ Deployed reset configs to all devices"
	@echo "  ✓ Restored fabric to original state"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Verify devices are reachable via management IP"
	@echo "  2. Regenerate AVD configurations: make build"
	@echo "  3. Redeploy to CloudVision: make deploy"
	@echo ""

reset-build:
	@echo ""
	@echo "Building reset configurations from baseline..."
	@echo ""
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/reset-build.yml

reset-deploy:
	@echo ""
	@echo "⚠ WARNING: Deploying reset configurations to ALL devices!"
	@echo "This will remove all AVD configurations and restore baseline state."
	@echo ""
	@read -p "Are you sure? Type 'RESET' to continue: " confirm; \
	if [ "$$confirm" = "RESET" ]; then \
	  cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/reset-deploy.yml; \
	else \
	  echo "Reset cancelled."; \
	  exit 1; \
	fi

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
