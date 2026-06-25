#!/bin/bash
# STIG RHEL-08-010730 Remediation Script
# All RHEL 8 local interactive user home directories must have mode 0750 or less permissive.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010730..."

# RHEL-08-010730: Fix home directory permissions
for dir in /home/*; do
    [ -d "$dir" ] && chmod 0750 "$dir"
done
echo "Home directories set to 0750" 

echo "STIG RHEL-08-010730 remediation completed."
