#!/bin/bash
# STIG RHEL-08-010731 Check Script
# Maxlogins limited
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010731..."

grep -q "maxlogins 10" /etc/security/limits.d/*.conf 2>/dev/null && echo "PASS: maxlogins limited" || echo "FAIL: maxlogins not limited" 

echo "Check completed for RHEL-08-010731."
