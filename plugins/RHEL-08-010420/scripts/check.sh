#!/bin/bash
# STIG RHEL-08-010420 Check Script
# SHA-512 password hashing
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010420..."

authselect current | grep -q sha512 && echo "PASS: SHA-512 hashing enabled" || echo "FAIL: SHA-512 not enabled" 

echo "Check completed for RHEL-08-010420."
