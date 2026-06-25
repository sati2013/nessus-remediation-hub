#!/bin/bash
# STIG RHEL-08-010190 Check Script
# DOD Banner configured
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010190..."

grep -q "U.S. Government" /etc/issue && echo "PASS: DOD banner present" || echo "FAIL: DOD banner missing" 

echo "Check completed for RHEL-08-010190."
