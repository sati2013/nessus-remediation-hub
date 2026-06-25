#!/bin/bash
# RHEL-08-010190 Check Script
# Verify sticky bit on public directories

set -euo pipefail

echo "Checking STIG RHEL-08-010190..."

if find / -type d -perm -0002 ! -perm -1000 2>/dev/null | head -1 | grep -q .; then
    echo "FAIL: Some world-writable directories are missing the sticky bit"
    exit 1
else
    echo "PASS: All public directories have the sticky bit set"
    exit 0
fi
