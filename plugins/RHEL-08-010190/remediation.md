# RHEL-08-010190 Remediation

**STIG Rule:** RHEL-08-010190  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** A sticky bit must be set on all RHEL 8 public directories to prevent unauthorized and unintended information transferred via shared system resources.

## Requirement
World-writable directories must have the sticky bit set to prevent unauthorized information transfer.

## Official STIG Fix
Set the sticky bit on all world-writable directories (chmod 1777).

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6 and later)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
