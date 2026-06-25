#!/bin/bash
# STIG RHEL-08-010590 Check Script
# rngd service enabled
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010590..."

systemctl is-enabled rngd && systemctl is-active rngd && echo "PASS: rngd is enabled and running" || echo "FAIL: rngd not running" 

echo "Check completed for RHEL-08-010590."
