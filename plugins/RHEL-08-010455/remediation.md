# RHEL-08-010455 Remediation

**STIG Rule:** RHEL-08-010455  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must allocate audit storage capacity proportionally.

## Requirement
Audit logs must have sufficient space.

## Official STIG Fix
Configure audit log rotation and size limits.

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
