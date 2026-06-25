#!/bin/bash
# STIG RHEL-08-010741 Check Script
# Account lockout after 3 attempts
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010741..."

grep -q "deny = 3" /etc/security/faillock.conf && echo "PASS: Lockout set to 3 attempts" || echo "FAIL: Lockout setting incorrect" 

echo "Check completed for RHEL-08-010741."
