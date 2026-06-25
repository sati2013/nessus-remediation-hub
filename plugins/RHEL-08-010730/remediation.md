# RHEL-08-010730 Remediation

**STIG Rule:** RHEL-08-010730  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** All RHEL 8 local interactive user home directories must have mode 0750 or less permissive.

## Requirement
Excessive permissions on home directories may allow unauthorized access.

## Official STIG Fix
Change the mode of interactive users' home directories to 0750 or less permissive.

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
