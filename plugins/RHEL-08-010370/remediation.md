# RHEL-08-010370 Remediation

**STIG Rule:** RHEL-08-010370  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must implement ASLR.

## Requirement
Address Space Layout Randomization must be enabled.

## Official STIG Fix
Set kernel.randomize_va_space=2

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
