#!/bin/bash
# STIG RHEL-08-010331 Check Script
# GPG check enabled
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010331..."

grep -q "^gpgcheck=1" /etc/dnf/dnf.conf && echo "PASS: GPG check enabled" || echo "FAIL: GPG check disabled" 

echo "Check completed for RHEL-08-010331."
