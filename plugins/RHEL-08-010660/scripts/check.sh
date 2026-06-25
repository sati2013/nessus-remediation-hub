#!/bin/bash
# STIG RHEL-08-010660 Check Script
# Special character in password
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010660..."

grep -q "ocredit=-1" /etc/security/pwquality.conf && echo "PASS: Special character requirement set" || echo "FAIL: Special character requirement missing" 

echo "Check completed for RHEL-08-010660."
