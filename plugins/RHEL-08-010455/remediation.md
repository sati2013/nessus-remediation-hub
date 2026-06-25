# RHEL-08-010455 Remediation

**STIG Rule:** RHEL-08-010455  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must allocate audit storage capacity to proportionally accommodate the logging requirements of all authenticated users.

## Requirement
Audit logs must have sufficient space to accommodate logging requirements of all users.

## Official STIG Fix
Configure audit log rotation and size limits in auditd.conf.

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6 and later)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
