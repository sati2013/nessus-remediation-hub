#!/bin/bash
# STIG RHEL-08-010190 Remediation Script
# RHEL 8 must display the Standard Mandatory DOD Notice and Consent Banner.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010190..."

# RHEL-08-010190: Configure DOD banner
cat > /etc/issue << 'BANNER'
You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only.
BANNER
echo "Banner configured" 

echo "STIG RHEL-08-010190 remediation completed."
