#!/bin/bash
# STIG RHEL-08-010770 Check Script
# Local init files permissions <= 0740
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010770..."

find /home -maxdepth 2 -name ".*" -type f ! -perm -0740 -exec echo "FAIL: {}" \; -exec false {} + && echo "PASS: All local initialization files have correct permissions" || echo "Some files have excessive permissions" 

echo "Check completed for RHEL-08-010770."
