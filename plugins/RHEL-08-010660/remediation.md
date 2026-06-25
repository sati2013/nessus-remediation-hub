# RHEL-08-010660 Remediation

**STIG Rule:** RHEL-08-010660  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must enforce password complexity by requiring that at least one special character be used.

## Requirement
Passwords must contain at least one special character.

## Official STIG Fix
Configure pwquality with ocredit=-1.

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6+)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
