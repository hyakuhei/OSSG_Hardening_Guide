# OpenStack System Security Guide
by the OpenStack Security Group

Contributors:

- Robert Clark | robert.clark@hp.com
- Ben de Bont | ben.debont@hp.com
- Bryan D. Payne | bdpayne@acm.org
- Keith Basil | kbasil@redhat.com


##Introduction and General Principles

The OpenStack System Security General Principles provides a general overview of security best practices, guidelines and recommendations for increasing the security of an OpenStack cloud deployment.

The guidance provided here is generic enough to apply to most OpenStack deployments.  Security requirements should ultimately be driven by the sensitivity of information to be transmitted, processed  or stored within an OpenStack cloud.

### How to use this guide

- Understand that all clouds are different, read sections that apply to you
- Test in a non-production environment
- Provide feedback and help improve the guide

### Architectural Guidance

- Look at key decision points and how they affect security
- Provide the information needed to understand security relevance of choices
- Don't necessarily suggest a specific choice, unless there are clear winners
- Largely point to sections below for additional details

### Areas presented in this document include:
- System and Communications Protection
- Log Management
- Configuration Management
- Identification and Authentication
- Incident Response
- Risk Assessment
- System and Information Integrity

### General principles 
The general principles outlined here assume that each of the security areas listed is applied to each of OpenStack's components.  For example, when considering how to secure Nova, we should look at all software components and review each area to determine how it effects Nova (System and Communications Protection, Log Management, Configuration Management, and so on..).  Some components such as hypervisor security may have additional best practices listed within a given area.  All areas may not apply but it is best to run through each area and ask the questions.

When thinking about the security areas, we should in general:

- Assume attackers are in all parts of the cloud
	- Use layered security
     - Use least privilege
     - Use encryption and authentication
- Reduce attack surface
	- Isolate components to the greatest degree possible
		- Mandatory Access Controls, AppArmour/SELinux
		- Containers 
    - Keep it simple, reduce amount of software
    - Continuously monitor and verify cloud

### OpenStack Overview
- OpenStack Core Projects vs Production OpenStack Deployment
	- deployment involves much more than just core projects
	- many configuration options
	- many architectural decisions
- Generic view of an OpenStack deployment
	- System services, ports and protocols table
- OpenStack Data flow
	- [insert OpenStack flow diagrams for each service]

### Securing OpenStack Components
- Compute (Nova)
	- Configuration Guidance
      	- Hypervisor Security

		Isolate guests using system level access control to contain hypervisor/guest vm breaches. 		Adoption of stronger security at this layer may not be possible with all hypervisors.

		- KVM on RHEL
			- sVirt and SELinux options
		- KVM on Ubuntu
		- Xen  
		- ESX
		- LXC
		- HyperV ??
		- General measures for securing hypervisors
		- Refer to section below in hypervisor security

- Storage (Swift)
	- Direct Threats
     - Configuration Guidance
     - SSL Stuff
- Networking (Quantum)
     - Direct Threats
     - Configuration Guidance
- Dashboard (Horizon)
     - Direct Threats
     - Configuration Guidance
- Identity (Keystone)
     - Direct Threats
     - Configuration Guidance
- Image (Glance)
     - Direct Threats
     - Configuration Guidance
- Message Queue
	- RabbitMQ
	- QPid
	- ZeroMQ

### Areas of Security Focus in detail
  - System and Communications Protection
    - Application Partitioning
    - Denial of Service Protection
    - Cryptographic Key Establishment and Management
    - Use of Cryptography
    - Secure DNS (Authoritative Source)
    - Secure DNS (Recursive or Caching Resolver)
    - Session Authenticity

  - Log Management
    - Logged Events
    - Content of Logged Records
    - Log Storage Capacity & Retention
    - Log Review, Analysis, and Reporting
    - Time Stamps
    - Protection of Log Information
    - Non-repudiation

  - Configuration Management
    - Baseline Configuration
    - Configuration Change Control
    - Security Impact Analysis
    - Access Restrictions for Change
    - Configuration Settings
    - Least Privilege Functionality
    - System Inventory

  - Identification and Authentication
    - Identifier Management
    - Authenticator Management
    - Cryptographic Module Authentication
    - Identification and Authentication (tenants)

  - Incident Response
    - Incident Response Testing & Exercises
    - Incident Handling
    - Incident Monitoring
    - Incident Reporting
    - Incident Response Assistance
    - Incident Response Plan

  - Risk Assessment
    - Risk Assessment Policy and Procedures
    - Security Categorization
    - Risk Assessment
    - Vulnerability Scanning
      - List open source scanners
      - List OpenSCAP for automated scanning?

  - System and Information Integrity
    - Malicious Code Protection
    - Information System Monitoring
      - OSSEC?
    - Security Alerts, Advisories, and Directives
    - Security Functionality Verification
    - Software and Information Integrity
    - Spam Protection
    - Information Input Restrictions
    - Information Input Validation
    - Information Output Handling and Retention
    - Predictable Failure Prevention

### Other OpenStack Security Guidance
- Security Notes
- Vulnerability Reports
- General Linux Hardening
  - Beyond scope, see NSA Guide to the Secure Configuration of
    Red Hat Enterprise Linux 5, June 2012 (useful for all distros)

### Conclusions
