#!/bin/bash
# STIG RHEL-08-010660 Remediation Script
# RHEL 8 must enforce password complexity (special character).
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010660..."

# RHEL-08-010660: Require special character
echo "ocredit=-1" >> /etc/security/pwquality.conf
echo "Special character requirement enabled" 

echo "STIG RHEL-08-010660 remediation completed."
