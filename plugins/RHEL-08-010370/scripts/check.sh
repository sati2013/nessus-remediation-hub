#!/bin/bash
# RHEL-08-010370 Check Script
# Verify ASLR is set to 2

set -euo pipefail

echo "Checking STIG RHEL-08-010370..."

value=$(sysctl -n kernel.randomize_va_space 2>/dev/null || echo "0")

if [ "$value" -eq 2 ]; then
    echo "PASS: ASLR is correctly set to 2"
    exit 0
else
    echo "FAIL: kernel.randomize_va_space is set to $value (should be 2)"
    exit 1
fi
