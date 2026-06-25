# RHEL-08-010770 Remediation

**STIG Rule:** RHEL-08-010770  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** All RHEL 8 local initialization files must have mode 0740 or less permissive.

## Requirement
Local initialization files are used to configure the user's shell. Excessive permissions allow unauthorized modification.

## Official STIG Fix
Set the mode of all local initialization files to 0740 or less permissive.

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
