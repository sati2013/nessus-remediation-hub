# RHEL-08-010610 Remediation

**STIG Rule:** RHEL-08-010610  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must prevent code from being executed on file systems used with removable media.

## Requirement
The noexec mount option causes the system not to execute binary files on removable media.

## Official STIG Fix
Configure /etc/fstab to use the noexec option on removable media.

## Source
DISA Red Hat Enterprise Linux 8 STIG v2r7

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
