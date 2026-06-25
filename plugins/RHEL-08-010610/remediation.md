# RHEL-08-010610 Remediation

**STIG Rule:** RHEL-08-010610  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must prevent code from being executed on file systems used with removable media.

## Requirement
The noexec mount option prevents execution of binaries on removable media.

## Official STIG Fix
Configure /etc/fstab to use the noexec option on removable media.

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
