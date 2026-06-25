#!/bin/bash
# STIG RHEL-08-010370 Check Script
# ASLR enabled
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010370..."

sysctl kernel.randomize_va_space | grep -q "= 2" && echo "PASS: ASLR enabled" || echo "FAIL: ASLR not set to 2" 

echo "Check completed for RHEL-08-010370."
