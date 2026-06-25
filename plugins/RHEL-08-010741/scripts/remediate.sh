#!/bin/bash
# STIG RHEL-08-010741 Remediation Script
# RHEL 8 must lock accounts after three consecutive failed logon attempts.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010741..."

# RHEL-08-010741: Set account lockout to 3 attempts
echo "deny = 3" >> /etc/security/faillock.conf
echo "Account lockout set to 3 attempts" 

echo "STIG RHEL-08-010741 remediation completed."
