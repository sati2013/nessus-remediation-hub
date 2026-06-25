# RHEL-08-010731 Remediation

**STIG Rule:** RHEL-08-010731  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** All RHEL 8 local interactive user home directory files must have mode 0750 or less permissive.

## Requirement
Files inside home directories must have appropriate permissions to prevent unauthorized access.

## Official STIG Fix
Set proper permissions on files inside user home directories.

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6+)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
