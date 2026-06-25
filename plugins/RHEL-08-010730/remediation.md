# RHEL-08-010730 Remediation

**STIG Rule:** RHEL-08-010730  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** All RHEL 8 local interactive user home directories must have mode 0750 or less permissive.

## Requirement
Excessive permissions on home directories may allow unauthorized access to user files by other users.

## Official STIG Fix
Change the mode of interactive users' home directories to 0750 or less permissive.

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6 and later)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
