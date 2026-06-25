#!/bin/bash
# STIG RHEL-08-010690 Remediation Script
# RHEL 8 must enforce password complexity (numeric character).
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010690..."

# RHEL-08-010690: Require numeric character in passwords
echo "dcredit=-1" >> /etc/security/pwquality.conf
echo "Numeric character requirement enabled" 

echo "STIG RHEL-08-010690 remediation completed."
