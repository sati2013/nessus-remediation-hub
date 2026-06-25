# RHEL-08-010690 Remediation

**STIG Rule:** RHEL-08-010690  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must enforce password complexity by requiring that at least one numeric character be used.

## Requirement
Passwords must contain at least one numeric character.

## Official STIG Fix
Configure pwquality with dcredit=-1.

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6+)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
