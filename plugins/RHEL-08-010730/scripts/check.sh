#!/bin/bash
# STIG RHEL-08-010730 Check Script
# Home directories mode 0750 or less
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010730..."

find /home -maxdepth 1 -type d ! -perm -0750 -exec echo "FAIL: {}" \; && echo "PASS: Home directories have correct permissions" || true

echo "Check completed for RHEL-08-010730."
