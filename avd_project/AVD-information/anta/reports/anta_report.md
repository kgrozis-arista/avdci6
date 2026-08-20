# 📊 ANTA Report <a id="anta-report"></a>

**Table of Contents:**

- [ANTA Report](#anta-report)
  - [Test Results Summary](#test-results-summary)
    - [Summary Totals](#summary-totals)
    - [Summary Totals Device Under Test](#summary-totals-device-under-test)
    - [Summary Totals Per Category](#summary-totals-per-category)
  - [Test Results](#test-results)

## 📉 Test Results Summary <a id="test-results-summary"></a>

>💡 **Note:** This report was generated with **Expanded Results** enabled. The summary sections below aggregate results at the test level, so individual checks (atomic results) are not counted in these totals.

### 🔢 Summary Totals <a id="summary-totals"></a>

| Total Tests | ✅&nbsp;Success | ⏭️&nbsp;Skipped | ❌&nbsp;Failure | ❗&nbsp;Error |
| :- | :- | :- | :- | :- |
| 332 | 298 | 0 | 34 | 0 |

### 🔌 Summary Totals Device Under Test <a id="summary-totals-device-under-test"></a>

| Device | Total Tests | ✅&nbsp;Success | ⏭️&nbsp;Skipped | ❌&nbsp;Failure | ❗&nbsp;Error | Categories Skipped | Categories Failed |
| :- | :- | :- | :- | :- | :- | :- | :- |
| **DC1-LEAF1A** | 23 | 19 | 0 | 4 | 0 | - | Interfaces, MLAG, VXLAN |
| **DC1-LEAF1B** | 23 | 19 | 0 | 4 | 0 | - | Interfaces, MLAG, VXLAN |
| **DC1-LEAF2A** | 23 | 19 | 0 | 4 | 0 | - | Interfaces, MLAG, VXLAN |
| **DC1-LEAF2B** | 23 | 19 | 0 | 4 | 0 | - | Interfaces, MLAG, VXLAN |
| **DC1-LEAF3A** | 23 | 22 | 0 | 1 | 0 | - | VXLAN |
| **DC1-LEAF3B** | 23 | 22 | 0 | 1 | 0 | - | VXLAN |
| **DC1-SPINE1** | 17 | 17 | 0 | 0 | 0 | - | - |
| **DC1-SPINE2** | 17 | 17 | 0 | 0 | 0 | - | - |
| **DC1-SPINE3** | 17 | 17 | 0 | 0 | 0 | - | - |
| **DC2-LEAF1A** | 23 | 19 | 0 | 4 | 0 | - | Interfaces, MLAG, VXLAN |
| **DC2-LEAF1B** | 23 | 19 | 0 | 4 | 0 | - | Interfaces, MLAG, VXLAN |
| **DC2-LEAF2A** | 23 | 19 | 0 | 4 | 0 | - | Interfaces, MLAG, VXLAN |
| **DC2-LEAF2B** | 23 | 19 | 0 | 4 | 0 | - | Interfaces, MLAG, VXLAN |
| **DC2-SPINE1** | 17 | 17 | 0 | 0 | 0 | - | - |
| **DC2-SPINE2** | 17 | 17 | 0 | 0 | 0 | - | - |
| **DC2-SPINE3** | 17 | 17 | 0 | 0 | 0 | - | - |

### 🗂️ Summary Totals Per Category <a id="summary-totals-per-category"></a>

| Test Category | Total Tests | ✅&nbsp;Success | ⏭️&nbsp;Skipped | ❌&nbsp;Failure | ❗&nbsp;Error |
| :- | :- | :- | :- | :- | :- |
| **BGP** | 16 | 16 | 0 | 0 | 0 |
| **Configuration** | 32 | 32 | 0 | 0 | 0 |
| **Connectivity** | 32 | 32 | 0 | 0 | 0 |
| **Interfaces** | 84 | 68 | 0 | 16 | 0 |
| **MLAG** | 30 | 22 | 0 | 8 | 0 |
| **Routing** | 16 | 16 | 0 | 0 | 0 |
| **STP** | 16 | 16 | 0 | 0 | 0 |
| **System** | 96 | 96 | 0 | 0 | 0 |
| **VXLAN** | 10 | 0 | 0 | 10 | 0 |

## 🧪 Test Results <a id="test-results"></a>

| Device | Categories | Test | Description | Result | Messages |
| :- | :- | :- | :- | :- | :- |
| DC1-LEAF1A | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ❌&nbsp;Failure | 1/12&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Status mismatch - Expected: up/up, Actual: down/lowerLayerDown |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Vlan4093 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Vlan4094 | ✅&nbsp;Success | - |
| DC1-LEAF1A | Interfaces | VerifyPortChannels | Verifies there are no inactive ports in port channels. | ❌&nbsp;Failure | 1/2&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Inactive port(s) - Ethernet1, PeerEthernet1 |
| DC1-LEAF1A | MLAG | VerifyMlagInterfaces | Verifies there are no inactive or active-partial MLAG ports. | ❌&nbsp;Failure | MLAG status is not ok - Inactive Ports: 1 Partial Active Ports: 0 |
| DC1-LEAF1A | VXLAN | VerifyVxlanConfigSanity | Verifies there are no VXLAN config-sanity inconsistencies. | ❌&nbsp;Failure | Vxlan Category: localVtep - Config sanity check is not passing |
| DC1-LEAF1B | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ❌&nbsp;Failure | 1/12&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Status mismatch - Expected: up/up, Actual: down/lowerLayerDown |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Vlan4093 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Vlan4094 | ✅&nbsp;Success | - |
| DC1-LEAF1B | Interfaces | VerifyPortChannels | Verifies there are no inactive ports in port channels. | ❌&nbsp;Failure | 1/2&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Inactive port(s) - Ethernet1, PeerEthernet1 |
| DC1-LEAF1B | MLAG | VerifyMlagInterfaces | Verifies there are no inactive or active-partial MLAG ports. | ❌&nbsp;Failure | MLAG status is not ok - Inactive Ports: 1 Partial Active Ports: 0 |
| DC1-LEAF1B | VXLAN | VerifyVxlanConfigSanity | Verifies there are no VXLAN config-sanity inconsistencies. | ❌&nbsp;Failure | Vxlan Category: localVtep - Config sanity check is not passing |
| DC1-LEAF2A | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ❌&nbsp;Failure | 1/12&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Status mismatch - Expected: up/up, Actual: down/lowerLayerDown |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Vlan4093 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Vlan4094 | ✅&nbsp;Success | - |
| DC1-LEAF2A | Interfaces | VerifyPortChannels | Verifies there are no inactive ports in port channels. | ❌&nbsp;Failure | 1/2&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Inactive port(s) - Ethernet1, PeerEthernet1 |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF2A | MLAG | VerifyMlagInterfaces | Verifies there are no inactive or active-partial MLAG ports. | ❌&nbsp;Failure | MLAG status is not ok - Inactive Ports: 1 Partial Active Ports: 0 |
| DC1-LEAF2A | VXLAN | VerifyVxlanConfigSanity | Verifies there are no VXLAN config-sanity inconsistencies. | ❌&nbsp;Failure | Vxlan Category: localVtep - Config sanity check is not passing |
| DC1-LEAF2B | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ❌&nbsp;Failure | 1/12&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Status mismatch - Expected: up/up, Actual: down/lowerLayerDown |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Vlan4093 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Vlan4094 | ✅&nbsp;Success | - |
| DC1-LEAF2B | Interfaces | VerifyPortChannels | Verifies there are no inactive ports in port channels. | ❌&nbsp;Failure | 1/2&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Inactive port(s) - Ethernet1, PeerEthernet1 |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF2B | MLAG | VerifyMlagInterfaces | Verifies there are no inactive or active-partial MLAG ports. | ❌&nbsp;Failure | MLAG status is not ok - Inactive Ports: 1 Partial Active Ports: 0 |
| DC1-LEAF2B | VXLAN | VerifyVxlanConfigSanity | Verifies there are no VXLAN config-sanity inconsistencies. | ❌&nbsp;Failure | Vxlan Category: localVtep - Config sanity check is not passing |
| DC1-LEAF3A | VXLAN | VerifyVxlanConfigSanity | Verifies there are no VXLAN config-sanity inconsistencies. | ❌&nbsp;Failure | Vxlan Category: localVtep - Config sanity check is not passing |
| DC1-LEAF3B | VXLAN | VerifyVxlanConfigSanity | Verifies there are no VXLAN config-sanity inconsistencies. | ❌&nbsp;Failure | Vxlan Category: localVtep - Config sanity check is not passing |
| DC2-LEAF1A | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ❌&nbsp;Failure | 1/12&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Status mismatch - Expected: up/up, Actual: down/lowerLayerDown |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Vlan4093 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Vlan4094 | ✅&nbsp;Success | - |
| DC2-LEAF1A | Interfaces | VerifyPortChannels | Verifies there are no inactive ports in port channels. | ❌&nbsp;Failure | 1/2&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Inactive port(s) - Ethernet1, PeerEthernet1 |
| DC2-LEAF1A | MLAG | VerifyMlagInterfaces | Verifies there are no inactive or active-partial MLAG ports. | ❌&nbsp;Failure | MLAG status is not ok - Inactive Ports: 1 Partial Active Ports: 0 |
| DC2-LEAF1A | VXLAN | VerifyVxlanConfigSanity | Verifies there are no VXLAN config-sanity inconsistencies. | ❌&nbsp;Failure | Vxlan Category: localVtep - Config sanity check is not passing |
| DC2-LEAF1B | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ❌&nbsp;Failure | 1/12&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Status mismatch - Expected: up/up, Actual: down/lowerLayerDown |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Vlan4093 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Vlan4094 | ✅&nbsp;Success | - |
| DC2-LEAF1B | Interfaces | VerifyPortChannels | Verifies there are no inactive ports in port channels. | ❌&nbsp;Failure | 1/2&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Inactive port(s) - Ethernet1, PeerEthernet1 |
| DC2-LEAF1B | MLAG | VerifyMlagInterfaces | Verifies there are no inactive or active-partial MLAG ports. | ❌&nbsp;Failure | MLAG status is not ok - Inactive Ports: 1 Partial Active Ports: 0 |
| DC2-LEAF1B | VXLAN | VerifyVxlanConfigSanity | Verifies there are no VXLAN config-sanity inconsistencies. | ❌&nbsp;Failure | Vxlan Category: localVtep - Config sanity check is not passing |
| DC2-LEAF2A | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ❌&nbsp;Failure | 1/12&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Status mismatch - Expected: up/up, Actual: down/lowerLayerDown |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Vlan4093 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Vlan4094 | ✅&nbsp;Success | - |
| DC2-LEAF2A | Interfaces | VerifyPortChannels | Verifies there are no inactive ports in port channels. | ❌&nbsp;Failure | 1/2&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Inactive port(s) - Ethernet1, PeerEthernet1 |
| DC2-LEAF2A | MLAG | VerifyMlagInterfaces | Verifies there are no inactive or active-partial MLAG ports. | ❌&nbsp;Failure | MLAG status is not ok - Inactive Ports: 1 Partial Active Ports: 0 |
| DC2-LEAF2A | VXLAN | VerifyVxlanConfigSanity | Verifies there are no VXLAN config-sanity inconsistencies. | ❌&nbsp;Failure | Vxlan Category: localVtep - Config sanity check is not passing |
| DC2-LEAF2B | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ❌&nbsp;Failure | 1/12&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Status mismatch - Expected: up/up, Actual: down/lowerLayerDown |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Vlan4093 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Vlan4094 | ✅&nbsp;Success | - |
| DC2-LEAF2B | Interfaces | VerifyPortChannels | Verifies there are no inactive ports in port channels. | ❌&nbsp;Failure | 1/2&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ❌&nbsp;Failure | Inactive port(s) - Ethernet1, PeerEthernet1 |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC2-LEAF2B | MLAG | VerifyMlagInterfaces | Verifies there are no inactive or active-partial MLAG ports. | ❌&nbsp;Failure | MLAG status is not ok - Inactive Ports: 1 Partial Active Ports: 0 |
| DC2-LEAF2B | VXLAN | VerifyVxlanConfigSanity | Verifies there are no VXLAN config-sanity inconsistencies. | ❌&nbsp;Failure | Vxlan Category: localVtep - Config sanity check is not passing |
| DC1-LEAF1A | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.1 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.2 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.3 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.18 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.20 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.22 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.55.0.7 VRF: default | ✅&nbsp;Success | - |
| DC1-LEAF1A | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-LEAF1A | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC1-LEAF1A | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet49/1 Neighbor: DC1-LEAF1B Neighbor Port: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet50/1 Neighbor: DC1-LEAF1B Neighbor Port: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet51/1 Neighbor: DC1-SPINE1 Neighbor Port: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet52/1 Neighbor: DC1-SPINE2 Neighbor Port: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet53/1 Neighbor: DC1-SPINE3 Neighbor Port: Ethernet1/1 | ✅&nbsp;Success | - |
| DC1-LEAF1A | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;3&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.18 (DC1-SPINE1_Ethernet1/1) from 10.20.0.19 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.20 (DC1-SPINE2_Ethernet1/1) from 10.20.0.21 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.20.0.22 (DC1-SPINE3_Ethernet1/1) from 10.20.0.23 in VRF default | ✅&nbsp;Success | - |
| DC1-LEAF1A | Interfaces | VerifyIllegalLACP | Verifies there are no illegal LACP packets in port channels. | ✅&nbsp;Success | All&nbsp;2&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF1A | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC1-LEAF1A | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;57&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-LEAF1A | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;59&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF1A | MLAG | VerifyMlagConfigSanity | Verifies there are no MLAG config-sanity inconsistencies. | ✅&nbsp;Success | - |
| DC1-LEAF1A | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | ✅&nbsp;Success | - |
| DC1-LEAF1A | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC1-LEAF1A | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC1-LEAF1A | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC1-LEAF1A | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC1-LEAF1A | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC1-LEAF1A | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC1-LEAF1A | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC1-LEAF1A | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC1-LEAF1B | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.1 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.2 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.3 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.24 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.26 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.28 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.55.0.6 VRF: default | ✅&nbsp;Success | - |
| DC1-LEAF1B | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-LEAF1B | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC1-LEAF1B | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet49/1 Neighbor: DC1-LEAF1A Neighbor Port: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet50/1 Neighbor: DC1-LEAF1A Neighbor Port: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet51/1 Neighbor: DC1-SPINE1 Neighbor Port: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet52/1 Neighbor: DC1-SPINE2 Neighbor Port: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet53/1 Neighbor: DC1-SPINE3 Neighbor Port: Ethernet2/1 | ✅&nbsp;Success | - |
| DC1-LEAF1B | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;3&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.24 (DC1-SPINE1_Ethernet2/1) from 10.20.0.25 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.26 (DC1-SPINE2_Ethernet2/1) from 10.20.0.27 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.20.0.28 (DC1-SPINE3_Ethernet2/1) from 10.20.0.29 in VRF default | ✅&nbsp;Success | - |
| DC1-LEAF1B | Interfaces | VerifyIllegalLACP | Verifies there are no illegal LACP packets in port channels. | ✅&nbsp;Success | All&nbsp;2&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF1B | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC1-LEAF1B | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;57&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-LEAF1B | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;59&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF1B | MLAG | VerifyMlagConfigSanity | Verifies there are no MLAG config-sanity inconsistencies. | ✅&nbsp;Success | - |
| DC1-LEAF1B | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | ✅&nbsp;Success | - |
| DC1-LEAF1B | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC1-LEAF1B | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC1-LEAF1B | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC1-LEAF1B | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC1-LEAF1B | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC1-LEAF1B | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC1-LEAF1B | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC1-LEAF1B | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC1-LEAF2A | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.1 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.2 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.3 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.30 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.32 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.34 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.55.0.11 VRF: default | ✅&nbsp;Success | - |
| DC1-LEAF2A | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-LEAF2A | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC1-LEAF2A | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet49/1 Neighbor: DC1-LEAF2B Neighbor Port: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet50/1 Neighbor: DC1-LEAF2B Neighbor Port: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet51/1 Neighbor: DC1-SPINE1 Neighbor Port: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet52/1 Neighbor: DC1-SPINE2 Neighbor Port: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet53/1 Neighbor: DC1-SPINE3 Neighbor Port: Ethernet3/1 | ✅&nbsp;Success | - |
| DC1-LEAF2A | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;3&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.30 (DC1-SPINE1_Ethernet3/1) from 10.20.0.31 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.32 (DC1-SPINE2_Ethernet3/1) from 10.20.0.33 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.20.0.34 (DC1-SPINE3_Ethernet3/1) from 10.20.0.35 in VRF default | ✅&nbsp;Success | - |
| DC1-LEAF2A | Interfaces | VerifyIllegalLACP | Verifies there are no illegal LACP packets in port channels. | ✅&nbsp;Success | All&nbsp;2&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF2A | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC1-LEAF2A | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;57&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-LEAF2A | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;59&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF2A | MLAG | VerifyMlagConfigSanity | Verifies there are no MLAG config-sanity inconsistencies. | ✅&nbsp;Success | - |
| DC1-LEAF2A | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | ✅&nbsp;Success | - |
| DC1-LEAF2A | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC1-LEAF2A | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC1-LEAF2A | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC1-LEAF2A | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC1-LEAF2A | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC1-LEAF2A | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC1-LEAF2A | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC1-LEAF2A | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC1-LEAF2B | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.1 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.2 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.3 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.36 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.38 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.40 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.55.0.10 VRF: default | ✅&nbsp;Success | - |
| DC1-LEAF2B | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-LEAF2B | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC1-LEAF2B | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet49/1 Neighbor: DC1-LEAF2A Neighbor Port: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet50/1 Neighbor: DC1-LEAF2A Neighbor Port: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet51/1 Neighbor: DC1-SPINE1 Neighbor Port: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet52/1 Neighbor: DC1-SPINE2 Neighbor Port: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet53/1 Neighbor: DC1-SPINE3 Neighbor Port: Ethernet4/1 | ✅&nbsp;Success | - |
| DC1-LEAF2B | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;3&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.36 (DC1-SPINE1_Ethernet4/1) from 10.20.0.37 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.38 (DC1-SPINE2_Ethernet4/1) from 10.20.0.39 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.20.0.40 (DC1-SPINE3_Ethernet4/1) from 10.20.0.41 in VRF default | ✅&nbsp;Success | - |
| DC1-LEAF2B | Interfaces | VerifyIllegalLACP | Verifies there are no illegal LACP packets in port channels. | ✅&nbsp;Success | All&nbsp;2&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF2B | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC1-LEAF2B | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;57&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-LEAF2B | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;59&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF2B | MLAG | VerifyMlagConfigSanity | Verifies there are no MLAG config-sanity inconsistencies. | ✅&nbsp;Success | - |
| DC1-LEAF2B | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | ✅&nbsp;Success | - |
| DC1-LEAF2B | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC1-LEAF2B | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC1-LEAF2B | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC1-LEAF2B | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC1-LEAF2B | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC1-LEAF2B | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC1-LEAF2B | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC1-LEAF2B | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC1-LEAF3A | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.1 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.2 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.3 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.84 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.86 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.88 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.55.0.29 VRF: default | ✅&nbsp;Success | - |
| DC1-LEAF3A | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-LEAF3A | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC1-LEAF3A | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet49/1 Neighbor: DC1-LEAF3B Neighbor Port: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet50/1 Neighbor: DC1-LEAF3B Neighbor Port: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet51/1 Neighbor: DC1-SPINE1 Neighbor Port: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet52/1 Neighbor: DC1-SPINE2 Neighbor Port: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet53/1 Neighbor: DC1-SPINE3 Neighbor Port: Ethernet5/1 | ✅&nbsp;Success | - |
| DC1-LEAF3A | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;3&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.84 (DC1-SPINE1_Ethernet5/1) from 10.20.0.85 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.86 (DC1-SPINE2_Ethernet5/1) from 10.20.0.87 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.20.0.88 (DC1-SPINE3_Ethernet5/1) from 10.20.0.89 in VRF default | ✅&nbsp;Success | - |
| DC1-LEAF3A | Interfaces | VerifyIllegalLACP | Verifies there are no illegal LACP packets in port channels. | ✅&nbsp;Success | All&nbsp;1&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF3A | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC1-LEAF3A | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;57&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-LEAF3A | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;58&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF3A | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ✅&nbsp;Success | All&nbsp;10&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Vlan4093 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Vlan4094 | ✅&nbsp;Success | - |
| DC1-LEAF3A | Interfaces | VerifyPortChannels | Verifies there are no inactive ports in port channels. | ✅&nbsp;Success | All&nbsp;1&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF3A | MLAG | VerifyMlagConfigSanity | Verifies there are no MLAG config-sanity inconsistencies. | ✅&nbsp;Success | - |
| DC1-LEAF3A | MLAG | VerifyMlagInterfaces | Verifies there are no inactive or active-partial MLAG ports. | ✅&nbsp;Success | - |
| DC1-LEAF3A | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | ✅&nbsp;Success | - |
| DC1-LEAF3A | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC1-LEAF3A | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC1-LEAF3A | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC1-LEAF3A | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC1-LEAF3A | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC1-LEAF3A | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC1-LEAF3A | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC1-LEAF3A | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC1-LEAF3B | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.1 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.2 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.0.3 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.90 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.92 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.94 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.55.0.28 VRF: default | ✅&nbsp;Success | - |
| DC1-LEAF3B | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-LEAF3B | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC1-LEAF3B | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet49/1 Neighbor: DC1-LEAF3A Neighbor Port: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet50/1 Neighbor: DC1-LEAF3A Neighbor Port: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet51/1 Neighbor: DC1-SPINE1 Neighbor Port: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet52/1 Neighbor: DC1-SPINE2 Neighbor Port: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet53/1 Neighbor: DC1-SPINE3 Neighbor Port: Ethernet6/1 | ✅&nbsp;Success | - |
| DC1-LEAF3B | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;3&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.90 (DC1-SPINE1_Ethernet6/1) from 10.20.0.91 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.92 (DC1-SPINE2_Ethernet6/1) from 10.20.0.93 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.20.0.94 (DC1-SPINE3_Ethernet6/1) from 10.20.0.95 in VRF default | ✅&nbsp;Success | - |
| DC1-LEAF3B | Interfaces | VerifyIllegalLACP | Verifies there are no illegal LACP packets in port channels. | ✅&nbsp;Success | All&nbsp;1&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF3B | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC1-LEAF3B | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;57&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-LEAF3B | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;58&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF3B | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ✅&nbsp;Success | All&nbsp;10&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Loopback1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Vlan4093 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Vlan4094 | ✅&nbsp;Success | - |
| DC1-LEAF3B | Interfaces | VerifyPortChannels | Verifies there are no inactive ports in port channels. | ✅&nbsp;Success | All&nbsp;1&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC1-LEAF3B | MLAG | VerifyMlagConfigSanity | Verifies there are no MLAG config-sanity inconsistencies. | ✅&nbsp;Success | - |
| DC1-LEAF3B | MLAG | VerifyMlagInterfaces | Verifies there are no inactive or active-partial MLAG ports. | ✅&nbsp;Success | - |
| DC1-LEAF3B | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | ✅&nbsp;Success | - |
| DC1-LEAF3B | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC1-LEAF3B | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC1-LEAF3B | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC1-LEAF3B | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC1-LEAF3B | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC1-LEAF3B | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC1-LEAF3B | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC1-LEAF3B | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC1-SPINE1 | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;12&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.4 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.5 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.6 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.7 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.15 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.16 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.19 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.25 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.31 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.37 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.85 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.20.0.91 VRF: default | ✅&nbsp;Success | - |
| DC1-SPINE1 | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-SPINE1 | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC1-SPINE1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;6&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet1/1 Neighbor: DC1-LEAF1A Neighbor Port: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet2/1 Neighbor: DC1-LEAF1B Neighbor Port: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet3/1 Neighbor: DC1-LEAF2A Neighbor Port: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet4/1 Neighbor: DC1-LEAF2B Neighbor Port: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet5/1 Neighbor: DC1-LEAF3A Neighbor Port: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet6/1 Neighbor: DC1-LEAF3B Neighbor Port: Ethernet51/1 | ✅&nbsp;Success | - |
| DC1-SPINE1 | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;6&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.19 (DC1-LEAF1A_Ethernet51/1) from 10.20.0.18 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.25 (DC1-LEAF1B_Ethernet51/1) from 10.20.0.24 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.31 (DC1-LEAF2A_Ethernet51/1) from 10.20.0.30 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.37 (DC1-LEAF2B_Ethernet51/1) from 10.20.0.36 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.85 (DC1-LEAF3A_Ethernet51/1) from 10.20.0.84 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.20.0.91 (DC1-LEAF3B_Ethernet51/1) from 10.20.0.90 in VRF default | ✅&nbsp;Success | - |
| DC1-SPINE1 | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC1-SPINE1 | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-SPINE1 | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| DC1-SPINE1 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC1-SPINE1 | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC1-SPINE1 | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC1-SPINE1 | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC1-SPINE1 | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC1-SPINE1 | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC1-SPINE1 | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC1-SPINE1 | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC1-SPINE2 | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;12&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.4 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.5 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.6 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.7 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.15 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.16 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.21 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.27 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.33 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.39 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.87 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.20.0.93 VRF: default | ✅&nbsp;Success | - |
| DC1-SPINE2 | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-SPINE2 | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC1-SPINE2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;6&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet1/1 Neighbor: DC1-LEAF1A Neighbor Port: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet2/1 Neighbor: DC1-LEAF1B Neighbor Port: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet3/1 Neighbor: DC1-LEAF2A Neighbor Port: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet4/1 Neighbor: DC1-LEAF2B Neighbor Port: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet5/1 Neighbor: DC1-LEAF3A Neighbor Port: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet6/1 Neighbor: DC1-LEAF3B Neighbor Port: Ethernet52/1 | ✅&nbsp;Success | - |
| DC1-SPINE2 | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;6&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.21 (DC1-LEAF1A_Ethernet52/1) from 10.20.0.20 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.27 (DC1-LEAF1B_Ethernet52/1) from 10.20.0.26 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.33 (DC1-LEAF2A_Ethernet52/1) from 10.20.0.32 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.39 (DC1-LEAF2B_Ethernet52/1) from 10.20.0.38 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.87 (DC1-LEAF3A_Ethernet52/1) from 10.20.0.86 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.20.0.93 (DC1-LEAF3B_Ethernet52/1) from 10.20.0.92 in VRF default | ✅&nbsp;Success | - |
| DC1-SPINE2 | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC1-SPINE2 | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-SPINE2 | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| DC1-SPINE2 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC1-SPINE2 | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC1-SPINE2 | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC1-SPINE2 | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC1-SPINE2 | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC1-SPINE2 | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC1-SPINE2 | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC1-SPINE2 | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC1-SPINE3 | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;12&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.4 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.5 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.6 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.7 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.15 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.16 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.23 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.29 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.35 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.41 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.89 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.20.0.95 VRF: default | ✅&nbsp;Success | - |
| DC1-SPINE3 | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-SPINE3 | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC1-SPINE3 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;6&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet1/1 Neighbor: DC1-LEAF1A Neighbor Port: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet2/1 Neighbor: DC1-LEAF1B Neighbor Port: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet3/1 Neighbor: DC1-LEAF2A Neighbor Port: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet4/1 Neighbor: DC1-LEAF2B Neighbor Port: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet5/1 Neighbor: DC1-LEAF3A Neighbor Port: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet6/1 Neighbor: DC1-LEAF3B Neighbor Port: Ethernet53/1 | ✅&nbsp;Success | - |
| DC1-SPINE3 | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;6&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.23 (DC1-LEAF1A_Ethernet53/1) from 10.20.0.22 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.29 (DC1-LEAF1B_Ethernet53/1) from 10.20.0.28 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.35 (DC1-LEAF2A_Ethernet53/1) from 10.20.0.34 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.41 (DC1-LEAF2B_Ethernet53/1) from 10.20.0.40 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.20.0.89 (DC1-LEAF3A_Ethernet53/1) from 10.20.0.88 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.20.0.95 (DC1-LEAF3B_Ethernet53/1) from 10.20.0.94 in VRF default | ✅&nbsp;Success | - |
| DC1-SPINE3 | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC1-SPINE3 | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-SPINE3 | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC1-SPINE3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| DC1-SPINE3 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC1-SPINE3 | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC1-SPINE3 | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC1-SPINE3 | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC1-SPINE3 | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC1-SPINE3 | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC1-SPINE3 | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC1-SPINE3 | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC2-LEAF1A | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.8 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.9 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.10 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.60 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.62 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.64 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.65.0.21 VRF: default | ✅&nbsp;Success | - |
| DC2-LEAF1A | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC2-LEAF1A | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC2-LEAF1A | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet49/1 Neighbor: DC2-LEAF1B Neighbor Port: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet50/1 Neighbor: DC2-LEAF1B Neighbor Port: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet51/1 Neighbor: DC2-SPINE1 Neighbor Port: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet52/1 Neighbor: DC2-SPINE2 Neighbor Port: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet53/1 Neighbor: DC2-SPINE3 Neighbor Port: Ethernet1/1 | ✅&nbsp;Success | - |
| DC2-LEAF1A | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;3&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.60 (DC2-SPINE1_Ethernet1/1) from 10.30.0.61 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.62 (DC2-SPINE2_Ethernet1/1) from 10.30.0.63 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.30.0.64 (DC2-SPINE3_Ethernet1/1) from 10.30.0.65 in VRF default | ✅&nbsp;Success | - |
| DC2-LEAF1A | Interfaces | VerifyIllegalLACP | Verifies there are no illegal LACP packets in port channels. | ✅&nbsp;Success | All&nbsp;2&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC2-LEAF1A | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC2-LEAF1A | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;57&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC2-LEAF1A | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;59&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC2-LEAF1A | MLAG | VerifyMlagConfigSanity | Verifies there are no MLAG config-sanity inconsistencies. | ✅&nbsp;Success | - |
| DC2-LEAF1A | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | ✅&nbsp;Success | - |
| DC2-LEAF1A | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC2-LEAF1A | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC2-LEAF1A | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC2-LEAF1A | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC2-LEAF1A | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC2-LEAF1A | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC2-LEAF1A | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC2-LEAF1A | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC2-LEAF1B | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.8 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.9 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.10 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.66 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.68 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.70 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.65.0.20 VRF: default | ✅&nbsp;Success | - |
| DC2-LEAF1B | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC2-LEAF1B | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC2-LEAF1B | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet49/1 Neighbor: DC2-LEAF1A Neighbor Port: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet50/1 Neighbor: DC2-LEAF1A Neighbor Port: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet51/1 Neighbor: DC2-SPINE1 Neighbor Port: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet52/1 Neighbor: DC2-SPINE2 Neighbor Port: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet53/1 Neighbor: DC2-SPINE3 Neighbor Port: Ethernet2/1 | ✅&nbsp;Success | - |
| DC2-LEAF1B | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;3&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.66 (DC2-SPINE1_Ethernet2/1) from 10.30.0.67 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.68 (DC2-SPINE2_Ethernet2/1) from 10.30.0.69 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.30.0.70 (DC2-SPINE3_Ethernet2/1) from 10.30.0.71 in VRF default | ✅&nbsp;Success | - |
| DC2-LEAF1B | Interfaces | VerifyIllegalLACP | Verifies there are no illegal LACP packets in port channels. | ✅&nbsp;Success | All&nbsp;2&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC2-LEAF1B | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC2-LEAF1B | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;57&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC2-LEAF1B | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;59&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC2-LEAF1B | MLAG | VerifyMlagConfigSanity | Verifies there are no MLAG config-sanity inconsistencies. | ✅&nbsp;Success | - |
| DC2-LEAF1B | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | ✅&nbsp;Success | - |
| DC2-LEAF1B | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC2-LEAF1B | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC2-LEAF1B | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC2-LEAF1B | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC2-LEAF1B | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC2-LEAF1B | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC2-LEAF1B | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC2-LEAF1B | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC2-LEAF2A | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.8 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.9 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.10 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.72 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.74 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.76 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.65.0.25 VRF: default | ✅&nbsp;Success | - |
| DC2-LEAF2A | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC2-LEAF2A | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC2-LEAF2A | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet49/1 Neighbor: DC2-LEAF2B Neighbor Port: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet50/1 Neighbor: DC2-LEAF2B Neighbor Port: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet51/1 Neighbor: DC2-SPINE1 Neighbor Port: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet52/1 Neighbor: DC2-SPINE2 Neighbor Port: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet53/1 Neighbor: DC2-SPINE3 Neighbor Port: Ethernet3/1 | ✅&nbsp;Success | - |
| DC2-LEAF2A | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;3&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.72 (DC2-SPINE1_Ethernet3/1) from 10.30.0.73 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.74 (DC2-SPINE2_Ethernet3/1) from 10.30.0.75 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.30.0.76 (DC2-SPINE3_Ethernet3/1) from 10.30.0.77 in VRF default | ✅&nbsp;Success | - |
| DC2-LEAF2A | Interfaces | VerifyIllegalLACP | Verifies there are no illegal LACP packets in port channels. | ✅&nbsp;Success | All&nbsp;2&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC2-LEAF2A | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC2-LEAF2A | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;57&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC2-LEAF2A | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;59&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC2-LEAF2A | MLAG | VerifyMlagConfigSanity | Verifies there are no MLAG config-sanity inconsistencies. | ✅&nbsp;Success | - |
| DC2-LEAF2A | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | ✅&nbsp;Success | - |
| DC2-LEAF2A | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC2-LEAF2A | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC2-LEAF2A | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC2-LEAF2A | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC2-LEAF2A | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC2-LEAF2A | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC2-LEAF2A | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC2-LEAF2A | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC2-LEAF2B | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;7&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.8 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.9 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.2.10 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.78 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.80 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.82 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.65.0.24 VRF: default | ✅&nbsp;Success | - |
| DC2-LEAF2B | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC2-LEAF2B | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC2-LEAF2B | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet49/1 Neighbor: DC2-LEAF2A Neighbor Port: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet50/1 Neighbor: DC2-LEAF2A Neighbor Port: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet51/1 Neighbor: DC2-SPINE1 Neighbor Port: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet52/1 Neighbor: DC2-SPINE2 Neighbor Port: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet53/1 Neighbor: DC2-SPINE3 Neighbor Port: Ethernet4/1 | ✅&nbsp;Success | - |
| DC2-LEAF2B | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;3&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.78 (DC2-SPINE1_Ethernet4/1) from 10.30.0.79 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.80 (DC2-SPINE2_Ethernet4/1) from 10.30.0.81 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.30.0.82 (DC2-SPINE3_Ethernet4/1) from 10.30.0.83 in VRF default | ✅&nbsp;Success | - |
| DC2-LEAF2B | Interfaces | VerifyIllegalLACP | Verifies there are no illegal LACP packets in port channels. | ✅&nbsp;Success | All&nbsp;2&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC2-LEAF2B | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC2-LEAF2B | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;57&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC2-LEAF2B | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;59&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet33 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet34 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet35 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet36 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet37 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet38 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet39 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet40 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet41 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet42 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet43 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet44 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet45 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet46 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet47 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet48 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet49/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet50/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet54/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet55/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet56/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Port-Channel1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Port-Channel491 | ✅&nbsp;Success | - |
| DC2-LEAF2B | MLAG | VerifyMlagConfigSanity | Verifies there are no MLAG config-sanity inconsistencies. | ✅&nbsp;Success | - |
| DC2-LEAF2B | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | ✅&nbsp;Success | - |
| DC2-LEAF2B | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC2-LEAF2B | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC2-LEAF2B | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC2-LEAF2B | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC2-LEAF2B | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC2-LEAF2B | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC2-LEAF2B | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC2-LEAF2B | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC2-SPINE1 | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;8&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.11 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.12 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.13 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.14 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.61 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.67 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.73 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.30.0.79 VRF: default | ✅&nbsp;Success | - |
| DC2-SPINE1 | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC2-SPINE1 | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC2-SPINE1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;4&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet1/1 Neighbor: DC2-LEAF1A Neighbor Port: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet2/1 Neighbor: DC2-LEAF1B Neighbor Port: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet3/1 Neighbor: DC2-LEAF2A Neighbor Port: Ethernet51/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet4/1 Neighbor: DC2-LEAF2B Neighbor Port: Ethernet51/1 | ✅&nbsp;Success | - |
| DC2-SPINE1 | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;4&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.61 (DC2-LEAF1A_Ethernet51/1) from 10.30.0.60 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.67 (DC2-LEAF1B_Ethernet51/1) from 10.30.0.66 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.73 (DC2-LEAF2A_Ethernet51/1) from 10.30.0.72 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.30.0.79 (DC2-LEAF2B_Ethernet51/1) from 10.30.0.78 in VRF default | ✅&nbsp;Success | - |
| DC2-SPINE1 | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC2-SPINE1 | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC2-SPINE1 | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC2-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| DC2-SPINE1 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC2-SPINE1 | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC2-SPINE1 | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC2-SPINE1 | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC2-SPINE1 | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC2-SPINE1 | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC2-SPINE1 | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC2-SPINE1 | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC2-SPINE2 | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;8&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.11 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.12 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.13 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.14 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.63 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.69 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.75 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.30.0.81 VRF: default | ✅&nbsp;Success | - |
| DC2-SPINE2 | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC2-SPINE2 | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC2-SPINE2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;4&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet1/1 Neighbor: DC2-LEAF1A Neighbor Port: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet2/1 Neighbor: DC2-LEAF1B Neighbor Port: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet3/1 Neighbor: DC2-LEAF2A Neighbor Port: Ethernet52/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet4/1 Neighbor: DC2-LEAF2B Neighbor Port: Ethernet52/1 | ✅&nbsp;Success | - |
| DC2-SPINE2 | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;4&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.63 (DC2-LEAF1A_Ethernet52/1) from 10.30.0.62 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.69 (DC2-LEAF1B_Ethernet52/1) from 10.30.0.68 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.75 (DC2-LEAF2A_Ethernet52/1) from 10.30.0.74 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.30.0.81 (DC2-LEAF2B_Ethernet52/1) from 10.30.0.80 in VRF default | ✅&nbsp;Success | - |
| DC2-SPINE2 | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC2-SPINE2 | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC2-SPINE2 | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC2-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| DC2-SPINE2 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC2-SPINE2 | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC2-SPINE2 | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC2-SPINE2 | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC2-SPINE2 | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC2-SPINE2 | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC2-SPINE2 | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC2-SPINE2 | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
| DC2-SPINE3 | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ✅&nbsp;Success | All&nbsp;8&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.11 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.12 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.13 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.14 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.65 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.71 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.77 VRF: default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.30.0.83 VRF: default | ✅&nbsp;Success | - |
| DC2-SPINE3 | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC2-SPINE3 | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
| DC2-SPINE3 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ✅&nbsp;Success | All&nbsp;4&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet1/1 Neighbor: DC2-LEAF1A Neighbor Port: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet2/1 Neighbor: DC2-LEAF1B Neighbor Port: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet3/1 Neighbor: DC2-LEAF2A Neighbor Port: Ethernet53/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet4/1 Neighbor: DC2-LEAF2B Neighbor Port: Ethernet53/1 | ✅&nbsp;Success | - |
| DC2-SPINE3 | Connectivity | VerifyReachability | Verifies point-to-point reachability between Ethernet interfaces. | ✅&nbsp;Success | All&nbsp;4&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.65 (DC2-LEAF1A_Ethernet53/1) from 10.30.0.64 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.71 (DC2-LEAF1B_Ethernet53/1) from 10.30.0.70 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Destination 10.30.0.77 (DC2-LEAF2A_Ethernet53/1) from 10.30.0.76 in VRF default | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Destination 10.30.0.83 (DC2-LEAF2B_Ethernet53/1) from 10.30.0.82 in VRF default | ✅&nbsp;Success | - |
| DC2-SPINE3 | Interfaces | VerifyInterfaceErrDisabled | Verifies there are no interfaces in the errdisabled state. | ✅&nbsp;Success | - |
| DC2-SPINE3 | Interfaces | VerifyInterfaceErrors | Verifies that the interfaces error counters are equal to zero. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC2-SPINE3 | Interfaces | VerifyInterfaceUtilization | Verifies that the utilization of interfaces is below a certain threshold. | ✅&nbsp;Success | All&nbsp;33&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet5/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet6/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet7/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet8/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet9/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet10/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet11/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet12/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet13/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet14/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet15/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet16/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet17/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet18/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet19/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet20/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet21/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet22/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet23/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet24/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet25/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet26/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet27/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet28/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet29/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet30/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet31/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet32/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Management1 | ✅&nbsp;Success | - |
| DC2-SPINE3 | Interfaces | VerifyInterfacesStatus | Verifies the operational states of specified interfaces to ensure they match expected configurations. | ✅&nbsp;Success | All&nbsp;5&nbsp;checks&nbsp;passed |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet1/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet2/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet3/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;├──&nbsp;Interface: Ethernet4/1 | ✅&nbsp;Success | - |
| | | | &nbsp;&nbsp;└──&nbsp;Interface: Loopback0 | ✅&nbsp;Success | - |
| DC2-SPINE3 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | ✅&nbsp;Success | - |
| DC2-SPINE3 | STP | VerifySTPCounters | Verifies there is no errors in STP BPDU packets. | ✅&nbsp;Success | - |
| DC2-SPINE3 | System | VerifyAgentLogs | Verifies there are no agent crash reports. | ✅&nbsp;Success | - |
| DC2-SPINE3 | System | VerifyCoredump | Verifies there are no core dump files. | ✅&nbsp;Success | - |
| DC2-SPINE3 | System | VerifyFileSystemUtilization | Verifies that no partition is utilizing more than 75% of its disk space. | ✅&nbsp;Success | - |
| DC2-SPINE3 | System | VerifyMaintenance | Verifies that the device is not currently under or entering maintenance. | ✅&nbsp;Success | - |
| DC2-SPINE3 | System | VerifyMemoryUtilization | Verifies whether the memory utilization is below 75%. | ✅&nbsp;Success | - |
| DC2-SPINE3 | System | VerifyReloadCause | Verifies the last reload cause of the device. | ✅&nbsp;Success | - |
