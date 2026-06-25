# RHEL-08-010420 Remediation

**STIG Rule:** RHEL-08-010420  
**Nessus Plugin ID:** [To be filled per scanner – different scanners use different IDs]

**Title:** RHEL 8 must be configured to use the pam_unix.so module with the sha512 option for password hashing.

## Description
RHEL 8 must be configured to use the pam_unix.so module with the sha512 option for password hashing.

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
