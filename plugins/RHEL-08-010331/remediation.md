# RHEL-08-010331 Remediation

**STIG Rule:** RHEL-08-010331  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must verify certificates for package installation.

## Requirement
Packages must be signed and verified.

## Official STIG Fix
Ensure gpgcheck is enabled in dnf/yum config.

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
