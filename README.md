# avdci6: Multi-Datacenter Fabric with AVD 6.x

A demonstration of **Arista Validated Design (AVD) 6.x** applied to a multi-datacenter spine-leaf fabric using the **Modern Operating Model (MOM)** principles. This repository showcases automation, validation, and operational excellence in network infrastructure.

## Table of Contents

- [Introduction](#introduction)
- [What is AVD?](#what-is-avd)
- [Topology Overview](#topology-overview)
- [Project Structure](#project-structure)
- [Quick Start](#quick-start)
  - [Prerequisites](#prerequisites)
  - [Bootstrap Environment](#bootstrap-environment)
  - [Setup Configuration](#setup-configuration)
  - [Virtual Twin with ACT](#virtual-twin-with-act)
- [Workflow Overview](#workflow-overview)
- [Network Design](#network-design)
- [Build, Deploy & Validate](#build-deploy--validate)
- [Configure Hosts](#configure-hosts)
- [Reset & Recovery](#reset--recovery)
- [Continuous Integration (CI/CD)](#continuous-integration-cicd)
- [Validation](#validation)
- [Modern Operating Model](#modern-operating-model)
- [Troubleshooting](#troubleshooting)
- [References](#references)
- [Glossary](#glossary)

---

## Introduction

**avdci6** demonstrates how to automate network fabric deployment using **Arista Validated Design (AVD) 6.x** in a multi-datacenter environment. The project implements the **Modern Operating Model**, emphasizing:

- **Infrastructure as Code (IaC)** — Network configuration defined in YAML
- **Continuous Integration (CI)** — Automated testing and validation before deployment
- **Repeatability** — Consistent fabric deployments across environments
- **Scalability** — Simple patterns for adding devices (leafs, spines, hosts)
- **Operational Efficiency** — Day-0, Day-1, and Day-2 operations automation

The repository uses **Arista Cloud Test (ACT)** to simulate production topology in a virtual environment, enabling safe testing and iteration before physical deployment.

---

## What is AVD?

**Arista Validated Design (AVD)** is an Ansible collection of roles and playbooks that automate the design, build, and deployment of standardized Arista EOS fabric topologies. AVD 6.x includes:

- **eos_designs** — Data model for fabric intent (spines, leafs, overlay, underlay)
- **eos_cli_config_gen** — Generate EOS configuration from design intent
- **eos_config_deploy** — Deploy configurations to CloudVision Portal
- **eos_validate_state** — Validate fabric state with ANTA tests

**Key Benefits:**
- Eliminates manual configuration — Define intent, not commands
- Consistent topologies across DCs and regions
- Easy scaling — Add devices through YAML changes
- Built-in testing — Validation before deployment
- Compliance & compliance tracking via CloudVision

---

## Topology Overview

This repository defines a **2-datacenter fabric** with high-availability pairs of spine and leaf switches. Each datacenter operates independently but can interconnect for disaster recovery or resource sharing.

### Architecture

![avdci6 Topology Diagram](digital_twin/avdci6.png)

### Node Inventory

| Role | Node | DC1 | DC2 |
|------|------|-----|-----|
| **Spine** | SPINE1 | ✓ | ✓ |
| | SPINE2 | ✓ | ✓ |
| | SPINE3 | ✓ | ✓ |
| **Leaf (Data)** | LEAF1A, LEAF1B | ✓ | ✓ |
| **Leaf (Access)** | LEAF2A, LEAF2B | ✓ | ✓ |
| **Host** | HOST1 | ✓ | ✓ |
| | HOST2 | ✓ | ✓ |

**Topology Design Goals:**
- Standardized patterns across datacenters
- No "snowflake" devices — all leafs follow the same configuration pattern
- eBGP for underlay and overlay routing
- VXLAN with EVPN for multi-site connectivity
- MLAG for high availability on leaf pairs

See [Topology Diagram](digital_twin/avdci6.png) for visual reference.

---

## Project Structure

```
avdci6/
├── Makefile                          # Bootstrap and build automation
├── requirements.txt                  # Python dependencies
├── collections.yml                   # Ansible collection versions
├── scripts/
│   ├── setup-venv.sh                # Create Python venv and install deps
│   └── setup-wizard.py               # Interactive inventory configuration
├── digital_twin/
│   ├── avdci6.yml                   # ACT topology file (virtual lab)
│   ├── avdci6.png                   # Topology diagram
│   └── Arista Cloud Test User Guide # ACT documentation
├── avd_project/
│   ├── inventory/
│   │   ├── inventory.yml            # Ansible inventory (hosts and groups)
│   │   └── group_vars/              # Host/group-level variables
│   │       ├── FABRIC/              # Fabric-wide settings
│   │       ├── DC1/                 # DC1-specific settings
│   │       ├── DC2/                 # DC2-specific settings
│   │       ├── DC1_SPINES/          # Spine configuration
│   │       ├── DC1_LEAVES/          # Leaf configuration
│   │       ├── CONNECTED_ENDPOINTS/ # Host configuration
│   │       └── NETWORK_SERVICES/    # VRF and VLAN definitions
│   └── playbooks/
│       ├── build.yml                # Generate fabric configurations (AVD)
│       ├── deploy.yml               # Deploy fabric to CloudVision
│       ├── validate.yml             # Run ANTA validation tests
│       ├── host-build.yml           # Generate host endpoint configs
│       ├── host-deploy.yml          # Deploy host configs to CloudVision
│       ├── reset-build.yml          # Generate reset baseline configs
│       ├── reset-deploy.yml         # Deploy reset configs to CloudVision
│       └── templates/
│           ├── host.j2              # Jinja2 template for host configs
│           └── reset-config.j2      # Jinja2 template for reset configs
└── README.md                         # This file
```

---

## Quick Start

### Prerequisites

- **macOS or Linux** (development tested on macOS)
- **Python 3.8+** (`python3 --version`)
- **make** (`make --version`)
- **Git** for version control
- **Ansible, Ansible collections** (installed via `make step1-setup`)

Optional:
- **Arista Cloud Test (ACT)** account for virtual lab (https://ce.act.arista.com/)
- **CloudVision Portal** instance (on-premises or CVaaS) for deployment
- **AVD-tooling server** for CI/CD automation and GitHub Actions runner

### Bootstrap (Step 1)

The bootstrap process has two phases:

#### Phase 1: Local Setup (All Environments)

Initialize local development environment:

```bash
make step1-setup
```

This configures:
- Python virtual environment (`.venv/`)
- Python dependencies from `requirements.txt`
- Ansible collections (arista.avd, arista.eos, etc.)
- Interactive setup wizard for **both dev and prod** environments
- Validates Ansible installation

**Output:**
```
✓ Step 1 complete: Local bootstrap done!
```

#### Phase 2: Remote Server Bootstrap (Dev or Prod)

After local setup, bootstrap your dev or prod environment:

**Option A: Bootstrap Dev Environment**
```bash
make step1-setup-dev
```

**Option B: Bootstrap Prod Environment**
```bash
make step1-setup-prod
```

Each option:
- Prompts for environment-specific CloudVision Portal and AVD Tooling server IPs
- Bootstraps Ubuntu server with Python, Ansible, AVD 6.3+
- Registers GitHub Actions runner for CI/CD
- Creates systemd service for auto-startup on server reboot

**Expected output:**
```
✓ Step 1 Dev complete: Full dev environment bootstrap done!
```
or
```
✓ Step 1 Prod complete: Full prod environment bootstrap done!
```

### Setup Configuration

The setup wizard prompts for critical infrastructure IPs in two phases:

**Local Setup (step1-setup):**
- **Dev CloudVision Portal IP** — Where dev configurations are deployed
- **Dev AVD Tooling Server IP** — Dev automation server
- **Prod CloudVision Portal IP** — Where prod configurations are deployed
- **Prod AVD Tooling Server IP** — Prod automation server

**Environment-Specific Setup:**
- `make step1-setup-dev` — Configure dev environment only
- `make step1-setup-prod` — Configure prod environment only

These values are written to `avd_project/inventory/inventory.yml`:
```yaml
cv_dev_server:
  ansible_httpapi_host: <dev-cvp-ip>

cv_prod_server:
  ansible_httpapi_host: <prod-cvp-ip>

dev_avd:
  ansible_host: <dev-avd-ip>

prod_avd:
  ansible_host: <prod-avd-ip>
```

### GitHub Actions Runner Setup

GitHub runner tokens are **one-time use only**. Each time you need to register a new runner:

1. Go to your repository: https://github.com/kgrozis-arista/avdci6
2. Navigate to **Settings → Actions → Runners**
3. Click **"New self-hosted runner"**
4. Select **Linux** and **x64**
5. GitHub will display a registration token (in the "Configure" section)
6. Save the token locally:
   ```bash
   echo "YOUR_NEW_TOKEN_HERE" > ~/RUNNER_TOKEN
   chmod 600 ~/RUNNER_TOKEN
   ```
7. Run the setup:
   ```bash
   make step1-setup-dev   # For dev runner
   make step1-setup-prod  # For prod runner
   ```

**Runner Naming:**
- Dev runner: `dev` (label: `self-hosted,Linux,X64,dev`)
- Prod runner: `prod` (label: `self-hosted,Linux,X64,prod`)

**Verify after bootstrap completes:**

SSH into the server and run:
```bash
source .activate
ansible --version
ansible-galaxy collection list | grep arista.avd
systemctl status github-runner
```

### Virtual Twin with ACT

**Arista Cloud Test** creates a virtual simulation of your physical network, enabling safe testing and iteration.

#### 1. Upload ACT Topology File

The topology is defined in [`digital_twin/avdci6.yml`](digital_twin/avdci6.yml):

1. Log in to ACT: https://ce.act.arista.com/
2. Navigate to **Topologies** → **Add Topology**
3. Upload `digital_twin/avdci6.yml`
4. Validate and save

#### 2. Create Development & Production Labs

1. Go to **Labs** → **Add Lab**
2. Name: `avdci6-dev` | Topology: `avdci6`
3. Repeat for `avdci6-prod`
4. Click **Deploy** on each lab (⏱️ 10–20 minutes)

#### 3. Retrieve Lab IPs

Once labs are **Running**:

1. Click on the lab
2. Copy the IP addresses of `cvp`, `avd` hosts
3. Update `avd_project/inventory/inventory.yml` with these IPs
4. Or use: `make setup-wizard` to update interactively

---

## Workflow Overview

The avdci6 project uses a **multi-step make-based workflow** with dev and prod environment separation:

### **Step 1: Bootstrap** (`make step1-setup`, `make step1-setup-dev`, `make step1-setup-prod`)

**Local Setup (all environments):**
```bash
make step1-setup
```
- Creates Python venv and installs dependencies
- Runs interactive setup wizard for **both dev and prod** CloudVision and AVD Tooling servers

**Dev Environment:**
```bash
make step1-setup-dev
```
- Bootstraps dev AVD-tooling server with Python, Ansible, AVD 6.3+
- Registers dev GitHub Actions runner (label: `dev`)
- Runs playbooks targeting `dev_avd` host

**Prod Environment:**
```bash
make step1-setup-prod
```
- Bootstraps prod AVD-tooling server with Python, Ansible, AVD 6.3+
- Registers prod GitHub Actions runner (label: `prod`)
- Runs playbooks targeting `prod_avd` host

**When:** Run once after cloning the repo, then run `step1-setup-dev` and/or `step1-setup-prod` for each environment.

### **Step 2: Dev Fabric Operations** (`make step2-dev-avd`)
Repeatable workflow for building, deploying, and validating fabric in **dev environment**:
- **Dev Build** (`make dev-build`) — Generate device configurations from intent (YAML) using CloudVision dev instance
- **Dev Deploy** (`make dev-deploy`) — Push configs to **dev** CloudVision Portal with change controls enabled
- **Dev Validate** (`make dev-validate`) — Run ANTA tests to verify fabric state

**When:** Run every time you make changes to the fabric network intent for testing in dev.

### **Step 3: Configure Hosts** (`make step3-hosts`)
Repeatable workflow for generating and deploying host endpoint configurations:
- **Host Build** (`make host-build`) — Generate host endpoint configs from Jinja2 template
- **Host Deploy** (`make host-deploy`) — Push host configs to CloudVision Portal using cv_deploy

**When:** Run to configure server/host endpoints connected to the fabric.

### **Step 4: Prod Fabric Operations** (`make step4-prod-avd`)
Repeatable workflow for building and deploying fabric in **prod environment**:
- **Prod Build** (`make prod-build`) — Generate device configurations from intent (YAML) using CloudVision prod instance
- **Prod Deploy** (`make prod-deploy`) — Push configs to **prod** CloudVision Portal **without change controls** (direct config push)

**Note:** Prod deployment skips change control approval for direct device configuration. Only merge PRs to `main` to trigger prod deployment.

**When:** Run when you're ready to deploy validated configurations to production (via merged PR to main).

### **Step 5: Prod Fabric Validation** (`make step5-prod-validate`)
Repeatable workflow for validating fabric state in **prod environment**:
- **Prod Validate** (`make prod-validate`) — Run ANTA tests to verify prod fabric is operating as designed

**Note:** Prod validation is automatically triggered after deployment in the prod-runner CI/CD pipeline. Can also be run manually anytime.

**When:** Run after prod deployment to verify fabric health, or run manually to check fabric state on-demand.

### **Step 99: Reset Topology** (`make step99-reset`)
Emergency recovery workflow to restore all devices to baseline state:
- **Reset Build** — Generate baseline reset configurations for fabric and hosts
- **Reset Deploy** — Push reset configs to CloudVision Portal

**When:** Run to wipe all AVD configurations and restore devices to factory startup state.

**Important Notes:**
- Reset configurations are stored separately in `avd_project/AVD-information/reset-configs/`
- Normal AVD configs remain in `avd_project/AVD-information/configs/`
- After running reset, execute `make build` to regenerate and redeploy normal AVD configurations
- This is a **destructive operation** — all network configuration will be removed

---

## Network Design

### Underlay Routing

- **Protocol:** eBGP (RFC 4271)
- **Spine ASNs:** 65000–65002 (one per spine)
- **Leaf ASNs:** 65100–65103 (grouped per datacenter)
- **Loopback IPs:** Allocated from 10.10.0.0/24 (spines) and 10.10.1.0/24 (leafs)
- **P2P Links:** 10.20.0.0/24 (auto-allocated by AVD)

### Overlay Routing

- **Protocol:** eBGP EVPN (Ethernet VPN Address Family) — RFC 7432
- **VXLAN:** Encapsulation for tenant traffic across multi-site fabric
- **Multi-homing:** All leafs active via MLAG (active-active redundancy)
- **Redundancy:** Full mesh BGP peering between leafs and spines
- **MLAG Peer Links:** Ethernet49/1, Ethernet50/1 on all leaf pairs
- **Tenants:** Customer1 (VRF 300, VLAN 30) and Customer2 (VRF 100, VLANs 10, 20)

### Data Plane

- **Tenant Isolation:** VRF-based multi-tenancy
  - **Customer1:** VRF 300, VLAN 30 (loopback 9.9.2.0/24)
  - **Customer2:** VRF 100, VLANs 10, 20 (loopback 9.9.1.0/24)
  - **L2-Only:** VLAN 50 (no VRF)
- **MTU:** 1500 (vEOS-lab compatibility)
- **BFD:** Enabled for fast failure detection (300ms holdtime)
- **Spanning Tree:** Disabled on fabric (BGP for all paths); portfast edge on host ports
- **NTP:** Google DNS servers (216.239.35.4, 216.239.35.8) for BGP timer accuracy

**For full design details, see:**
- [AVD 6.3 Leaf-Spine Design](https://avd.arista.com/6.3/ansible_collections/arista/avd/roles/eos_designs/index.html#layer-3-leaf-spine-with-vxlan-evpn)

---

## Build, Deploy & Validate

### Step 2: Dev Fabric Workflow

Run the complete dev build, deploy, and validate workflow with a single command:

```bash
make step2-dev-avd
```

This orchestrates:
1. **Dev Build** — Generate fabric configurations using AVD eos_designs and eos_cli_config_gen against **dev** CloudVision
2. **Dev Deploy** — Push to **dev** CloudVision Portal with change controls enabled (requires approval)
3. **Dev Validate** — Run ANTA tests to verify fabric state

### Step 4: Prod Fabric Workflow

Run the complete prod build and deploy workflow with a single command:

```bash
make step4-prod-avd
```

This orchestrates:
1. **Prod Build** — Generate fabric configurations using AVD eos_designs and eos_cli_config_gen against **prod** CloudVision
2. **Prod Deploy** — Push to **prod** CloudVision Portal **without change controls** (direct deployment)

**Note:** Prod workflow is triggered by merging a PR to `main`. See [CI/CD Workflow](#cicd-workflow) for details on automated prod deployment.

### Individual Fabric Commands

If you prefer to run steps separately:

#### Generate Fabric Configuration (Dev)

```bash
make dev-build
```

AVD reads your intent files and generates EOS configurations:

**Outputs:**
- `avd_project/AVD-information/configs/` — Final EOS commands per device
- `avd_project/AVD-information/documentation/` — Network topology and IP allocation reports
- `avd_project/AVD-information/structured_configs/` — Intermediate YAML (for CI tools)

#### Generate Fabric Configuration (Prod)

```bash
make prod-build
```

Same output as dev-build, but targeting **prod** CloudVision Portal.

#### Deploy Fabric to CloudVision (Dev)

```bash
make dev-deploy
```

Pushes dev fabric configurations to **dev** CloudVision instance using cv_deploy role with change controls enabled. CloudVision stages changes. Review and approve in the WebUI before devices are configured.

#### Deploy Fabric to CloudVision (Prod)

```bash
make prod-deploy
```

Pushes prod fabric configurations to **prod** CloudVision instance. **No change control approval required** — configurations deploy directly to devices.

#### Validate Fabric State (Dev)

```bash
make dev-validate
```

Runs ANTA tests on **dev** fabric to verify actual device state matches design. Reports are written to `avd_project/AVD-information/reports/`.

#### Backwards Compatibility Aliases (Dev)

For convenience, `make build`, `make deploy`, and `make validate` are aliased to the dev versions:
```bash
make build       # Same as: make dev-build
make deploy      # Same as: make dev-deploy
make validate    # Same as: make dev-validate
```

---

## Configure Hosts

### Step 3: Host Endpoint Configuration

Run the complete host configuration and deployment workflow for **all environments** (dev + prod):

```bash
make step3-hosts
```

Or configure specific environments:

**Dev Hosts:**
```bash
make step3-dev-hosts
```

**Prod Hosts:**
```bash
make step3-prod-hosts
```

Each orchestrates:
1. **Host Build** — Generate host endpoint configurations from Jinja2 template
2. **Host Deploy** — Push host configs to CloudVision Portal

### Host Configuration Design

Host configurations are generated using a Jinja2 template with the following topology:

**LAG (Link Aggregation) Connectivity:**
- Each host has 2 ethernet ports forming a LAG (Port-Channel1)
- Active-active connection to datacenter leaf pair for redundancy
- Spanning-tree portfast edge enabled for fast convergence
- LACP mode: active (industry standard)

**Port Profile Configuration:**
- **Profile:** TENANT_Customer1_Customer2
- **Mode:** Trunk
- **Native VLAN:** 4092 (management)
- **Allowed VLANs:** 10, 20, 30, 50
- **Spanning Tree:** Portfast edge enabled

**VLAN SVI Configuration:**
- **VLANs:** 10 (Customer2), 20 (Customer2), 30 (Customer1), 50 (L2-only)
- **IP Addressing Pattern:** `<VLAN>.0.<DC>.<Host>/23`
  - Example: DC1-HOST1 VLAN10 = `10.0.1.1/23`
  - Example: DC2-HOST2 VLAN20 = `20.0.2.2/23`

**Connectivity Monitoring:**
- **Monitor Connectivity probes** enabled on all hosts
- Each host probes other hosts across VLANs 10, 20, 30, 50
- Provides reachability verification between datacenters

**Host Topology Map:**
| Host | Leaf Uplinks | LAG | Management | Tenants |
|------|--------------|-----|------------|---------|
| DC1-HOST1 | DC1-LEAF1A:E1, DC1-LEAF1B:E1 | Po1 | 192.168.0.30/24 | Customer1, Customer2 |
| DC1-HOST2 | DC1-LEAF2A:E1, DC1-LEAF2B:E1 | Po1 | 192.168.0.31/24 | Customer1, Customer2 |
| DC2-HOST1 | DC2-LEAF1A:E1, DC2-LEAF1B:E1 | Po1 | 192.168.0.32/24 | Customer1, Customer2 |
| DC2-HOST2 | DC2-LEAF2A:E1, DC2-LEAF2B:E1 | Po1 | 192.168.0.33/24 | Customer1, Customer2 |

### Individual Host Commands

If you prefer to run steps separately:

#### Generate Host Configurations (Dev)

```bash
make dev-host-build
```

Generates host endpoint configurations from the Jinja2 template (`playbooks/templates/host.j2`):

**Outputs:**
- `avd_project/AVD-information/configs/DC1-HOST1.cfg`
- `avd_project/AVD-information/configs/DC1-HOST2.cfg`
- `avd_project/AVD-information/configs/DC2-HOST1.cfg`
- `avd_project/AVD-information/configs/DC2-HOST2.cfg`

#### Generate Host Configurations (Prod)

```bash
make prod-host-build
```

Same as dev-host-build (host configurations are environment-agnostic).

#### Deploy Host Configurations (Dev)

```bash
make dev-host-deploy
```

Deploys host configurations to **dev** CloudVision Portal using cv_deploy role with direct deployment (no change control).

#### Deploy Host Configurations (Prod)

```bash
make prod-host-deploy
```

Deploys host configurations to **prod** CloudVision Portal. Uses `-e "cloudvision_host=cv_prod_server"` to target production credentials.

#### Backwards Compatibility

For convenience, `make host-build` and `make host-deploy` are aliased to the dev versions:
```bash
make host-build    # Same as: make dev-host-build
make host-deploy   # Same as: make dev-host-deploy
```

---

## Reset & Recovery

### Step 99: Reset Topology to Baseline

Use this workflow when you need to restore all devices to their baseline state, removing all AVD-managed configurations:

```bash
make step99-reset
```

This orchestrates:
1. **Reset Build** — Generate baseline reset configurations for all fabric (spines, leafs) and host devices
2. **Reset Deploy** — Deploy reset configs to CloudVision Portal

### How Reset Works

**Reset Configurations:**
- Stored separately in `avd_project/AVD-information/reset-configs/`
- Based on factory startup configuration with minimal management settings
- Includes standard usernames (admin, ansible, cvpadmin, cvptemp)
- Configures Management1 interface for connectivity
- Disables IP routing, removes all VLAN/routing configuration

**Reset vs. Normal Configs:**
- Reset: Minimal baseline (factory state)
- Normal AVD: Full fabric design (eos_designs generated)
- These use **separate directories** to prevent conflicts

### Reset Workflow

1. **Run reset:**
   ```bash
   make step99-reset
   ```
   - Generates reset configs from template
   - Confirms deployment (type "RESET" to proceed)
   - Deploys to CloudVision Portal
   - Devices revert to baseline state

2. **Restore normal management:**
   ```bash
   make build     # Regenerates normal AVD configs
   make deploy    # Deploys normal configs to CloudVision
   ```

3. **Verify devices:**
   ```bash
   ping <device_mgmt_ip>
   ssh admin@<device_mgmt_ip>
   show version
   ```

### When to Use Reset

- **Device Troubleshooting:** Clear all custom config to return to known state
- **Multi-tenancy Cleanup:** Reset before repurposing device in different datacenter
- **Configuration Mistakes:** If invalid config is deployed and needs rollback
- **Lab Testing:** Return virtual devices to clean state between test runs

### Important Warnings

⚠️ **DESTRUCTIVE OPERATION**
- All network configuration will be removed
- Device will disconnect from fabric
- All routing (BGP, OSPF, etc.) will be disabled
- Ensure you want this operation before typing "RESET"

---

## Continuous Integration (CI/CD)

The repository includes GitHub Actions workflows that automate linting, building, deploying, and validating configurations on every push to non-main branches.

### Setup Overview

The complete setup is a single command that configures both local and remote environments:

```bash
make step1-setup
```

This orchestrates:
- ✓ Local: Python venv, Ansible, AVD, project configuration
- ✓ Remote: AVD-tooling server provisioning (if in inventory)
- ✓ Remote: GitHub Actions runner setup and registration

### GitHub Actions Runner Configuration

#### 1. Generate GitHub Personal Access Token (PAT)

1. Go to GitHub → Settings → Developer settings → Personal access tokens
2. Click **Generate new token (classic)**
3. Name: `avdci6-runner`
4. Scopes: Check `repo` and `admin:repo_hook`
5. Click **Generate token**
6. Copy the token immediately (you won't see it again)

#### 2. Save Token Locally

On your development machine, save the token:

```bash
echo "YOUR_TOKEN_HERE" > ~/RUNNER_TOKEN
chmod 600 ~/RUNNER_TOKEN
```

#### 3. Run Bootstrap

The `step1-setup` target automatically configures the runner as part of full bootstrap:

```bash
make step1-setup
```

This includes runner setup which will:
- Download the GitHub Actions runner (v2.336.0)
- Register the runner with your GitHub repository
- Create a systemd service for automatic startup
- Configure runner labels: `[self-hosted, Linux, X64, dev]`

#### 4. Verify Runner is Online

1. Go to GitHub → Repository Settings → Actions → Runners
2. You should see your runner status as **Idle** (ready to accept jobs)

### CI/CD Workflow

#### Dev Pipeline (`.github/workflows/dev-runner.yml`)

Runs on every push to **non-main branches**:

**Pipeline Stages:**
1. **Lint** (5 min timeout)
   - Runs `yamllint` on inventory files
   - Runs `ansible-lint` on playbooks
   - Fails fast if configuration is invalid

2. **Build** (15 min timeout)
   - Runs `make dev-build` to generate configurations in dev
   - Verifies output directory contains device configs
   - Commits generated configs back to branch if changed

3. **Deploy** (10 min timeout)
   - Runs `make dev-deploy` to push configs to **dev** CloudVision Portal
   - Waits 30 seconds for CloudVision to process changes

4. **Wait** (2 min timeout)
   - Sleeps 30 seconds to allow CloudVision processing

5. **Validate** (15 min timeout)
   - Runs `make dev-validate` to execute ANTA tests
   - Uploads test reports as artifacts
   - Displays validation summary in GitHub

#### Prod Pipeline (`.github/workflows/prod-runner.yml`)

Runs on **pull request merge to main**:

**Pipeline Stages:**
1. **Lint** (5 min timeout)
   - Runs `yamllint` on inventory files
   - Runs `ansible-lint` on playbooks
   - Fails fast if configuration is invalid

2. **Build** (15 min timeout)
   - Runs `make prod-build` to generate configurations in prod
   - Verifies output directory contains device configs
   - Commits generated configs back to main if changed

3. **Deploy** (10 min timeout)
   - Runs `make prod-deploy` to push configs to **prod** CloudVision Portal
   - **No change control** — configurations deploy directly to devices
   - Waits 30 seconds for CloudVision to process changes

4. **Validate** (15 min timeout)
   - Runs `make prod-validate` to execute ANTA tests on **prod** fabric
   - Uploads validation reports as artifacts
   - Commits validation results to main branch

**Key Differences:** 
- Prod deployment happens **automatically on merge**, with no manual approval step required in CloudVision
- Prod validation is **automatic** — runs right after deployment to verify fabric health
- Results are logged and committed back to the repository for audit trail

### Testing Your Workflow

Push a test branch to trigger the workflow:

```bash
git checkout -b test/my-config
# Make a config change
git add avd_project/
git commit -m "test: sample config change"
git push origin test/my-config
```

Then monitor progress:
1. Go to GitHub → Actions
2. Click your workflow run
3. View step-by-step logs

### Runner Management

**View runner logs:**
```bash
# SSH into AVD-tooling server
ssh ansible@<avd-tooling-ip>

# View service status
systemctl status github-runner

# Tail logs
journalctl -u github-runner -f

# Restart runner if needed
systemctl restart github-runner
```

**Unregister runner (cleanup):**
```bash
cd ~/actions-runner
./config.sh remove --token <removal-token>
```

---

## Validation

### Manual Device Checks

SSH into any device and verify:

```bash
# Check BGP peer status (underlay)
show bgp ipv4 summary

# Check BGP EVPN status (overlay)
show bgp evpn summary

# Verify VXLAN tunnel state
show vxlan tunnel

# Inspect MLAG pairs
show mlag status

# View system readiness
show system status

# Check NTP synchronization (critical for BGP)
show ntp status
```

### Automated Validation (ANTA)

The repository includes ANTA tests that validate:

- All BGP peers are up (underlay and overlay)
- VXLAN tunnels are operational
- MLAG is synchronized
- NTP is synced (critical for BGP timers)
- Configuration is committed (no uncommitted changes)

Run validation:

```bash
make syntax       # Check playbook syntax
make lint         # Run ansible-lint on playbooks
```

---

## Modern Operating Model

The **Modern Operating Model** separates network operations into three phases:

### **Day 0: Bootstrap**
*One-time setup — What you're doing now.*

- Deploy fabric with baseline configuration
- Onboard devices to CloudVision
- Enable automation tooling (Ansible, Git)
- Validate fabric state

### **Day 1: Fabric Operations**
*Ongoing scaling — Add/remove devices.*

Examples:
- **Add a new spine:** Update `group_vars/DC1_SPINES/spines.yml` with new spine definition
- **Add a new leaf pair:** Update `group_vars/DC1_LEAVES/l3_leaves.yml` with leaf node group
- **Onboard new host:** Update `CONNECTED_ENDPOINTS` group_vars

Workflow:
1. Update inventory YAML with new device intent
2. Run `ansible-playbook playbooks/build.yml` to generate new configs
3. Validate in ACT before production
4. Run `ansible-playbook playbooks/deploy.yml` to push to CloudVision
5. CloudVision stages and operator approves changes

### **Day 2: Tenant Operations**
*Application lifecycle — Manage networks, VLANs, users.*

Examples:
- **Add a new tenant:** Create new VRF + VLAN in `NETWORK_SERVICES` group_vars
- **Provision server port:** Add host interface definition
- **Change QoS policy:** Update per-interface or per-VLAN policy

Tenant changes are versioned in Git and tracked through the CI pipeline.

---

## Troubleshooting

### Common Issues

#### "ansible: command not found"
Ensure you've activated the venv:
```bash
source .venv/bin/activate
```

#### "Collection arista.avd does not support Ansible version X.Y.Z"
This is a warning. Collections are forward-compatible. Verify collection installation:
```bash
ansible-galaxy collection list | grep arista
```

#### "CloudVision IP unreachable"
1. Verify IP in `inventory.yml` matches your lab
2. Ensure CloudVision is deployed and running
3. Check network connectivity: `ping <cvp-ip>`
4. Verify credentials in inventory

#### AVD build fails with "Undefined variable"
1. Check the variable name in the error message
2. Verify it's defined in the appropriate `group_vars/` file
3. Check YAML indentation (common source of undefined variables)

#### YAML syntax error
Run a linter to catch formatting issues:
```bash
yamllint avd_project/inventory/group_vars/
```

**Debug:** Add verbose output to playbooks:
```bash
ansible-playbook -vvv playbooks/build.yml
```

---

## References

### Arista Documentation
- [AVD 6.3 Overview](https://avd.arista.com/6.3/index.html)
- [eos_designs Role Documentation](https://avd.arista.com/6.3/ansible_collections/arista/avd/roles/eos_designs/index.html)
- [Leaf-Spine Design & Examples](https://avd.arista.com/6.3/ansible_collections/arista/avd/roles/eos_designs/index.html#layer-3-leaf-spine-with-vxlan-evpn)
- [Arista Cloud Test (ACT) Guide](https://www.arista.com/en/solutions/cloud-test)
- [Arista Network Testing Automation (ANTA)](https://www.arista.com/en/products/anta)

### Ansible & DevOps
- [Ansible Documentation](https://docs.ansible.com/)
- [Ansible Network Guide](https://docs.ansible.com/ansible/latest/network/index.html)
- [Ansible Collections](https://docs.ansible.com/ansible/latest/collections/index.html)

### Network Standards
- [RFC 7432 — BGP EVPN](https://tools.ietf.org/html/rfc7432)
- [RFC 8365 — VXLAN with EVPN Control Plane](https://tools.ietf.org/html/rfc8365)
- [RFC 4271 — BGP](https://tools.ietf.org/html/rfc4271)

---

## Glossary

| Term | Abbreviation | Definition |
|------|:--:|-----------|
| Arista Cloud Test | **ACT** | Cloud-based virtual lab using production EOS and CVP images for safe testing |
| Arista Validated Design | **AVD** | Ansible collection automating fabric design, build, and deployment |
| Continuous Integration | **CI** | Automated testing and validation pipeline before production deployment |
| CloudVision Portal | **CVP** | Arista's network management, configuration, and compliance platform |
| Extensible Operating System | **EOS** | Arista's Linux-based network operating system |
| Border Gateway Protocol | **BGP** | Dynamic routing protocol for underlay and overlay routing |
| Ethernet VPN | **EVPN** | Overlay routing protocol for VXLAN multi-site connectivity (RFC 7432) |
| Multi-Chassis Link Aggregation | **MLAG** | High-availability peering between two leaf switches for active-active redundancy |
| Network Testing & Automation | **ANTA** | Arista's framework for validating network state and compliance |
| Virtual Extensible LAN | **VXLAN** | Encapsulation protocol for tenant traffic across L3 fabric |
| Infrastructure as Code | **IaC** | Network configuration defined in version-controlled YAML files |
| Modern Operating Model | **MOM** | Arista's operational framework for Day-0, Day-1, Day-2 network automation |
| Source Code Management | **SCM** | Git-based version control (GitHub, GitLab, Bitbucket, etc.) |
| Python Virtual Environment | **venv** | Isolated Python environment for project-specific dependencies |

---

## Getting Help

### Available Make Targets

```bash
make help                    # Show all available targets

# Bootstrap (one-time setup)
make step1-setup             # Local bootstrap: venv + wizard (both dev & prod)
make step1-setup-dev         # Full dev bootstrap: local + dev_avd server + runner
make step1-setup-prod        # Full prod bootstrap: local + prod_avd server + runner

# Dev/Prod Component Targets
make dev-setup               # Create venv (local only)
make dev-setup-wizard        # Configure dev environment in inventory
make dev-bootstrap-avd-server - Bootstrap dev AVD-tooling server
make dev-setup-github-runner - Register dev GitHub Actions runner

make prod-setup              # Create venv (local only)
make prod-setup-wizard       # Configure prod environment in inventory
make prod-bootstrap-avd-server - Bootstrap prod AVD-tooling server
make prod-setup-github-runner - Register prod GitHub Actions runner

# Dev Fabric Operations
make step2-dev-avd           # Full dev AVD workflow (dev-build → dev-deploy → dev-validate)
make dev-build               # Generate dev configs only
make dev-deploy              # Deploy to dev CloudVision only
make dev-validate            # Run ANTA tests on dev fabric only

# Backwards compatible aliases (map to dev)
make build                   # Same as: make dev-build
make deploy                  # Same as: make dev-deploy
make validate                # Same as: make dev-validate

# Host Configuration
make step3-hosts             # Configure hosts (all environments): dev + prod
make step3-dev-hosts         # Configure dev hosts: dev-host-build → dev-host-deploy
make step3-prod-hosts        # Configure prod hosts: prod-host-build → prod-host-deploy
make dev-host-build          # Generate dev host endpoint configs only
make dev-host-deploy         # Deploy dev host configs to dev CloudVision only
make prod-host-build         # Generate prod host endpoint configs only
make prod-host-deploy        # Deploy prod host configs to prod CloudVision only

# Backwards compatible aliases (map to dev)
make host-build              # Same as: make dev-host-build
make host-deploy             # Same as: make dev-host-deploy

# Prod Fabric Operations
make step4-prod-avd          # Full prod AVD workflow (prod-build → prod-deploy)
make step5-prod-validate     # Validate prod fabric (prod-validate)
make prod-build              # Generate prod configs only
make prod-deploy             # Deploy to prod CloudVision only
make prod-validate           # Run ANTA tests on prod fabric only

# Reset & Recovery
make step99-reset            # Reset topology to baseline (reset-build → reset-deploy)
make reset-build             # Generate reset configs only
make reset-deploy            # Deploy reset configs to CloudVision only

# Validation & Diagnostics
make check                   # Verify Ansible/venv configuration
make syntax                  # Check playbook syntax
make lint                    # Run ansible-lint
make clean                   # Remove generated outputs
```

### Quick Examples

**First-time setup with dev and prod environments:**
```bash
# Step 1: Local setup (configure both dev and prod inventory)
make step1-setup

# Step 1a: Bootstrap dev environment
echo "YOUR_DEV_TOKEN" > ~/RUNNER_TOKEN
make step1-setup-dev

# Step 1b: Bootstrap prod environment
echo "YOUR_PROD_TOKEN" > ~/RUNNER_TOKEN
make step1-setup-prod

# Step 2: Generate, deploy, and validate dev fabric
make step2-dev-avd

# Step 3: Configure hosts (dev + prod)
make step3-hosts

# Or configure specific environments
make step3-dev-hosts         # Dev hosts only
make step3-prod-hosts        # Prod hosts only (usually via CI/CD)

# Step 4: Deploy to prod (when ready)
# Merge your PR to main branch, which will trigger prod deployment + validation automatically
git checkout main
git merge <your-feature-branch>
git push origin main
# Prod runner will automatically: lint → build → deploy → validate
# Check GitHub Actions for deployment and validation results

# Step 5: Manually validate prod fabric (optional, or use make step5-prod-validate)
make prod-validate
```

**Reset devices to baseline state:**
```bash
make step99-reset
```

**Run only specific operations:**
```bash
# Dev operations
make dev-build               # Generate dev configurations only
make dev-deploy              # Deploy to dev CloudVision only
make dev-validate            # Run ANTA tests on dev fabric only

# Prod operations
make prod-build              # Generate prod configurations only
make prod-deploy             # Deploy to prod CloudVision only
make prod-validate           # Run ANTA tests on prod fabric only
make step5-prod-validate     # Same as: make prod-validate

# Backwards compatible (maps to dev)
make build                   # Same as: make dev-build
make deploy                  # Same as: make dev-deploy
make validate                # Same as: make dev-validate
```

**Check your setup:**
```bash
make lint                    # Validate playbooks
make syntax                  # Check syntax
make check                   # Verify environment
```

### Support Resources

- **Issues & Questions:** File a GitHub issue in this repository
- **Documentation:** See [References](#references) section above
- **Arista Support:** Contact your Arista Technical Account Manager (TAM) or [Arista Support Portal](https://www.arista.com/en/support)

---

**Last Updated:** August 17, 2026  
**Version:** 3.4 — Host Configuration (Step 3) with Dev/Prod Separation and LAG/Port Profiles  
**AVD Version:** 6.3+  
**Ansible:** 2.14+  
**Python:** 3.8+
**Key Features:**
- ✓ eBGP Underlay + eBGP EVPN Overlay (RFC 7432, 4271)
- ✓ MLAG on all leaf pairs for active-active redundancy
- ✓ Customer1/Customer2 VRF/VLAN isolation
- ✓ Host LAG with connectivity monitoring (Ethernet1, Ethernet2 → Port-Channel1)
- ✓ Port profiles and spanning-tree portfast edge
- ✓ Separate dev/prod make targets for all workflows
- ✓ CI/CD with GitHub Actions (self-hosted runners)
