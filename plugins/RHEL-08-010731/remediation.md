# RHEL-08-010731 Remediation

**STIG Rule:** RHEL-08-010731  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must limit concurrent sessions.

## Requirement
Limit the number of concurrent sessions.

## Official STIG Fix
Set maxlogins in /etc/security/limits.conf

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
