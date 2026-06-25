# RHEL-08-010190 Remediation

**STIG Rule:** RHEL-08-010190  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must set the sticky bit on all public directories.

## Requirement
Public directories must have the sticky bit set to prevent users from deleting or renaming files they do not own.

## Official STIG Fix
Set the sticky bit on all world-writable public directories.

```bash
find / -type d -perm -0002 ! -perm -1000 -exec chmod +t {} + 2>/dev/null || true
```

## Source
DISA Red Hat Enterprise Linux 8 STIG v2r7

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run:
```bash
find / -type d -perm -0002 ! -perm -1000 2>/dev/null
```
No output means all public directories have the sticky bit set.

**Last Updated:** 2026-06-25
