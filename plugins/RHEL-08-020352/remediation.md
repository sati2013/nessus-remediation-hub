# RHEL-08-020352 Remediation

**STIG Rule:** RHEL-08-020352  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must set the umask value to 077 for all local interactive user accounts.

## Requirement
The umask controls the default access mode assigned to newly created files. A umask of 077 limits new files to mode 600 or less permissive.

## Official STIG Fix
Remove any umask statement that is less restrictive than 077 from all local interactive user initialization files.

## Source
DISA Red Hat Enterprise Linux 8 STIG v2r7

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
