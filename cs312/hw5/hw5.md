---
header-includes:
- \newcommand{\hideFromPandoc}[1]{#1}
    \hideFromPandoc{
      \let\Begin\begin
      \let\End\end
    }
- \usepackage{multicol}
---

# CS 312 Homework 5

## Robert Detjens

---

\Begin{multicols}{2}

#### NorthRouter

- Default Gateway: 192.168.4.1/32
  - X1
    - Network: 192.168.5.0/24
    - IP Address: 192.168.5.1/32
    - DHCP Server
      - Network: 192.168.5.0/24
      - Start IP Addr: 192.168.5.10/32
      - End IP Addr: 192.168.5.100/32
  - X2
    - Network: 192.168.4.0/24
    - IP Address: 192.168.4.20/32

#### SouthRouter

- Default Gateway: 192.168.3.125/32
  - X1
    - Network: 192.168.4.0/24
    - IP Address: 192.168.4.20/32
  - X2
    - Network: 192.168.3.124/30
    - IP Address: 192.168.3.126/32

#### BorderRouter

- Default Gateway: 10.0.0.1/32
  - X1
    - Network: 192.168.3.124/30
    - IP Address: 192.168.3.125/32
  - X2
    - Network: 10.0.0.0/24
    - IP Address: 10.0.0.2/32
  - X3
    - Network: 192.168.2.0/24
    - IP Address: 192.168.2.1/32

#### WAPRouter

- Default Gateway: 192.168.2.1/32
  - X1
    - Network: 192.168.2.0/24
    - IP Address: 192.168.2.2/32
  - X2
    - Network: 192.168.0.0/16
    - IP Address: 192.168.0.1/32
    - DHCP Server
      - Network: 192.168.0.0/16
      - Start IP Addr: 192.168.0.10/32
      - End IP Addr: 192.168.255.254/32

#### WAP1

- Network: 192.168.0.0/16
- IP Address: 192.168.0.2/32

#### WAP2

- Network: 192.168.0.0/16
- IP Address: 192.168.0.3/32

#### PC1

- Network: 192.168.5.0/24
- IP Address: 192.168.5.10/32
- Default Gateway: 192.168.5.1/32

#### PC2

- Network: 192.168.5.0/24
- IP Address: 192.168.5.101/32
- Default Gateway: 192.168.5.1/32

#### PC3

- Network: 192.168.4.0/24
- IP Address: 192.168.4.10/32
- Default Gateway: 192.168.4.1/32

#### PC4

- Network: 192.168.4.0/24
- IP Address: 192.168.4.11/32
- Default Gateway: 192.168.4.1/32

#### PC5

- Network: 192.168.0.0/16
- IP Address: 192.168.0.10/32
- Default Gateway: 192.168.0.1/32

#### PC6

- Network: 192.168.2.0/24
- IP Address: 192.168.2.10/32
- Default Gateway: 192.168.2.1/32

#### Route1

- Stored in Router: WAPRouter
- Targets Network: 192.168.0.0/16
- Gateway IP Address: 192.168.2.1/32

\End{multicols}

#### Route2

- Stored in Router: SouthRouter
- Targets Network: 192.168.5.0/24
- Gateway IP Address: 192.168.3.126/32

#### Route3

- Stored in Router: NorthRouter
- Targets Network: 192.168.5.0/24
- Gateway IP Address: 192.168.4.20/32

#### VPN Endpoint IP Address 1

- 192.168.4.20/32

#### VPN Endpoint IP Address 2

- 192.168.2.2/32

#### A packet just arrived at `BorderRouter`, destined for `192.168.0.10/32`. Out of which interface will it leave `BorderRouter`?

- X3

#### Which PC DEFINITELY has a statically assigned IP address?

- PC2
