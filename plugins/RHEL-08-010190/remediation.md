# RHEL-08-010190 Remediation

**STIG Rule:** RHEL-08-010190  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must display the Standard Mandatory DOD Notice and Consent Banner before granting remote access.

## Requirement
The Standard Mandatory DOD Notice and Consent Banner must be displayed before granting access.

## Official STIG Fix
Configure the DOD banner in /etc/issue and sshd_config.

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
