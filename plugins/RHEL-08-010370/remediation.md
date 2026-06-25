# RHEL-08-010370 Remediation

**STIG Rule:** RHEL-08-010370  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must implement address space layout randomization (ASLR) to protect its memory from unauthorized code execution.

## Requirement
Address Space Layout Randomization (ASLR) makes it more difficult for attackers to predict memory addresses, thereby protecting the system from unauthorized code execution.

## Official STIG Fix
Set the kernel parameter `kernel.randomize_va_space` to `2`.

```bash
echo "kernel.randomize_va_space=2" > /etc/sysctl.d/99-stig-aslr.conf
sysctl --system
```

## Source
DISA Red Hat Enterprise Linux 8 STIG v2r7

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run the following command and verify it returns `2`:
```bash
sysctl kernel.randomize_va_space
```

**Last Updated:** 2026-06-25
