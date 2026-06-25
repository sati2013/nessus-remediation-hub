#!/bin/bash
# RHEL-08-010190 Check Script
# Verify sticky bit on public directories

set -euo pipefail

echo "Checking STIG RHEL-08-010190..."

bad_dirs=$(find / -type d -perm -0002 ! -perm -1000 2>/dev/null | head -10)

if [ -n "$bad_dirs" ]; then
    echo "FAIL: World-writable directories missing sticky bit found"
    exit 1
else
    echo "PASS: All public directories have sticky bit set"
    exit 0
fi
