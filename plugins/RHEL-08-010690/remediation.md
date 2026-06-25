# RHEL-08-010690 Remediation

**STIG Rule:** RHEL-08-010690  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must enforce password complexity (numeric character).

## Requirement
Passwords must contain at least one numeric character.

## Official STIG Fix
Configure pwquality with dcredit=-1

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
