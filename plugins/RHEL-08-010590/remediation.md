# RHEL-08-010590 Remediation

**STIG Rule:** RHEL-08-010590  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must enable the hardware random number generator entropy gatherer service.

## Requirement
The rngd service provides entropy from hardware RNG devices to the system.

## Official STIG Fix
Enable and start the rngd service.

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
