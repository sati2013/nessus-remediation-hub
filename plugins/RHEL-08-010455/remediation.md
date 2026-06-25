# RHEL-08-010455 Remediation

**STIG Rule:** RHEL-08-010455  
**Nessus Plugin ID:** [To be filled per scanner – different scanners use different IDs]

**Title:** RHEL 8 must allocate audit storage capacity to proportionally accommodate the logging requirements of all authenticated users.

## Description
RHEL 8 must allocate audit storage capacity to proportionally accommodate the logging requirements of all authenticated users.

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
