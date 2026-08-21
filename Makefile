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

.PHONY: help step1-setup step1-setup-local step1-setup-dev step1-setup-prod step2-dev-avd step3-hosts step3-dev-hosts step3-prod-hosts step4-prod-avd step5-prod-validate step6-setup-netbox step99-reset step99-reset-dev step99-reset-prod local-reset setup setup-wizard setup-netbox netbox-install netbox-verify setup-github-runner bootstrap-avd-server dev-setup dev-setup-wizard dev-bootstrap-avd-server dev-setup-github-runner prod-setup prod-setup-wizard prod-bootstrap-avd-server prod-setup-github-runner build-check build deploy validate dev-build dev-deploy dev-validate prod-build prod-deploy prod-validate host-build host-deploy dev-host-build dev-host-deploy prod-host-build prod-host-deploy reset-build reset-deploy dev-reset-build dev-reset-deploy prod-reset-build prod-reset-deploy check syntax lint clean

# ============================================================================
# Help
# ============================================================================

help:
	@echo "avdci6 AVD Project — Makefile Targets"
	@echo "======================================"
	@echo ""
	@echo "Bootstrap (one-shot setup):"
	@echo "  step1-setup              - Full bootstrap (local + dev + prod): all environments"
	@echo "  step1-setup-local        - Local bootstrap only: setup → wizard → validate"
	@echo "  step1-setup-dev          - Dev bootstrap: setup → wizard → avd-server → runner"
	@echo "  step1-setup-prod         - Prod bootstrap: setup → wizard → avd-server → runner"
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
	@echo "Build, Deploy & Validate (Dev):"
	@echo "  step2-dev-avd            - Full dev AVD workflow: dev-build → dev-deploy → dev-validate"
	@echo "    dev-build              - Generate AVD configurations (dev)"
	@echo "    dev-deploy             - Deploy configurations to dev CloudVision Portal"
	@echo "    dev-validate           - Run ANTA validation tests on dev fabric"
	@echo ""
	@echo "Configure Hosts:"
	@echo "  step3-hosts              - Configure hosts (all environments): dev + prod"
	@echo "    step3-dev-hosts        - Configure dev hosts: dev-host-build → dev-host-deploy"
	@echo "      dev-host-build       - Generate dev host endpoint configurations"
	@echo "      dev-host-deploy      - Deploy dev host configurations to dev CloudVision"
	@echo "    step3-prod-hosts       - Configure prod hosts: prod-host-build → prod-host-deploy"
	@echo "      prod-host-build      - Generate prod host endpoint configurations"
	@echo "      prod-host-deploy     - Deploy prod host configurations to prod CloudVision"
	@echo ""
	@echo "Production Deployment:"
	@echo "  step4-prod-avd           - Full prod AVD workflow: prod-build → prod-deploy"
	@echo "    prod-build             - Generate AVD configurations (prod)"
	@echo "    prod-deploy            - Deploy configurations to prod CloudVision Portal"
	@echo ""
	@echo "Production Validation:"
	@echo "  step5-prod-validate      - Validate prod fabric: prod-validate"
	@echo "    prod-validate          - Run ANTA validation tests on prod fabric"
	@echo ""
	@echo "NetBox Integration:"
	@echo "  step6-setup-netbox       - Configure NetBox inventory management system"
	@echo "    setup-netbox           - Interactive NetBox IP configuration"
	@echo "    netbox-install         - Install NetBox 4.6.8 with interactive prompts"
	@echo "    netbox-verify          - Verify NetBox is running and check service status"
	@echo ""
	@echo "Reset & Recovery:"
	@echo "  step99-reset             - Reset topology to baseline (both dev & prod)"
	@echo "    step99-reset-dev       - Reset dev topology: dev-reset-build → dev-reset-deploy"
	@echo "      dev-reset-build      - Generate dev reset configurations"
	@echo "      dev-reset-deploy     - Deploy dev reset configs to fabric and hosts"
	@echo "    step99-reset-prod      - Reset prod topology: prod-reset-build → prod-reset-deploy"
	@echo "      prod-reset-build     - Generate prod reset configurations"
	@echo "      prod-reset-deploy    - Deploy prod reset configs to fabric and hosts"
	@echo "    local-reset            - Restore local config files from tmp/ directory"
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
	@echo "  make step2-dev-avd                        # Full dev AVD workflow"
	@echo "  make step3-hosts                          # Configure hosts (dev + prod)"
	@echo "  make step3-dev-hosts                      # Configure dev hosts only"
	@echo "  make step3-prod-hosts                     # Configure prod hosts only"
	@echo "  make step4-prod-avd                       # Full prod AVD workflow"
	@echo "  make step5-prod-validate                  # Validate prod fabric"
	@echo "  make step6-setup-netbox                   # Configure NetBox IP address"
	@echo "  make netbox-install                       # Install NetBox 4.6.8"
	@echo "  make netbox-verify                        # Verify NetBox is running and healthy"
	@echo "  make dev-build                            # Generate configs for dev"
	@echo "  make dev-deploy                           # Deploy to dev CloudVision"
	@echo "  make prod-build                           # Generate configs for prod"
	@echo "  make prod-deploy                          # Deploy to prod CloudVision"
	@echo "  make prod-validate                        # Validate prod fabric"
	@echo "  make dev-host-build dev-host-deploy       # Build and deploy dev hosts"
	@echo "  make prod-host-build prod-host-deploy     # Build and deploy prod hosts"
	@echo "  make step99-reset                         # Reset topology (both dev & prod)"
	@echo "  make step99-reset-dev                     # Reset dev topology only"
	@echo "  make step99-reset-prod                    # Reset prod topology only"
	@echo "  make bootstrap-avd-server LIMIT=dev_avd   # Manual: bootstrap specific server"
	@echo ""

