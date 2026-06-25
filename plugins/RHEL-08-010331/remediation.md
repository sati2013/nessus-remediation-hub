# RHEL-08-010331 Remediation

**STIG Rule:** RHEL-08-010331  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must prevent the installation of patches, updates, and additional software without verification of the certificate.

## Requirement
Packages must be signed and verified before installation.

## Official STIG Fix
Ensure gpgcheck=1 is enabled in dnf/yum configuration.

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6+)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
