# RHEL-08-010190 Remediation

**STIG Rule:** RHEL-08-010190  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** A sticky bit must be set on all RHEL 8 public directories to prevent unauthorized and unintended information transferred via shared system resources.

## Requirement
Preventing unauthorized information transfers mitigates the risk of information, including encrypted representations of information, produced by the actions of prior users/roles (or the actions of processes acting on behalf of prior users/roles) from being available to any current users/roles (or current processes) that obtain access to shared system resources (e.g., registers, main memory, hard disks) after those resources have been released back to information systems.

## Official STIG Fix
Configure all world-writable directories to have the sticky bit set to prevent unauthorized and unintended information transferred via shared system resources.

Set the sticky bit on all world-writable directories using the command (replace "[World-Writable Directory]" with any directory path missing the sticky bit):

```bash
sudo -S -p '' chmod 1777 [World-Writable Directory]
```

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG v2r6  
**Status:** This audit has been **deprecated** and will be removed in a future update.

See: https://www.tenable.com/audits/items/DISA_STIG_Red_Hat_Enterprise_Linux_8_v2r6.audit:d5db66af96997b807c4310b38c8133ed

## Verification
Check for world-writable directories without the sticky bit:
```bash
find / -type d -perm -0002 ! -perm -1000 2>/dev/null
```

**Last Updated:** 2026-06-25