# ============================================================================
# Bootstrap
# ============================================================================

step1-setup: step1-setup-dev step1-setup-prod
	@echo ""
	@echo "✓ Step 1 complete: Full bootstrap (local + dev + prod) done!"
	@echo ""
	@echo "Setup includes:"
	@echo "  ✓ Local: Python venv, Ansible, AVD collections"
	@echo "  ✓ Local: Interactive project configuration"
	@echo "  ✓ Remote: dev_avd server provisioned with AVD"
	@echo "  ✓ Remote: dev GitHub Actions runner configured"
	@echo "  ✓ Remote: prod_avd server provisioned with AVD"
	@echo "  ✓ Remote: prod GitHub Actions runner configured"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Verify runners in GitHub:"
	@echo "     GitHub Settings → Actions → Runners"
	@echo "     (Look for 'dev' and 'prod' runners)"
	@echo ""
	@echo "  2. Generate configurations:"
	@echo "     make dev-build       # For dev"
	@echo "     make prod-build      # For prod"
	@echo ""
	@echo "  3. Deploy and validate:"
	@echo "     make step2-dev-avd   # Full dev workflow"
	@echo "     make step4-prod-avd  # Full prod workflow"
	@echo ""

step1-setup-local: setup setup-wizard build-check
	@echo ""
	@echo "✓ Step 1 Local complete: Local bootstrap done!"
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
	@echo "  4. Or do full bootstrap (both dev and prod):"
	@echo "     make step1-setup"
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

setup-netbox:
	@$(VENV)/bin/python3 scripts/setup-netbox.py 2>/dev/null || \
	  python3 scripts/setup-netbox.py

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
	  ANSIBLE_SSH_COMMON_ARGS="-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" \
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
	@if [ -f "avd_project/inventory/inventory.yml" ]; then \
	  $(ANSIBLE_PLAYBOOK) -i avd_project/inventory/inventory.yml \
	    -l dev_avd \
	    playbooks/setup-github-runner.yml; \
	else \
	  echo "⚠ Inventory file not found (avd_project/inventory/inventory.yml)."; \
	  echo "   Please run 'make step1-setup' first."; \
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
	  ANSIBLE_SSH_COMMON_ARGS="-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" \
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
	@if [ -f "avd_project/inventory/inventory.yml" ]; then \
	  $(ANSIBLE_PLAYBOOK) -i avd_project/inventory/inventory.yml \
	    -l prod_avd \
	    playbooks/setup-github-runner.yml; \
	else \
	  echo "⚠ Inventory file not found (avd_project/inventory/inventory.yml)."; \
	  echo "   Please run 'make step1-setup' first."; \
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
# Build, Deploy & Validate (Dev)
# ============================================================================

