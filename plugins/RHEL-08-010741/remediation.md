# RHEL-08-010741 Remediation

**STIG Rule:** RHEL-08-010741  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must lock accounts after three consecutive failed logon attempts.

## Requirement
Accounts must be locked after three consecutive failed logon attempts.

## Official STIG Fix
Configure deny=3 in faillock.conf.

## Source
DISA Red Hat Enterprise Linux 8 STIG v2r7

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
