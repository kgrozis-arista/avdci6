# DC1-LEAF3A

## Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [NTP](#ntp)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [Enable Password](#enable-password)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
- [MLAG](#mlag)
  - [MLAG Summary](#mlag-summary)
  - [MLAG Device Configuration](#mlag-device-configuration)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Device Configuration](#internal-vlan-allocation-policy-device-configuration)
- [VLANs](#vlans)
  - [VLANs Summary](#vlans-summary)
  - [VLANs Device Configuration](#vlans-device-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Port-Channel Interfaces](#port-channel-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
  - [VXLAN Interface](#vxlan-interface)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [Virtual Router MAC Address](#virtual-router-mac-address)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [Router OSPF](#router-ospf)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
- [Filters](#filters)
  - [Prefix-lists](#prefix-lists)
  - [Route-maps](#route-maps)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)
- [Virtual Source NAT](#virtual-source-nat)
  - [Virtual Source NAT Summary](#virtual-source-nat-summary)
  - [Virtual Source NAT Configuration](#virtual-source-nat-configuration)

## Management

### Management Interfaces

#### Management Interfaces Summary

##### IPv4

| Management Interface | Description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | OOB_MANAGEMENT | oob | MGMT | 192.168.0.17/24 | 192.168.0.5 |

##### IPv6

| Management Interface | Description | Type | VRF | IPv6 Address | IPv6 Gateway | ND RA Disabled | ND RA RX Accept | ND Managed Config Flag | ND Other Config Flag | ND Cache | ND RA DNS Servers |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ | -------------- | --------------- | ---------------------- | -------------------- | -------- | ----------------- |
| Management1 | OOB_MANAGEMENT | oob | MGMT | - | - | - | - | - | - | - | - |

#### Management Interfaces Device Configuration

```eos
!
interface Management1
   description OOB_MANAGEMENT
   no shutdown
   vrf MGMT
   ip address 192.168.0.17/24
```

### NTP

#### NTP Summary

##### NTP Local Interface

| Interface | VRF |
| --------- | --- |
| Management1 | MGMT |

##### NTP Servers

NTP servers VRF: MGMT

| Server | Preferred | Burst | iBurst | Version | Min Poll | Max Poll | Local-interface | Source Address | Key |
| ------ | --------- | ----- | ------ | ------- | -------- | -------- | --------------- | -------------- | --- |
| 216.239.35.4 | True | - | - | - | - | - | - | - | - |
| 216.239.35.8 | - | - | - | - | - | - | - | - | - |

#### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1
ntp server vrf MGMT 216.239.35.4 prefer
ntp server vrf MGMT 216.239.35.8
```

### Management API HTTP

#### Management API HTTP Summary

| HTTP | HTTPS | UNIX-Socket | Default Services | Session Timeout |
| ---- | ----- | ----------- | ---------------- | --------------- |
| False | True | - | - | 1440 minutes |

#### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT | - | - |

#### Management API HTTP Device Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf MGMT
      no shutdown
```

## Authentication

### Local Users

#### Local Users Summary

| User | Privilege | Role | Disabled | Shell |
| ---- | --------- | ---- | -------- | ----- |
| admin | 15 | network-admin | False | - |
| ansible | 15 | network-admin | False | - |
| cvpadmin | 15 | network-admin | False | - |

#### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin secret sha512 <removed>
username ansible privilege 15 role network-admin secret sha512 <removed>
username cvpadmin privilege 15 role network-admin secret sha512 <removed>
```

### Enable Password

Enable password has been disabled

## Monitoring

### TerminAttr Daemon

#### TerminAttr Daemon Summary

| CV Compression | CloudVision Servers | VRF | Authentication | Smash Excludes | Ingest Exclude | Bypass AAA |
| -------------- | ------------------- | --- | -------------- | -------------- | -------------- | ---------- |
| gzip | 192.168.0.5:9910 | MGMT | token,/tmp/token | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | False |

#### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=192.168.0.5:9910 -cvauth=token,/tmp/token -cvvrf=MGMT -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs -cvsourceintf=Management1
   no shutdown
```

## MLAG

### MLAG Summary

| Domain-id | Local-interface | Peer-address | Peer-link |
| --------- | --------------- | ------------ | --------- |
| DC1_LEAF3 | Vlan4094 | 10.50.0.29 | Port-Channel491 |

Dual primary detection is disabled.

### MLAG Device Configuration

```eos
!
mlag configuration
   domain-id DC1_LEAF3
   local-interface Vlan4094
   peer-address 10.50.0.29
   peer-link Port-Channel491
   reload-delay mlag 300
   reload-delay non-mlag 330
```

## Spanning Tree

### Spanning Tree Summary

STP mode: **none**

#### Global Spanning-Tree Settings

- Spanning Tree disabled for VLANs: **4093-4094**

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode none
no spanning-tree vlan-id 4093-4094
```

## Internal VLAN Allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ----------------- | --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Device Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

## VLANs

### VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 10 | VRF_Customer2_VLAN10 | - |
| 20 | VRF_Customer2_VLAN20 | - |
| 30 | VLAN30_VRF_Customer1 | - |
| 50 | VLAN50_L2_Only | - |
| 3099 | MLAG_L3_VRF_Customer2 | MLAG |
| 3299 | MLAG_L3_VRF_Customer1 | MLAG |
| 4093 | MLAG_L3 | MLAG |
| 4094 | MLAG | MLAG |

### VLANs Device Configuration

```eos
!
vlan 10
   name VRF_Customer2_VLAN10
!
vlan 20
   name VRF_Customer2_VLAN20
!
vlan 30
   name VLAN30_VRF_Customer1
!
vlan 50
   name VLAN50_L2_Only
!
vlan 3099
   name MLAG_L3_VRF_Customer2
   trunk group MLAG
!
vlan 3299
   name MLAG_L3_VRF_Customer1
   trunk group MLAG
!
vlan 4093
   name MLAG_L3
   trunk group MLAG
!
vlan 4094
   name MLAG
   trunk group MLAG
```

## Interfaces

### Ethernet Interfaces

#### Ethernet Interfaces Summary

##### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet49/1 | MLAG_DC1-LEAF3B_Ethernet49/1 | *trunk | *- | *- | *MLAG | 491 |
| Ethernet50/1 | MLAG_DC1-LEAF3B_Ethernet50/1 | *trunk | *- | *- | *MLAG | 491 |

*Inherited from Port-Channel Interface

##### IPv4

| Interface | Description | Channel Group | IP Address | VRF | MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | ------------- | ---------- | --- | --- | -------- | ------ | ------- |
| Ethernet51/1 | P2P_DC1-SPINE1_Ethernet5/1 | - | 10.20.0.85/31 | default | 1500 | False | - | - |
| Ethernet52/1 | P2P_DC1-SPINE2_Ethernet5/1 | - | 10.20.0.87/31 | default | 1500 | False | - | - |
| Ethernet53/1 | P2P_DC1-SPINE3_Ethernet5/1 | - | 10.20.0.89/31 | default | 1500 | False | - | - |

#### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet49/1
   description MLAG_DC1-LEAF3B_Ethernet49/1
   no shutdown
   channel-group 491 mode active
!
interface Ethernet50/1
   description MLAG_DC1-LEAF3B_Ethernet50/1
   no shutdown
   channel-group 491 mode active
!
interface Ethernet51/1
   description P2P_DC1-SPINE1_Ethernet5/1
   no shutdown
   mtu 1500
   no switchport
   ip address 10.20.0.85/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet52/1
   description P2P_DC1-SPINE2_Ethernet5/1
   no shutdown
   mtu 1500
   no switchport
   ip address 10.20.0.87/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet53/1
   description P2P_DC1-SPINE3_Ethernet5/1
   no shutdown
   mtu 1500
   no switchport
   ip address 10.20.0.89/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
```

### Port-Channel Interfaces

#### Port-Channel Interfaces Summary

##### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | --------------------- | ------------------ | ------- | -------- |
| Port-Channel491 | MLAG_DC1-LEAF3B_Port-Channel491 | trunk | - | - | MLAG | - | - | - | - |

#### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel491
   description MLAG_DC1-LEAF3B_Port-Channel491
   no shutdown
   switchport mode trunk
   switchport trunk group MLAG
   switchport
```

### Loopback Interfaces

#### Loopback Interfaces Summary

##### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | ROUTER_ID | default | 10.10.1.15/32 |
| Loopback1 | VXLAN_TUNNEL_SOURCE | default | 101.1.1.15/32 |
| Loopback6 | DIAG_VRF_Customer2 | Customer2 | 9.9.1.15/32 |
| Loopback7 | DIAG_VRF_Customer1 | Customer1 | 9.9.2.15/32 |

##### IPv6

| Interface | Description | VRF | IPv6 Addresses |
| --------- | ----------- | --- | -------------- |
| Loopback0 | ROUTER_ID | default | - |
| Loopback1 | VXLAN_TUNNEL_SOURCE | default | - |
| Loopback6 | DIAG_VRF_Customer2 | Customer2 | - |
| Loopback7 | DIAG_VRF_Customer1 | Customer1 | - |

#### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description ROUTER_ID
   no shutdown
   ip address 10.10.1.15/32
   ip ospf area 0.0.0.0
!
interface Loopback1
   description VXLAN_TUNNEL_SOURCE
   no shutdown
   ip address 101.1.1.15/32
   ip ospf area 0.0.0.0
!
interface Loopback6
   description DIAG_VRF_Customer2
   no shutdown
   vrf Customer2
   ip address 9.9.1.15/32
!
interface Loopback7
   description DIAG_VRF_Customer1
   no shutdown
   vrf Customer1
   ip address 9.9.2.15/32
```

### VLAN Interfaces

#### VLAN Interfaces Summary

| Interface | Description | VRF | MTU | Shutdown |
| --------- | ----------- | --- | --- | -------- |
| Vlan10 | VRF_Customer2_VLAN10 | Customer2 | - | False |
| Vlan20 | VRF_Customer2_VLAN20 | Customer2 | - | False |
| Vlan30 | VLAN30_VRF_Customer1 | Customer1 | - | False |
| Vlan3099 | MLAG_L3_VRF_Customer2 | Customer2 | 1500 | False |
| Vlan3299 | MLAG_L3_VRF_Customer1 | Customer1 | 1500 | False |
| Vlan4093 | MLAG_L3 | default | 1500 | False |
| Vlan4094 | MLAG | default | 1500 | False |

##### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ------ | ------- |
| Vlan10 | Customer2 | - | 10.10.10.1/24 | - | - | - |
| Vlan20 | Customer2 | - | 20.20.20.1/24 | - | - | - |
| Vlan30 | Customer1 | - | 30.30.30.1/24 | - | - | - |
| Vlan3099 | Customer2 | 10.55.0.28/31 | - | - | - | - |
| Vlan3299 | Customer1 | 10.55.0.28/31 | - | - | - | - |
| Vlan4093 | default | 10.55.0.28/31 | - | - | - | - |
| Vlan4094 | default | 10.50.0.28/31 | - | - | - | - |

##### OSPF

| Interface | OSPF Network Point to Point | OSPF Area | OSPF Cost | OSPF Authentication | IPv6 OSPF Process ID | IPv6 OSPF Area | IPv6 OSPF Network Point to Point |
| --------- | --------------------------- | --------- | --------- | ------------------- | -------------------- | -------------- | -------------------------------- |
| Vlan4093 | True | 0.0.0.0 | - | - | - | - | - |

#### VLAN Interfaces Device Configuration

```eos
!
interface Vlan10
   description VRF_Customer2_VLAN10
   no shutdown
   vrf Customer2
   ip address virtual 10.10.10.1/24
!
interface Vlan20
   description VRF_Customer2_VLAN20
   no shutdown
   vrf Customer2
   ip address virtual 20.20.20.1/24
!
interface Vlan30
   description VLAN30_VRF_Customer1
   no shutdown
   vrf Customer1
   ip address virtual 30.30.30.1/24
!
interface Vlan3099
   description MLAG_L3_VRF_Customer2
   no shutdown
   mtu 1500
   vrf Customer2
   ip address 10.55.0.28/31
!
interface Vlan3299
   description MLAG_L3_VRF_Customer1
   no shutdown
   mtu 1500
   vrf Customer1
   ip address 10.55.0.28/31
!
interface Vlan4093
   description MLAG_L3
   no shutdown
   mtu 1500
   ip address 10.55.0.28/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Vlan4094
   description MLAG
   no shutdown
   mtu 1500
   no autostate
   ip address 10.50.0.28/31
```

### VXLAN Interface

#### VXLAN Interface Summary

| Setting | Value |
| ------- | ----- |
| Source Interface | Loopback1 |
| UDP port | 4789 |
| EVPN MLAG Shared Router MAC | mlag-system-id |

##### VLAN to VNI, Flood List and Multicast Group Mappings

| VLAN | VNI | Flood List | Multicast Group |
| ---- | --- | ---------- | --------------- |
| 10 | 10010 | - | - |
| 20 | 10020 | - | - |
| 30 | 20030 | - | - |
| 50 | 10050 | - | - |

##### VRF to VNI and Multicast Group Mappings

| VRF | VNI | Overlay Multicast Group to Encap Mappings |
| --- | --- | ----------------------------------------- |
| Customer1 | 300 | - |
| Customer2 | 100 | - |

#### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   description DC1-LEAF3A_VTEP
   vxlan source-interface Loopback1
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
   vxlan vlan 10 vni 10010
   vxlan vlan 20 vni 10020
   vxlan vlan 30 vni 20030
   vxlan vlan 50 vni 10050
   vxlan vrf Customer1 vni 300
   vxlan vrf Customer2 vni 100
```

## Routing

### Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

### Virtual Router MAC Address

#### Virtual Router MAC Address Summary

Virtual Router MAC Address: 00:1c:73:00:00:99

#### Virtual Router MAC Address Device Configuration

```eos
!
ip virtual-router mac-address 00:1c:73:00:00:99
```

### IP Routing

#### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | True |
| Customer1 | True |
| Customer2 | True |
| MGMT | False |

#### IP Routing Device Configuration

```eos
!
ip routing
ip routing vrf Customer1
ip routing vrf Customer2
no ip routing vrf MGMT
```

### IPv6 Routing

#### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |
| Customer1 | false |
| Customer2 | false |
| MGMT | false |

### Static Routes

#### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP | Exit interface | Administrative Distance | Tag | Route Name | Metric |
| --- | ------------------ | ----------- | -------------- | ----------------------- | --- | ---------- | ------ |
| MGMT | 0.0.0.0/0 | 192.168.0.5 | - | 1 | - | - | - |

#### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 192.168.0.5
```

### Router OSPF

#### Router OSPF Summary

| Process ID | Router ID | Default Passive Interface | No Passive Interface | BFD | Max LSA | Default Information Originate | Log Adjacency Changes Detail | Auto Cost Reference Bandwidth | Maximum Paths | MPLS LDP Sync Default | Distribute List In |
| ---------- | --------- | ------------------------- | -------------------- | --- | ------- | ----------------------------- | ---------------------------- | ----------------------------- | ------------- | --------------------- | ------------------ |
| 100 | 10.10.1.15 | enabled | Ethernet51/1<br>Ethernet52/1<br>Ethernet53/1<br>Vlan4093 | disabled | 12000 | disabled | disabled | - | - | - | - |

#### OSPF Interfaces

| Interface | Area | Cost | Point To Point |
| -------- | -------- | -------- | -------- |
| Ethernet51/1 | 0.0.0.0 | - | True |
| Ethernet52/1 | 0.0.0.0 | - | True |
| Ethernet53/1 | 0.0.0.0 | - | True |
| Vlan4093 | 0.0.0.0 | - | True |
| Loopback0 | 0.0.0.0 | - | - |
| Loopback1 | 0.0.0.0 | - | - |

#### Router OSPF Device Configuration

```eos
!
router ospf 100
   router-id 10.10.1.15
   passive-interface default
   no passive-interface Ethernet51/1
   no passive-interface Ethernet52/1
   no passive-interface Ethernet53/1
   no passive-interface Vlan4093
   max-lsa 12000
   graceful-restart
```

### Router BGP

ASN Notation: asplain

#### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65103 | 10.10.1.15 |

| BGP Tuning |
| ---------- |
| timers bgp 5 15 |
| neighbor default send-community |
| neighbor default send-community extended |
| no bgp default ipv4-unicast |
| maximum-paths 4 |

#### Router BGP Peer Groups

##### EVPN-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Source | Loopback0 |
| BFD | True |
| Ebgp multihop | 3 |
| Send community | all |
| Maximum routes | 0 (no limit) |

##### MLAG-IPv4-UNDERLAY-PEER

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote AS | 65103 |
| Next-hop self | True |
| Send community | all |
| Maximum routes | 256000 |

#### BGP Neighbors

| Neighbor | Remote AS | VRF | Shutdown | Send-community | Maximum-routes | Allowas-in | BFD | RIB Pre-Policy Retain | Route-Reflector Client | Passive | TTL Max Hops |
| -------- | --------- | --- | -------- | -------------- | -------------- | ---------- | --- | --------------------- | ---------------------- | ------- | ------------ |
| 10.10.0.1 | 65000 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - | - |
| 10.10.0.2 | 65000 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - | - |
| 10.10.0.3 | 65000 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - | - |
| 10.55.0.29 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | Customer1 | - | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | - | - | - | - | - | - |
| 10.55.0.29 | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | Customer2 | - | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | Inherited from peer group MLAG-IPv4-UNDERLAY-PEER | - | - | - | - | - | - |

#### Router BGP EVPN Address Family

##### EVPN Peer Groups

| Peer Group | Activate | Route-map In | Route-map Out | Peer-tag In | Peer-tag Out | Encapsulation | Next-hop-self Source Interface |
| ---------- | -------- | ------------ | ------------- | ----------- | ------------ | ------------- | ------------------------------ |
| EVPN-OVERLAY-PEERS | True | - | - | - | - | default | - |

##### EVPN DCI Gateway Summary

| Settings | Value |
| -------- | ----- |
| L3 Gateway Configured | True |
| L3 Gateway Inter-domain | True |

#### Router BGP VLANs

| VLAN | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute |
| ---- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ |
| 10 | 10.10.1.15:10010 | 10010:10010<br>remote 10010:10010 | - | - | learned |
| 20 | 10.10.1.15:10020 | 10020:10020<br>remote 10020:10020 | - | - | learned |
| 30 | 10.10.1.15:20030 | 20030:20030<br>remote 20030:20030 | - | - | learned |
| 50 | 10.10.1.15:10050 | 10050:10050<br>remote 10050:10050 | - | - | learned |

#### Router BGP VRFs

| VRF | Route-Distinguisher | Redistribute | Graceful Restart |
| --- | ------------------- | ------------ | ---------------- |
| Customer1 | 10.10.1.15:300 | connected | - |
| Customer2 | 10.10.1.15:100 | connected | - |

#### Router BGP Device Configuration

```eos
!
router bgp 65103
   router-id 10.10.1.15
   no bgp default ipv4-unicast
   maximum-paths 4
   timers bgp 5 15
   neighbor default send-community
   neighbor default send-community extended
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor MLAG-IPv4-UNDERLAY-PEER peer group
   neighbor MLAG-IPv4-UNDERLAY-PEER remote-as 65103
   neighbor MLAG-IPv4-UNDERLAY-PEER next-hop-self
   neighbor MLAG-IPv4-UNDERLAY-PEER description DC1-LEAF3B
   neighbor MLAG-IPv4-UNDERLAY-PEER route-map RM-MLAG-PEER-IN in
   neighbor MLAG-IPv4-UNDERLAY-PEER send-community
   neighbor MLAG-IPv4-UNDERLAY-PEER maximum-routes 256000
   neighbor 10.10.0.1 peer group EVPN-OVERLAY-PEERS
   neighbor 10.10.0.1 remote-as 65000
   neighbor 10.10.0.1 description DC1-SPINE1_Loopback0
   neighbor 10.10.0.2 peer group EVPN-OVERLAY-PEERS
   neighbor 10.10.0.2 remote-as 65000
   neighbor 10.10.0.2 description DC1-SPINE2_Loopback0
   neighbor 10.10.0.3 peer group EVPN-OVERLAY-PEERS
   neighbor 10.10.0.3 remote-as 65000
   neighbor 10.10.0.3 description DC1-SPINE3_Loopback0
   !
   vlan 10
      rd 10.10.1.15:10010
      rd evpn domain remote 10.10.1.15:10010
      route-target both 10010:10010
      route-target import export evpn domain remote 10010:10010
      redistribute learned
   !
   vlan 20
      rd 10.10.1.15:10020
      rd evpn domain remote 10.10.1.15:10020
      route-target both 10020:10020
      route-target import export evpn domain remote 10020:10020
      redistribute learned
   !
   vlan 30
      rd 10.10.1.15:20030
      rd evpn domain remote 10.10.1.15:20030
      route-target both 20030:20030
      route-target import export evpn domain remote 20030:20030
      redistribute learned
   !
   vlan 50
      rd 10.10.1.15:10050
      rd evpn domain remote 10.10.1.15:10050
      route-target both 10050:10050
      route-target import export evpn domain remote 10050:10050
      redistribute learned
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
      neighbor default next-hop-self received-evpn-routes route-type ip-prefix inter-domain
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor MLAG-IPv4-UNDERLAY-PEER activate
   !
   vrf Customer1
      rd 10.10.1.15:300
      route-target import evpn 300:300
      route-target export evpn 300:300
      router-id 10.10.1.15
      neighbor 10.55.0.29 peer group MLAG-IPv4-UNDERLAY-PEER
      neighbor 10.55.0.29 description DC1-LEAF3B_Vlan3299
      redistribute connected route-map RM-CONN-2-BGP-VRFS
   !
   vrf Customer2
      rd 10.10.1.15:100
      route-target import evpn 100:100
      route-target export evpn 100:100
      router-id 10.10.1.15
      neighbor 10.55.0.29 peer group MLAG-IPv4-UNDERLAY-PEER
      neighbor 10.55.0.29 description DC1-LEAF3B_Vlan3099
      redistribute connected route-map RM-CONN-2-BGP-VRFS
```

## BFD

### Router BFD

#### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 300 | 300 | 3 |

#### Router BFD Device Configuration

```eos
!
router bfd
   multihop interval 300 min-rx 300 multiplier 3
```

## Multicast

### IP IGMP Snooping

#### IP IGMP Snooping Summary

| IGMP Snooping | Fast Leave | Interface Restart Query | Proxy | Restart Query Interval | Robustness Variable |
| ------------- | ---------- | ----------------------- | ----- | ---------------------- | ------------------- |
| Enabled | - | - | - | - | - |

#### IP IGMP Snooping Device Configuration

```eos
```

## Filters

### Prefix-lists

#### Prefix-lists Summary

##### PL-MLAG-PEER-VRFS

| Sequence | Action |
| -------- | ------ |
| 10 | permit 10.55.0.28/31 |

#### Prefix-lists Device Configuration

```eos
!
ip prefix-list PL-MLAG-PEER-VRFS
   seq 10 permit 10.55.0.28/31
```

### Route-maps

#### Route-maps Summary

##### RM-CONN-2-BGP-VRFS

| Sequence | Type | Match | Set | Sub-Route-Map | Continue |
| -------- | ---- | ----- | --- | ------------- | -------- |
| 10 | deny | ip address prefix-list PL-MLAG-PEER-VRFS | - | - | - |
| 20 | permit | - | - | - | - |

##### RM-MLAG-PEER-IN

| Sequence | Type | Match | Set | Sub-Route-Map | Continue |
| -------- | ---- | ----- | --- | ------------- | -------- |
| 10 | permit | - | origin incomplete | - | - |

#### Route-maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP-VRFS deny 10
   match ip address prefix-list PL-MLAG-PEER-VRFS
!
route-map RM-CONN-2-BGP-VRFS permit 20
!
route-map RM-MLAG-PEER-IN permit 10
   description Make routes learned over MLAG Peer-link less preferred on spines to ensure optimal routing
   set origin incomplete
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| Customer1 | enabled |
| Customer2 | enabled |
| MGMT | disabled |

### VRF Instances Device Configuration

```eos
!
vrf instance Customer1
!
vrf instance Customer2
!
vrf instance MGMT
```

## Virtual Source NAT

### Virtual Source NAT Summary

| Source NAT VRF | Source NAT IPv4 Address | Source NAT IPv6 Address |
| -------------- | ----------------------- | ----------------------- |
| Customer1 | 9.9.2.15 | - |
| Customer2 | 9.9.1.15 | - |

### Virtual Source NAT Configuration

```eos
!
ip address virtual source-nat vrf Customer1 address 9.9.2.15
ip address virtual source-nat vrf Customer2 address 9.9.1.15
```