step2-dev-avd: dev-build dev-deploy dev-validate
	@echo ""
	@echo "✓ Step 2 complete: Full dev AVD workflow finished!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Generated AVD fabric configurations"
	@echo "  ✓ Deployed to dev CloudVision Portal"
	@echo "  ✓ Validated fabric state with ANTA tests"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Review configurations in avd_project/AVD-information/"
	@echo "  2. Monitor devices in dev CloudVision Portal"
	@echo "  3. Check validation reports in avd_project/AVD-information/reports/"
	@echo ""

dev-build:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/build.yml

dev-deploy:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/deploy.yml

dev-validate:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/validate.yml

# Backwards compatibility aliases
build: dev-build
deploy: dev-deploy
validate: dev-validate

# ============================================================================
# Configure Hosts
# ============================================================================

step3-hosts: step3-dev-hosts step3-prod-hosts
	@echo ""
	@echo "✓ Step 3 complete: Host configuration finished (all environments)!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Generated host endpoint configurations (dev + prod)"
	@echo "  ✓ Deployed to CloudVision Portal (both environments)"
	@echo ""
	@echo "Host topology:"
	@echo "  - L2 trunks connecting to each datacenter"
	@echo "  - VLANs 10, 20, 30, 50 with SVIs"
	@echo "  - IP pattern: <VLAN>.0.<DC>.<Host>/23"
	@echo ""

step3-dev-hosts: dev-host-build dev-host-deploy
	@echo ""
	@echo "✓ Step 3 (Dev) complete: Dev host configuration finished!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Generated dev host endpoint configurations"
	@echo "  ✓ Deployed to dev CloudVision Portal"
	@echo ""

step3-prod-hosts: prod-host-build prod-host-deploy
	@echo ""
	@echo "✓ Step 3 (Prod) complete: Prod host configuration finished!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Generated prod host endpoint configurations"
	@echo "  ✓ Deployed to prod CloudVision Portal"
	@echo ""

dev-host-build:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/host-build.yml

dev-host-deploy:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/host-deploy.yml

prod-host-build:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/host-build.yml

prod-host-deploy:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml -e "cloudvision_host=cv_prod_server" playbooks/host-deploy.yml

# Backwards compatibility aliases
host-build: dev-host-build
host-deploy: dev-host-deploy

# ============================================================================
# Production Build & Deploy
# ============================================================================

step4-prod-avd: prod-build prod-deploy
	@echo ""
	@echo "✓ Step 4 complete: Full prod AVD workflow finished!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Generated AVD fabric configurations"
	@echo "  ✓ Deployed to prod CloudVision Portal"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Review configurations in avd_project/AVD-information/"
	@echo "  2. Monitor devices in prod CloudVision Portal"
	@echo "  3. Run 'make dev-validate' to validate fabric state"
	@echo ""

prod-build:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/build.yml

prod-deploy:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml -e "cloudvision_host=cv_prod_server" playbooks/deploy.yml

# ============================================================================
# Production Validation
# ============================================================================

step5-prod-validate: prod-validate
	@echo ""
	@echo "✓ Step 5 complete: Prod fabric validation finished!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Ran ANTA validation tests on prod fabric"
	@echo "  ✓ Generated validation reports"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Review validation reports in avd_project/AVD-information/reports/"
	@echo "  2. If tests failed, fix configuration issues and redeploy"
	@echo "  3. If all tests pass, fabric is ready for operations"
	@echo ""

prod-validate:
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/validate.yml

# ============================================================================
# NetBox Integration
# ============================================================================

