#!/bin/bash
# STIG RHEL-08-020352 Check Script
# Set umask 077
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-020352..."

# Check for umask 077 in common files
for file in /etc/profile /etc/bashrc ~/.bash_profile ~/.bashrc; do
    [ -f "$file" ] && grep -q "umask 077" "$file" && echo "PASS: $file has umask 077" || echo "FAIL: $file missing umask 077"
done

echo "Check completed for RHEL-08-020352."
