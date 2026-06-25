# RHEL-08-010770 Remediation

**STIG Rule:** RHEL-08-010770  
**Nessus Plugin ID:** 1001490

**Title:** All RHEL 8 local initialization files must have mode 0740 or less permissive.

## Requirement
Local initialization files are used to configure the user's shell environment. If these files have excessive permissions, unauthorized users may be able to modify them and potentially compromise user accounts.

## Official STIG Fix
Set the mode of all local initialization files to 0740 or less permissive.

## Automated Remediation (RHEL 8)
The script in `scripts/remediate.sh` implements the STIG recommendation.

## Verification
```bash
find /home -maxdepth 2 -name ".*" -type f -perm /0077 -exec ls -l {} \;
```
No output means all local initialization files have appropriate permissions (0740 or more restrictive).

**Last Updated:** 2026-06-25
