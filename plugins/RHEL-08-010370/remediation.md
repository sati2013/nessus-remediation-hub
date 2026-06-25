# RHEL-08-010370 Remediation

**STIG Rule:** RHEL-08-010370  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must implement address space layout randomization (ASLR) to protect its memory from unauthorized code execution.

## Requirement
ASLR must be enabled to make memory addresses harder to predict.

## Official STIG Fix
Set kernel.randomize_va_space=2.

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6 and later)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
