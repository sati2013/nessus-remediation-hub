# RHEL-08-010770 Remediation

**STIG Rule:** RHEL-08-010770  
**Nessus Plugin ID:** [To be filled per scanner – different scanners use different IDs]

**Title:** RHEL 8 must configure the use of the pam_faillock.so module to lock out accounts after a number of incorrect login attempts.

## Description
RHEL 8 must configure the use of the pam_faillock.so module to lock out accounts after a number of incorrect login attempts.

## Remediation (RHEL 8)

### Automated
- `scripts/remediate.sh`
- `ansible/remediate.yml`

## Verification
See script output and STIG check commands.

## References
- DISA STIG Red Hat Enterprise Linux 8
- https://www.stigviewer.com/stigs/red_hat_enterprise_linux_8

**Last Updated:** 2026-06-25
