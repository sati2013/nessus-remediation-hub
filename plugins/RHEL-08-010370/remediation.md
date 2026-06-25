# RHEL-08-010370 Remediation

**STIG Rule:** RHEL-08-010370  
**Nessus Plugin ID:** [To be filled per scanner – different scanners use different IDs]

**Title:** RHEL 8 must implement address space layout randomization (ASLR) to protect its memory from unauthorized code execution.

## Description
RHEL 8 must implement address space layout randomization (ASLR) to protect its memory from unauthorized code execution.

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
