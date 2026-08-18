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
| 68 | 60 | 0 | 8 | 0 |

### 🔌 Summary Totals Device Under Test <a id="summary-totals-device-under-test"></a>

| Device | Total Tests | ✅&nbsp;Success | ⏭️&nbsp;Skipped | ❌&nbsp;Failure | ❗&nbsp;Error | Categories Skipped | Categories Failed |
| :- | :- | :- | :- | :- | :- | :- | :- |
| **DC1-SPINE1** | 17 | 15 | 0 | 2 | 0 | - | BGP, Connectivity |
| **DC1-SPINE3** | 17 | 15 | 0 | 2 | 0 | - | BGP, Connectivity |
| **DC2-SPINE1** | 17 | 15 | 0 | 2 | 0 | - | BGP, Connectivity |
| **DC2-SPINE2** | 17 | 15 | 0 | 2 | 0 | - | BGP, Connectivity |

### 🗂️ Summary Totals Per Category <a id="summary-totals-per-category"></a>

| Test Category | Total Tests | ✅&nbsp;Success | ⏭️&nbsp;Skipped | ❌&nbsp;Failure | ❗&nbsp;Error |
| :- | :- | :- | :- | :- | :- |
| **BGP** | 4 | 0 | 0 | 4 | 0 |
| **Configuration** | 8 | 8 | 0 | 0 | 0 |
| **Connectivity** | 8 | 4 | 0 | 4 | 0 |
| **Interfaces** | 16 | 16 | 0 | 0 | 0 |
| **Routing** | 4 | 4 | 0 | 0 | 0 |
| **STP** | 4 | 4 | 0 | 0 | 0 |
| **System** | 24 | 24 | 0 | 0 | 0 |

## 🧪 Test Results <a id="test-results"></a>

| Device | Categories | Test | Description | Result | Messages |
| :- | :- | :- | :- | :- | :- |
| DC1-SPINE1 | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ❌&nbsp;Failure | 12/12&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.4 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.5 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.6 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.7 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.15 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.16 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.19 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Connect |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.25 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.31 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.37 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.85 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.20.0.91 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| DC1-SPINE1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ❌&nbsp;Failure | 6/6&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet1/1 Neighbor: DC1-LEAF1A Neighbor Port: Ethernet51/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet2/1 Neighbor: DC1-LEAF1B Neighbor Port: Ethernet51/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet3/1 Neighbor: DC1-LEAF2A Neighbor Port: Ethernet51/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet4/1 Neighbor: DC1-LEAF2B Neighbor Port: Ethernet51/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet5/1 Neighbor: DC1-LEAF3A Neighbor Port: Ethernet51/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet6/1 Neighbor: DC1-LEAF3B Neighbor Port: Ethernet51/1 | ❌&nbsp;Failure | No LLDP neighbors |
| DC1-SPINE3 | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ❌&nbsp;Failure | 12/12&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.4 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.5 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.6 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.7 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.15 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.1.16 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.23 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.29 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.35 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.41 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.20.0.89 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.20.0.95 VRF: default | ❌&nbsp;Failure | Not found |
| DC1-SPINE3 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ❌&nbsp;Failure | 6/6&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet1/1 Neighbor: DC1-LEAF1A Neighbor Port: Ethernet53/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet2/1 Neighbor: DC1-LEAF1B Neighbor Port: Ethernet53/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet3/1 Neighbor: DC1-LEAF2A Neighbor Port: Ethernet53/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet4/1 Neighbor: DC1-LEAF2B Neighbor Port: Ethernet53/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet5/1 Neighbor: DC1-LEAF3A Neighbor Port: Ethernet53/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet6/1 Neighbor: DC1-LEAF3B Neighbor Port: Ethernet53/1 | ❌&nbsp;Failure | No LLDP neighbors |
| DC2-SPINE1 | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ❌&nbsp;Failure | 8/8&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.11 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.12 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.13 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.14 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.61 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.67 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.73 VRF: default | ❌&nbsp;Failure | Not found |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.30.0.79 VRF: default | ❌&nbsp;Failure | Not found |
| DC2-SPINE1 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ❌&nbsp;Failure | 4/4&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet1/1 Neighbor: DC2-LEAF1A Neighbor Port: Ethernet51/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet2/1 Neighbor: DC2-LEAF1B Neighbor Port: Ethernet51/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet3/1 Neighbor: DC2-LEAF2A Neighbor Port: Ethernet51/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet4/1 Neighbor: DC2-LEAF2B Neighbor Port: Ethernet51/1 | ❌&nbsp;Failure | No LLDP neighbors |
| DC2-SPINE2 | BGP | VerifyBGPPeerSession | Verifies the session state of BGP peers. | ❌&nbsp;Failure | 8/8&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.11 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.12 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.13 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.10.3.14 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.63 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.69 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;├──&nbsp;Peer: 10.30.0.75 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| | | | &nbsp;&nbsp;└──&nbsp;Peer: 10.30.0.81 VRF: default | ❌&nbsp;Failure | Incorrect session state - Expected: Established Actual: Active |
| DC2-SPINE2 | Connectivity | VerifyLLDPNeighbors | Verifies the connection status of the specified LLDP (Link Layer Discovery Protocol) neighbors. | ❌&nbsp;Failure | 4/4&nbsp;checks&nbsp;failed |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet1/1 Neighbor: DC2-LEAF1A Neighbor Port: Ethernet52/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet2/1 Neighbor: DC2-LEAF1B Neighbor Port: Ethernet52/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;├──&nbsp;Port: Ethernet3/1 Neighbor: DC2-LEAF2A Neighbor Port: Ethernet52/1 | ❌&nbsp;Failure | No LLDP neighbors |
| | | | &nbsp;&nbsp;└──&nbsp;Port: Ethernet4/1 Neighbor: DC2-LEAF2B Neighbor Port: Ethernet52/1 | ❌&nbsp;Failure | No LLDP neighbors |
| DC1-SPINE1 | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-SPINE1 | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
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
| DC1-SPINE3 | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC1-SPINE3 | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
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
| DC2-SPINE1 | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC2-SPINE1 | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
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
| DC2-SPINE2 | Configuration | VerifyRunningConfigDiffs | Verifies there is no difference between the running-config and the startup-config. | ✅&nbsp;Success | - |
| DC2-SPINE2 | Configuration | VerifyZeroTouch | Verifies ZeroTouch is disabled. | ✅&nbsp;Success | - |
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
