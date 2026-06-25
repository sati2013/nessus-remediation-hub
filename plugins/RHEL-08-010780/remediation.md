# RHEL-08-010780 Remediation

**STIG Rule:** RHEL-08-010780  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must use pam_faillock to lock accounts after failed logins.

## Requirement
Accounts must be locked after 3 failed attempts.

## Official STIG Fix
Configure pam_faillock.

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
