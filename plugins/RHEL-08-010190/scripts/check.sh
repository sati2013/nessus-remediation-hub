#!/bin/bash
# RHEL-08-010190 Check Script
# Verify sticky bit is set on all world-writable directories

set -euo pipefail

echo "Checking STIG RHEL-08-010190..."

# Find world-writable directories without sticky bit
bad_dirs=$(find / -type d -perm -0002 ! -perm -1000 2>/dev/null | head -20)

if [ -n "$bad_dirs" ]; then
    echo "FAIL: The following world-writable directories are missing the sticky bit:"
    echo "$bad_dirs"
    exit 1
else
    echo "PASS: All world-writable directories have the sticky bit set."
    exit 0
fi
