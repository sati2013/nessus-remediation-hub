# RHEL-08-010741 Remediation

**STIG Rule:** RHEL-08-010741  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must lock accounts after three consecutive failed logon attempts.

## Requirement
Account lockout after 3 failed attempts.

## Official STIG Fix
Configure deny=3 in faillock.conf

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
