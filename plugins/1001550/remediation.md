# Nessus Plugin 1001550 Remediation

**Plugin ID:** 1001550
**Title:** RHEL 8 - Password complexity requirements
**Severity:** [From Nessus report]
**Family:** Compliance (likely)
**Synopsis:** Configure pam_pwquality or authselect for strong passwords

## Description
This appears to be a custom or policy compliance plugin. Exact check details should be taken from your Nessus scan output.

## Impact
Failure to remediate may result in compliance violations (STIG, CIS, PCI, etc.).

## Remediation Steps (RHEL 8)

### Automated Remediation
- Shell script: `scripts/remediate.sh` (RHEL 8 specific)
- Ansible playbook: `ansible/remediate.yml`

## Verification Commands (RHEL 8)
```bash
# Example verification commands will be added once exact check is known
```

## Rollback
See individual script comments.

## References
- Red Hat Enterprise Linux 8 Security Hardening Guide
- DISA STIG for RHEL 8
- CIS Benchmark for RHEL 8

## Notes
- **Requires Nessus output for precise remediation**
- Tested on: RHEL 8.8 / 8.9 / 8.10
- Last updated: 2026-06-25
