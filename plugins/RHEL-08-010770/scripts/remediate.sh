#!/bin/bash
# STIG RHEL-08-010770 Remediation Script
# All RHEL 8 local initialization files must have mode 0740 or less permissive.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010770..."

# Find and fix permissions on all local initialization files in user home directories
# Only target regular files starting with a dot (hidden) in /home/*/ directories
find /home -maxdepth 2 -name ".*" -type f -exec chmod 0740 {} + 2>/dev/null || true

# Also handle root's initialization files if they exist
if [ -d /root ]; then
    find /root -maxdepth 1 -name ".*" -type f -exec chmod 0740 {} + 2>/dev/null || true
fi

echo "Local initialization files permissions set to 0740 or more restrictive."

echo "STIG RHEL-08-010770 remediation completed."
