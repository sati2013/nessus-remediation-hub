# RHEL-08-010660 Remediation

**STIG Rule:** RHEL-08-010660  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must enforce password complexity (special character).

## Requirement
Passwords must contain at least one special character.

## Official STIG Fix
Configure pwquality with ocredit=-1

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
