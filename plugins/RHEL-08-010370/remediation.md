# RHEL-08-010370 Remediation

**STIG Rule:** RHEL-08-010370  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must prevent the installation of software, patches, service packs, device drivers, or operating system components from a repository without verification they have been digitally signed using a certificate that is issued by a Certificate Authority (CA) that is recognized and approved by the organization.

## Requirement
The system must verify that software packages are digitally signed before installation to ensure they come from a trusted source.

## Official STIG Fix
Ensure `gpgcheck` is enabled in the DNF/YUM configuration.

```bash
sed -i 's/^gpgcheck=.*/gpgcheck=1/' /etc/dnf/dnf.conf
```

## Source
DISA Red Hat Enterprise Linux 8 STIG v2r7  
Tenable Audit: DISA_STIG_Red_Hat_Enterprise_Linux_8_v2r7

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run:
```bash
grep "^gpgcheck" /etc/dnf/dnf.conf
```
It should return `gpgcheck=1`.

**Last Updated:** 2026-06-25
