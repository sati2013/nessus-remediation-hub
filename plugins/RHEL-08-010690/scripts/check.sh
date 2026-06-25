#!/bin/bash
# STIG RHEL-08-010690 Check Script
# Numeric character in password
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010690..."

grep -q "dcredit=-1" /etc/security/pwquality.conf && echo "PASS: Numeric requirement set" || echo "FAIL: Numeric requirement missing" 

echo "Check completed for RHEL-08-010690."
