# RHEL-08-010190 Remediation

**STIG Rule:** RHEL-08-010190  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** A sticky bit must be set on all RHEL 8 public directories to prevent unauthorized and unintended information transferred via shared system resources.

## Requirement
Preventing unauthorized information transfers mitigates the risk of information produced by prior users from being available to current users after resources are released.

## Official STIG Fix
Set the sticky bit on all world-writable directories using chmod 1777.

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6+)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
