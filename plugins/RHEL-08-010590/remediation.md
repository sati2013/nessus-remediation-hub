# RHEL-08-010590 Remediation

**STIG Rule:** RHEL-08-010590  
**Nessus Plugin ID:** [Fill in from your Nessus scan]

**Title:** RHEL 8 must enable the hardware random number generator entropy gatherer service.

## Requirement
The rngd service provides entropy from hardware RNG.

## Official STIG Fix
Enable and start the rngd service.

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
Run the STIG check command from the official STIG.

**Last Updated:** 2026-06-25
