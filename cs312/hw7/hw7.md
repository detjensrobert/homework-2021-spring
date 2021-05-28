# CS 312 Homework 7

## Robert Detjens & Lyell Read

---

## Equivalents to Active Directory

### 1. What are some possible equivalent services or implementations of the following Active Directory services that could be run on Linux:

1. **Domain Services:** Tracks information about members of the domain, including computers and users, in various
   directories. Also defines access rights to the devices, files, and services on the domain.

    - FreeIPA: FreeIPA can fill the role of Domain Services management. It supports LDAP as well as having many other
      features that make it a great partial AD replacement for Linux. FreeIPA is mainly an integration layer between
      389 Directory Server and Kerberos, Dogtag and ISC Bind DNS. In comparison to Windows AD FreeIPA is not as
      feature-complete and easily integrated with other parts of the AD suite of tools as Microsoft AD is, however it
      is the closest approximation that I was able to find to a full Microsoft AD deployment's capabilities.
    - OpenLDAP: Open source DS program. This provides an open source and lightweight implementation of LDAP, however it
      has already been forked once and revamped due to halted development, and is rumored to be buggy with staff that
      will not address bugs. Bypassing the bugs, OpenLDAP is just an open source version of LDAP, which means that
      while it can perform Domain Services, it requires integration to use it alongside other AD services.
    - OpenDJ: Open source LDAP server with DSML support as well. OpenDJ began as a Sun project, and serves as a LDAP
      server, which means that it provides Domain Services. Integration with other AD services is not well documented.
    - 389 Directory Server: This is simply an LDAP server built by Red Hat. This software is proficient in managing
      Domain Services, however it requires integration to get most other components of a Windows / typical AD
      deployment set up. Therefore, it is not really a drop in replacement for Microsoft AD DS as it would require
      integration.

2. **Certificate Services:** Generates and maintains a private/public key infrastructure.

    - OpenSSL: Not a drop-in replacement, however widely installed on Linux systems. Not a polished application or
      dashboard, therefore not a good replacement for Windows AD CS. Can create and (with user assistance) manage
      private/public keys, signing keys, and such.
    - OpenCA: Frontend for OpenSSL that is not exactly targeted to be a ADCS replacement. Makes use of OpenLDAP as well
      as OpenSSL to serve as a certificate authority. When examined as a standalone Certificate Service, it is likely
      sufficient to merit this title, however as with many other linux components, integration with other AD/DS
      infrastructure requires additional effort.
    - XCA: GUI frontend for managing PKI. XCA is not AD specific, and implements many standards beyond those typically
      required for PKI, making it versatile. When examined as a standalone Certificate Service, it is likely sufficient
      to merit this title, however as with many other linux components, integration with other AD/DS infrastructure
      requires additional effort.
    - EJBCI: Enterprise-grade CA developed in Java by PrimeKey and sold as an enterprise version with paid support.
      Provides fine control over certificates, including validation, renewal, and revocation functionality. This is a
      full-fledged CA service.
    - Dogtag: Another enterprise-grade CA developed in Java. Provides all features of a PKI server: CA, RA, OCSP, DRM,
      TKS, and TPS.

3. **Federation Services:** Also known as Single-Sign-On, or SSO, this allows authenticating in just one place, and
   having access to all resources across the domain and with other connected services, domains, or technologies
   (websites, other domains, etc.). For example, your ONID access is federated across Google, OSU infrastructure, your
   Box account, etc.

    - Kerberos: Used by Windows AD, possibly the "gold standard". An implementation is available for Linux and is
      likely one of the most complete FS available for Linux.
    - OpenAM: Originally OpenSSO. Provides access management, SSO, and entitlements management.
    - Shibboleth: Shibboleth is an SSO architecture that is widely used to provide authentication across domains and
      platforms.
    - Ubuntu SSO: Ubuntu SSO was released as part of Ubuntu One, and provides SSO services for Canonical products, e.g.
      Snapcraft, Launchpad. Ubuntu SSO is developed by Canonical, and is based on OpenID, which supplies the library of
      protocols for decentralized authentication.
    - WSO2: WSO2 includes a SSO / Federation Services provider as part of its software suite. Available as an OSS
      version, and an enterprise version with paid support.

4. **Rights Management Services:** Encrypted file management and access services.

    - Fasoo Enterprise DRM: Professional, closed source program aimed at managing file access and encryption.

## DNS Questions

### 2. What is a DNS A record? Give an example of one. (5 points)

`A` records map a domain to an IPv4 address. `AAAA` map to IPv6 addresses.

### 3. What is a DNS SRV record? Give an example of one. (5 points)

`SRV` records define the address of a particular machine providing a service.

Example of a SRV record for Ceph monitoring (`op-ceph-mon` service):

```sh
# _service._protocol.domain.     ttl   IN  SRV   priority  weight  port  target
_op-ceph-mon._tcp.example.org.   60    IN  SRV	 10        60      6789  op-ceph1.example.org.
```

### 4. What is the difference between a forward and reverse lookup DNS query? What special kind of DNS record is required to make this work? (5 points)

Forward queries resolve a domain to an IP address. Reverse lookups use `PTR` records to resolve an IP address to a
domain. IPv4 reverse lookups query the special domain `in-addr.arpa` with the ip address in question prepended in
reverse order, e.g. `1.2.3.4` -> `4.3.2.1.in-addr.arpa`. IPv6 lookups use the special domain `ip6.arpa` with the
address prepended in reverse nibbles.

### 5. Instead of using .local at the end of a domain name, like in our reference server (`cs312domain.local`), the recommendation is that a true domain name be used including a real top-level-domain name (.com, .net, .edu, ...). Our IIS install on it could be mapped to www, so that visiting `www.cs312domain.com` would point to our webserver serving the www subdomain on the `cs312domain.com` site listed in a DNS server; likely with an A or AAAA record. Before you put our webserver online at `www.cs312domain.com`, what are some considerations - hardware, connections, etc. - you might want to make, first? There isn’t a specific right answer here, but do talk about a few things that occur to you. (5 points)

Serving websites depends on what the content of the website is. If it is a low-traffic static webpage, pretty much any
hardware will work. If there is server-side processing of some form, e.g. database lookups or templating, faster
servers will want to be used to render pages quickly.

The network connection will want to have very low latency as to respond to requests quickly, and be able to handle the
bandwidth of any content served. Again, assuming a small static site, bandwith will most likely not be an issue, but if
there is a large volume of traffic and/or lots of media being served to clients, the site will need enough bandwith as
to not to saturate the connection. This may be mitigated by using a CDN to mirror content and reduce traffic on the
main site.
