# RHEL-08-010780 Remediation

**STIG Rule:** RHEL-08-010780  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** All RHEL 8 local initialization files must have mode 0740 or less permissive.

## Requirement
Local initialization files must have mode 0740 or less permissive.

## Official STIG Fix
Set permissions on local initialization files to 0740 or less permissive.

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6 and later)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
