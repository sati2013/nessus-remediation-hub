# Nessus Plugin 1001524 – RHEL 8 STIG Remediation

**Plugin ID:** 1001524  
**Corresponding STIG Rule:** RHEL-08-010560  
**STIG Finding:** V-230479  
**Title:** RHEL 8 audit rules for file integrity

## Description
This Nessus plugin corresponds to the DISA STIG requirement above for Red Hat Enterprise Linux 8.

## Remediation (RHEL 8)

### Recommended Commands
See the automated script in `scripts/remediate.sh`.

### Manual Steps
1. Apply the STIG rule using `oscap` or manually via the commands in the script.
2. Verify with the STIG check command.

## Verification
```bash
# Example STIG check (adjust per rule)
oscap xccdf eval --profile xccdf_org.ssgproject.content_profile_stig --rule RHEL-08-010560 /usr/share/xml/scap/ssg/content/ssg-rhel8-ds.xml
```

## Rollback
See script comments.

## References
- DISA STIG Red Hat Enterprise Linux 8: https://www.stigviewer.com/stigs/red_hat_enterprise_linux_8
- Red Hat STIG Guide: https://static.open-scap.org/ssg-guides/ssg-rhel8-guide-stig.html

**Last updated:** 2026-06-25
