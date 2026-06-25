# RHEL-08-010190 Remediation

**STIG Rule:** RHEL-08-010190  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must display the Standard Mandatory DOD Notice and Consent Banner.

## Requirement
The DOD banner must be displayed before access.

## Official STIG Fix
Configure /etc/issue and sshd_config with the banner.

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
