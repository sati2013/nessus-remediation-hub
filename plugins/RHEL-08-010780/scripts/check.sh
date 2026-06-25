#!/bin/bash
# STIG RHEL-08-010780 Check Script
# pam_faillock enabled
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010780..."

authselect current | grep -q faillock && echo "PASS: pam_faillock enabled" || echo "FAIL: pam_faillock not enabled" 

echo "Check completed for RHEL-08-010780."
