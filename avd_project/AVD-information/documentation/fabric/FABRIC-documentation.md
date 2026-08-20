# FABRIC

## Table of Contents

- [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Switches with inband Management IP](#fabric-switches-with-inband-management-ip)
- [Fabric Topology](#fabric-topology)
- [Fabric IP Allocation](#fabric-ip-allocation)
  - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Loopback Interfaces (BGP EVPN Peering)](#loopback-interfaces-bgp-evpn-peering)
  - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
  - [VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-vteps-only)
  - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision | Serial Number |
| --- | ---- | ---- | ------------- | -------- | -------------------------- | ------------- |
| DC1 | l3leaf | DC1-LEAF1A | 192.168.0.13/24 | vEOS-lab | Provisioned | - |
| DC1 | l3leaf | DC1-LEAF1B | 192.168.0.14/24 | vEOS-lab | Provisioned | - |
| DC1 | l3leaf | DC1-LEAF2A | 192.168.0.15/24 | vEOS-lab | Provisioned | - |
| DC1 | l3leaf | DC1-LEAF2B | 192.168.0.16/24 | vEOS-lab | Provisioned | - |
| DC1 | l3leaf | DC1-LEAF3A | 192.168.0.17/24 | vEOS-lab | Provisioned | - |
| DC1 | l3leaf | DC1-LEAF3B | 192.168.0.18/24 | vEOS-lab | Provisioned | - |
| DC1 | spine | DC1-SPINE1 | 192.168.0.10/24 | vEOS-lab | Provisioned | - |
| DC1 | spine | DC1-SPINE2 | 192.168.0.11/24 | vEOS-lab | Provisioned | - |
| DC1 | spine | DC1-SPINE3 | 192.168.0.12/24 | vEOS-lab | Provisioned | - |
| DC2 | l3leaf | DC2-LEAF1A | 192.168.0.24/24 | vEOS-lab | Provisioned | - |
| DC2 | l3leaf | DC2-LEAF1B | 192.168.0.25/24 | vEOS-lab | Provisioned | - |
| DC2 | l3leaf | DC2-LEAF2A | 192.168.0.26/24 | vEOS-lab | Provisioned | - |
| DC2 | l3leaf | DC2-LEAF2B | 192.168.0.27/24 | vEOS-lab | Provisioned | - |
| DC2 | spine | DC2-SPINE1 | 192.168.0.20/24 | vEOS-lab | Provisioned | - |
| DC2 | spine | DC2-SPINE2 | 192.168.0.21/24 | vEOS-lab | Provisioned | - |
| DC2 | spine | DC2-SPINE3 | 192.168.0.22/24 | vEOS-lab | Provisioned | - |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

### Fabric Switches with inband Management IP

| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

## Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | --------- | -------------- |
| l3leaf | DC1-LEAF1A | Ethernet49/1 | mlag_peer | DC1-LEAF1B | Ethernet49/1 |
| l3leaf | DC1-LEAF1A | Ethernet50/1 | mlag_peer | DC1-LEAF1B | Ethernet50/1 |
| l3leaf | DC1-LEAF1A | Ethernet51/1 | spine | DC1-SPINE1 | Ethernet1/1 |
| l3leaf | DC1-LEAF1A | Ethernet52/1 | spine | DC1-SPINE2 | Ethernet1/1 |
| l3leaf | DC1-LEAF1A | Ethernet53/1 | spine | DC1-SPINE3 | Ethernet1/1 |
| l3leaf | DC1-LEAF1B | Ethernet51/1 | spine | DC1-SPINE1 | Ethernet2/1 |
| l3leaf | DC1-LEAF1B | Ethernet52/1 | spine | DC1-SPINE2 | Ethernet2/1 |
| l3leaf | DC1-LEAF1B | Ethernet53/1 | spine | DC1-SPINE3 | Ethernet2/1 |
| l3leaf | DC1-LEAF2A | Ethernet49/1 | mlag_peer | DC1-LEAF2B | Ethernet49/1 |
| l3leaf | DC1-LEAF2A | Ethernet50/1 | mlag_peer | DC1-LEAF2B | Ethernet50/1 |
| l3leaf | DC1-LEAF2A | Ethernet51/1 | spine | DC1-SPINE1 | Ethernet3/1 |
| l3leaf | DC1-LEAF2A | Ethernet52/1 | spine | DC1-SPINE2 | Ethernet3/1 |
| l3leaf | DC1-LEAF2A | Ethernet53/1 | spine | DC1-SPINE3 | Ethernet3/1 |
| l3leaf | DC1-LEAF2B | Ethernet51/1 | spine | DC1-SPINE1 | Ethernet4/1 |
| l3leaf | DC1-LEAF2B | Ethernet52/1 | spine | DC1-SPINE2 | Ethernet4/1 |
| l3leaf | DC1-LEAF2B | Ethernet53/1 | spine | DC1-SPINE3 | Ethernet4/1 |
| l3leaf | DC1-LEAF3A | Ethernet49/1 | mlag_peer | DC1-LEAF3B | Ethernet49/1 |
| l3leaf | DC1-LEAF3A | Ethernet50/1 | mlag_peer | DC1-LEAF3B | Ethernet50/1 |
| l3leaf | DC1-LEAF3A | Ethernet51/1 | spine | DC1-SPINE1 | Ethernet5/1 |
| l3leaf | DC1-LEAF3A | Ethernet52/1 | spine | DC1-SPINE2 | Ethernet5/1 |
| l3leaf | DC1-LEAF3A | Ethernet53/1 | spine | DC1-SPINE3 | Ethernet5/1 |
| l3leaf | DC1-LEAF3B | Ethernet51/1 | spine | DC1-SPINE1 | Ethernet6/1 |
| l3leaf | DC1-LEAF3B | Ethernet52/1 | spine | DC1-SPINE2 | Ethernet6/1 |
| l3leaf | DC1-LEAF3B | Ethernet53/1 | spine | DC1-SPINE3 | Ethernet6/1 |
| l3leaf | DC2-LEAF1A | Ethernet49/1 | mlag_peer | DC2-LEAF1B | Ethernet49/1 |
| l3leaf | DC2-LEAF1A | Ethernet50/1 | mlag_peer | DC2-LEAF1B | Ethernet50/1 |
| l3leaf | DC2-LEAF1A | Ethernet51/1 | spine | DC2-SPINE1 | Ethernet1/1 |
| l3leaf | DC2-LEAF1A | Ethernet52/1 | spine | DC2-SPINE2 | Ethernet1/1 |
| l3leaf | DC2-LEAF1A | Ethernet53/1 | spine | DC2-SPINE3 | Ethernet1/1 |
| l3leaf | DC2-LEAF1B | Ethernet51/1 | spine | DC2-SPINE1 | Ethernet2/1 |
| l3leaf | DC2-LEAF1B | Ethernet52/1 | spine | DC2-SPINE2 | Ethernet2/1 |
| l3leaf | DC2-LEAF1B | Ethernet53/1 | spine | DC2-SPINE3 | Ethernet2/1 |
| l3leaf | DC2-LEAF2A | Ethernet49/1 | mlag_peer | DC2-LEAF2B | Ethernet49/1 |
| l3leaf | DC2-LEAF2A | Ethernet50/1 | mlag_peer | DC2-LEAF2B | Ethernet50/1 |
| l3leaf | DC2-LEAF2A | Ethernet51/1 | spine | DC2-SPINE1 | Ethernet3/1 |
| l3leaf | DC2-LEAF2A | Ethernet52/1 | spine | DC2-SPINE2 | Ethernet3/1 |
| l3leaf | DC2-LEAF2A | Ethernet53/1 | spine | DC2-SPINE3 | Ethernet3/1 |
| l3leaf | DC2-LEAF2B | Ethernet51/1 | spine | DC2-SPINE1 | Ethernet4/1 |
| l3leaf | DC2-LEAF2B | Ethernet52/1 | spine | DC2-SPINE2 | Ethernet4/1 |
| l3leaf | DC2-LEAF2B | Ethernet53/1 | spine | DC2-SPINE3 | Ethernet4/1 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |
| 10.20.0.0/24 | 256 | 36 | 14.07 % |
| 10.30.0.0/24 | 256 | 24 | 9.38 % |

### Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| DC1-LEAF1A | Ethernet51/1 | 10.20.0.19/31 | DC1-SPINE1 | Ethernet1/1 | 10.20.0.18/31 |
| DC1-LEAF1A | Ethernet52/1 | 10.20.0.21/31 | DC1-SPINE2 | Ethernet1/1 | 10.20.0.20/31 |
| DC1-LEAF1A | Ethernet53/1 | 10.20.0.23/31 | DC1-SPINE3 | Ethernet1/1 | 10.20.0.22/31 |
| DC1-LEAF1B | Ethernet51/1 | 10.20.0.25/31 | DC1-SPINE1 | Ethernet2/1 | 10.20.0.24/31 |
| DC1-LEAF1B | Ethernet52/1 | 10.20.0.27/31 | DC1-SPINE2 | Ethernet2/1 | 10.20.0.26/31 |
| DC1-LEAF1B | Ethernet53/1 | 10.20.0.29/31 | DC1-SPINE3 | Ethernet2/1 | 10.20.0.28/31 |
| DC1-LEAF2A | Ethernet51/1 | 10.20.0.31/31 | DC1-SPINE1 | Ethernet3/1 | 10.20.0.30/31 |
| DC1-LEAF2A | Ethernet52/1 | 10.20.0.33/31 | DC1-SPINE2 | Ethernet3/1 | 10.20.0.32/31 |
| DC1-LEAF2A | Ethernet53/1 | 10.20.0.35/31 | DC1-SPINE3 | Ethernet3/1 | 10.20.0.34/31 |
| DC1-LEAF2B | Ethernet51/1 | 10.20.0.37/31 | DC1-SPINE1 | Ethernet4/1 | 10.20.0.36/31 |
| DC1-LEAF2B | Ethernet52/1 | 10.20.0.39/31 | DC1-SPINE2 | Ethernet4/1 | 10.20.0.38/31 |
| DC1-LEAF2B | Ethernet53/1 | 10.20.0.41/31 | DC1-SPINE3 | Ethernet4/1 | 10.20.0.40/31 |
| DC1-LEAF3A | Ethernet51/1 | 10.20.0.85/31 | DC1-SPINE1 | Ethernet5/1 | 10.20.0.84/31 |
| DC1-LEAF3A | Ethernet52/1 | 10.20.0.87/31 | DC1-SPINE2 | Ethernet5/1 | 10.20.0.86/31 |
| DC1-LEAF3A | Ethernet53/1 | 10.20.0.89/31 | DC1-SPINE3 | Ethernet5/1 | 10.20.0.88/31 |
| DC1-LEAF3B | Ethernet51/1 | 10.20.0.91/31 | DC1-SPINE1 | Ethernet6/1 | 10.20.0.90/31 |
| DC1-LEAF3B | Ethernet52/1 | 10.20.0.93/31 | DC1-SPINE2 | Ethernet6/1 | 10.20.0.92/31 |
| DC1-LEAF3B | Ethernet53/1 | 10.20.0.95/31 | DC1-SPINE3 | Ethernet6/1 | 10.20.0.94/31 |
| DC2-LEAF1A | Ethernet51/1 | 10.30.0.61/31 | DC2-SPINE1 | Ethernet1/1 | 10.30.0.60/31 |
| DC2-LEAF1A | Ethernet52/1 | 10.30.0.63/31 | DC2-SPINE2 | Ethernet1/1 | 10.30.0.62/31 |
| DC2-LEAF1A | Ethernet53/1 | 10.30.0.65/31 | DC2-SPINE3 | Ethernet1/1 | 10.30.0.64/31 |
| DC2-LEAF1B | Ethernet51/1 | 10.30.0.67/31 | DC2-SPINE1 | Ethernet2/1 | 10.30.0.66/31 |
| DC2-LEAF1B | Ethernet52/1 | 10.30.0.69/31 | DC2-SPINE2 | Ethernet2/1 | 10.30.0.68/31 |
| DC2-LEAF1B | Ethernet53/1 | 10.30.0.71/31 | DC2-SPINE3 | Ethernet2/1 | 10.30.0.70/31 |
| DC2-LEAF2A | Ethernet51/1 | 10.30.0.73/31 | DC2-SPINE1 | Ethernet3/1 | 10.30.0.72/31 |
| DC2-LEAF2A | Ethernet52/1 | 10.30.0.75/31 | DC2-SPINE2 | Ethernet3/1 | 10.30.0.74/31 |
| DC2-LEAF2A | Ethernet53/1 | 10.30.0.77/31 | DC2-SPINE3 | Ethernet3/1 | 10.30.0.76/31 |
| DC2-LEAF2B | Ethernet51/1 | 10.30.0.79/31 | DC2-SPINE1 | Ethernet4/1 | 10.30.0.78/31 |
| DC2-LEAF2B | Ethernet52/1 | 10.30.0.81/31 | DC2-SPINE2 | Ethernet4/1 | 10.30.0.80/31 |
| DC2-LEAF2B | Ethernet53/1 | 10.30.0.83/31 | DC2-SPINE3 | Ethernet4/1 | 10.30.0.82/31 |

### Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 10.10.0.0/24 | 256 | 3 | 1.18 % |
| 10.10.1.0/24 | 256 | 6 | 2.35 % |
| 10.10.2.0/24 | 256 | 3 | 1.18 % |
| 10.10.3.0/24 | 256 | 4 | 1.57 % |

### Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| DC1 | DC1-LEAF1A | 10.10.1.4/32 |
| DC1 | DC1-LEAF1B | 10.10.1.5/32 |
| DC1 | DC1-LEAF2A | 10.10.1.6/32 |
| DC1 | DC1-LEAF2B | 10.10.1.7/32 |
| DC1 | DC1-LEAF3A | 10.10.1.15/32 |
| DC1 | DC1-LEAF3B | 10.10.1.16/32 |
| DC1 | DC1-SPINE1 | 10.10.0.1/32 |
| DC1 | DC1-SPINE2 | 10.10.0.2/32 |
| DC1 | DC1-SPINE3 | 10.10.0.3/32 |
| DC2 | DC2-LEAF1A | 10.10.3.11/32 |
| DC2 | DC2-LEAF1B | 10.10.3.12/32 |
| DC2 | DC2-LEAF2A | 10.10.3.13/32 |
| DC2 | DC2-LEAF2B | 10.10.3.14/32 |
| DC2 | DC2-SPINE1 | 10.10.2.8/32 |
| DC2 | DC2-SPINE2 | 10.10.2.9/32 |
| DC2 | DC2-SPINE3 | 10.10.2.10/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------ | ------------------- | ------------------ | ------------------ |
| 101.1.1.0/24 | 256 | 10 | 3.91 % |

### VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| DC1 | DC1-LEAF1A | 101.1.1.4/32 |
| DC1 | DC1-LEAF1B | 101.1.1.4/32 |
| DC1 | DC1-LEAF2A | 101.1.1.6/32 |
| DC1 | DC1-LEAF2B | 101.1.1.6/32 |
| DC1 | DC1-LEAF3A | 101.1.1.15/32 |
| DC1 | DC1-LEAF3B | 101.1.1.15/32 |
| DC2 | DC2-LEAF1A | 101.1.1.11/32 |
| DC2 | DC2-LEAF1B | 101.1.1.11/32 |
| DC2 | DC2-LEAF2A | 101.1.1.13/32 |
| DC2 | DC2-LEAF2B | 101.1.1.13/32 |
