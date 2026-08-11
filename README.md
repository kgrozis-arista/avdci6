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
- [Network Design](#network-design)
- [Build & Deploy](#build--deploy)
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
│       ├── build.yml                # Generate configurations (AVD)
│       ├── deploy.yml               # Deploy to CloudVision
│       └── validate.yml             # Run ANTA validation tests
└── README.md                         # This file
```

---

## Quick Start

### Prerequisites

- **macOS or Linux** (development tested on macOS)
- **Python 3.8+** (`python3 --version`)
- **Ansible** (installed via `make step0-setup-env`)
- **make** (`make --version`)
- **Git** for version control

Optional:
- **Arista Cloud Test (ACT)** account for virtual lab (https://ce.act.arista.com/)
- **CloudVision Portal** instance (on-premises or CVaaS)

### Bootstrap Environment

Initialize your development environment with a single command:

```bash
make step0-setup-env
```

This target:
1. Creates a Python virtual environment (`.venv/`)
2. Installs Python dependencies from `requirements.txt`
3. Installs Ansible collections from `collections.yml` (arista.avd, arista.eos, etc.)
4. Runs an interactive setup wizard to configure your inventory
5. (Optional) Configures GitHub Actions runner on AVD-tooling server
6. Validates the Ansible installation

**Expected output:**
```
✓ All tools installed successfully
✓ Step 0 complete: venv setup and configuration done
```

**GitHub Actions Runner (Optional):**
If you plan to use GitHub Actions CI/CD, the bootstrap includes a runner setup target. To enable this:

1. Generate a GitHub Personal Access Token (PAT) with `repo` and `admin:repo_hook` permissions
2. Save it to `~/RUNNER_TOKEN` on your local machine
3. Run `make step0-setup-env` — the runner setup will be executed automatically

If you skip runner setup during bootstrap, you can set it up later:
```bash
make setup-github-runner RUNNER_TOKEN=your_token_here
```

For more details, see [Continuous Integration (CI/CD)](#continuous-integration-cicd).

### Setup Configuration

The setup wizard prompts for critical infrastructure IPs:

- **CloudVision Portal IP** — Where configurations are deployed and monitored
- **AVD Tooling Server IP** — Optional remote server for automation execution

These values are written to `avd_project/inventory/inventory.yml`.

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

## Network Design

### Underlay Routing

- **Protocol:** eBGP (RFC 4271)
- **Spine ASNs:** 65000–65002 (one per spine)
- **Leaf ASNs:** 65100–65103 (grouped per datacenter)
- **Loopback IPs:** Allocated from 10.10.0.0/24 (spines) and 10.10.1.0/24 (leafs)
- **P2P Links:** 10.20.0.0/24 (auto-allocated by AVD)

### Overlay Routing

- **Protocol:** eBGP (EVPN Address Family) — RFC 7432
- **VXLAN:** Encapsulation for tenant traffic
- **Multi-homing:** All leafs active via MLAG
- **Redundancy:** Full mesh BGP peering between leafs and spines

### Data Plane

- **VLAN-based:** Tenant isolation via VLAN
- **MTU:** 1500 (vEOS-lab compatibility)
- **BFD:** Enabled for fast failure detection (300ms holdtime)
- **Spanning Tree:** Disabled (fabric uses BGP for all paths)

**For full design details, see:**
- [AVD 6.3 Leaf-Spine Design](https://avd.arista.com/6.3/ansible_collections/arista/avd/roles/eos_designs/index.html#layer-3-leaf-spine-with-vxlan-evpn)

---

## Build & Deploy

### 1. Generate Configuration

AVD reads your intent files and generates EOS configurations:

```bash
# Activate venv (if not already active)
source .venv/bin/activate

# Build configurations
cd avd_project
ansible-playbook playbooks/build.yml
```

**Outputs:**
- `intended/configs/` — Final EOS commands per device
- `documentation/` — Network topology and IP allocation reports
- `structured_configs/` — Intermediate JSON (for CI tools)

### 2. Deploy to CloudVision

Push generated configurations to your CloudVision instance:

```bash
ansible-playbook playbooks/deploy.yml
```

CloudVision stages change controls. Review and approve in the WebUI before devices are configured.

### 3. Validate Fabric State

Run ANTA tests to verify actual device state matches design:

```bash
ansible-playbook playbooks/validate.yml
```

Reports are written to `intended/reports/`.

---

## Continuous Integration (CI/CD)

The repository includes GitHub Actions workflows that automate linting, building, deploying, and validating configurations on every push to non-main branches.

### GitHub Actions Runner Setup

GitHub Actions requires a **self-hosted runner** to access your CloudVision Portal and network infrastructure. The runner is typically deployed on your AVD-tooling server (Linux).

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

#### 3. Configure Runner on AVD-Tooling Server

Run the Ansible playbook to configure the runner:

```bash
# During bootstrap (runs automatically if ~/RUNNER_TOKEN exists)
make step0-setup-env

# Or manually set up the runner later
make setup-github-runner RUNNER_TOKEN=$(cat ~/RUNNER_TOKEN)
```

The playbook:
- Downloads the GitHub Actions runner (v2.336.0)
- Registers the runner with your GitHub repository
- Creates a systemd service for automatic startup
- Configures runner labels: `[self-hosted, Linux, X64, dev]`

#### 4. Verify Runner is Online

1. Go to GitHub → Repository Settings → Actions → Runners
2. You should see your runner status as **Idle** (ready to accept jobs)

### CI/CD Workflow

The workflow defined in `.github/workflows/dev-runner.yml` runs on every push to non-main branches:

**Pipeline Stages:**
1. **Lint** (5 min timeout)
   - Runs `yamllint` on inventory files
   - Runs `ansible-lint` on playbooks
   - Fails fast if configuration is invalid

2. **Build** (15 min timeout)
   - Runs `make build` to generate configurations
   - Verifies output directory contains device configs
   - Commits generated configs back to branch if changed

3. **Deploy** (10 min timeout)
   - Runs `make deploy` to push configs to CloudVision
   - Waits 30 seconds for CloudVision to process changes

4. **Validate** (15 min timeout)
   - Runs `make validate` to execute ANTA tests
   - Uploads test reports as artifacts
   - Displays validation summary in GitHub

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

- **Issues & Questions:** File a GitHub issue in this repository
- **Documentation:** See [References](#references) section above
- **Arista Support:** Contact your Arista Technical Account Manager (TAM) or [Arista Support Portal](https://www.arista.com/en/support)

---

**Last Updated:** August 2026  
**AVD Version:** 6.3+  
**Ansible:** 2.14+  
**Python:** 3.8+
