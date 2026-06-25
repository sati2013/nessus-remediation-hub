# RHEL-08-010420 Remediation

**STIG Rule:** RHEL-08-010420  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must use SHA-512 for password hashing.

## Requirement
Passwords must be hashed with SHA-512.

## Official STIG Fix
Configure authselect to use SHA-512.

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