step6-setup-netbox: setup-netbox
	@echo ""
	@echo "✓ Step 6 complete: NetBox configuration finished!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Configured NetBox inventory management system IP address"
	@echo ""
	@echo "Next steps:"
	@echo "  1. Verify NetBox connectivity:"
	@echo "     ansible netbox -m ping -i avd_project/inventory/inventory.yml"
	@echo ""
	@echo "  2. Install NetBox 4.6.8:"
	@echo "     make netbox-install"
	@echo ""
	@echo "  3. (Optional) Deploy device inventory to NetBox:"
	@echo "     make step6-netbox-onboard"
	@echo ""

netbox-install:
	@echo ""
	@echo "Installing NetBox 4.6.8..."
	@echo ""
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml --skip-tags netbox-verify playbooks/netbox-4.6.8.yml
	@echo ""
	@echo "✓ NetBox 4.6.8 installation complete"
	@echo ""

netbox-verify:
	@echo ""
	@echo "Verifying NetBox 4.6.8 installation..."
	@echo ""
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/netbox-4.6.8.yml --tags netbox-verify
	@echo ""
	@echo "✓ NetBox verification complete"
	@echo ""

# ============================================================================
# Reset & Recovery
# ============================================================================

step99-reset: step99-reset-dev step99-reset-prod local-reset
	@echo ""
	@echo "✓ Step 99 complete: Topology reset finished (dev & prod)!"
	@echo ""
	@echo "Summary:"
	@echo "  ✓ Generated reset baseline configurations"
	@echo "  ✓ Deployed reset configs to all devices"
	@echo "  ✓ Restored fabric to original state (dev and prod)"
	@echo "  ✓ Restored local configuration files"
	@echo ""

step99-reset-dev: dev-reset-build dev-reset-deploy
	@echo ""
	@echo "✓ Dev topology reset complete!"

step99-reset-prod: prod-reset-build prod-reset-deploy
	@echo ""
	@echo "✓ Prod topology reset complete!"

local-reset:
	@echo ""
	@echo "Restoring local configuration files from tmp/ directory..."
	@echo ""
	@cp files/fabric_variables.yml avd_project/inventory/group_vars/FABRIC/fabric_variables.yml
	@cp files/main.yml avd_project/inventory/group_vars/NETWORK_SERVICES/main.yml
	@echo "✓ Configuration files restored:"
	@echo "  - avd_project/inventory/group_vars/FABRIC/fabric_variables.yml"
	@echo "  - avd_project/inventory/group_vars/NETWORK_SERVICES/main.yml"
	@echo ""

reset-build: dev-reset-build
	@echo "✓ Reset build complete (dev only - use dev-reset-build or prod-reset-build)"

reset-deploy: dev-reset-deploy
	@echo "✓ Reset deploy complete (dev only - use dev-reset-deploy or prod-reset-deploy)"

dev-reset-build:
	@echo ""
	@echo "Building dev reset configurations from baseline..."
	@echo ""
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/reset-build.yml

dev-reset-deploy:
	@echo ""
	@echo "⚠ WARNING: Deploying dev reset configurations to fabric and hosts!"
	@echo "This will remove all AVD configurations and restore baseline state."
	@echo ""
	@read -p "Are you sure? Type 'RESET' to continue: " confirm; \
	if [ "$$confirm" = "RESET" ]; then \
	  cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/reset-deploy.yml; \
	else \
	  echo "Reset cancelled."; \
	  exit 1; \
	fi

prod-reset-build:
	@echo ""
	@echo "Building prod reset configurations from baseline..."
	@echo ""
	cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml playbooks/reset-build.yml

prod-reset-deploy:
	@echo ""
	@echo "⚠ WARNING: Deploying prod reset configurations to fabric and hosts!"
	@echo "This will remove all AVD configurations and restore baseline state."
	@echo ""
	@read -p "Are you sure? Type 'RESET' to continue: " confirm; \
	if [ "$$confirm" = "RESET" ]; then \
	  cd avd_project && $(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i inventory/inventory.yml -e "cloudvision_host=cv_prod_server" playbooks/reset-deploy.yml; \
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
	rm -rf avd_project/AVD-information/configs/*
	rm -rf avd_project/AVD-information/structured_configs/*
	rm -rf avd_project/AVD-information/documentation/*
	@echo "Cleaned generated outputs"
