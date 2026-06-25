#!/bin/bash
# STIG RHEL-08-010770 Remediation Script
# All RHEL 8 local initialization files must have mode 0740 or less permissive.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010770..."

# RHEL-08-010770: Fix permissions on local init files
find /home -maxdepth 2 -name ".*" -type f -exec chmod 0740 {} \;
echo "Local initialization files permissions set to 0740" 

echo "STIG RHEL-08-010770 remediation completed."
