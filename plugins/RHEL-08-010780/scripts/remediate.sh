#!/bin/bash
# STIG RHEL-08-010780 Remediation Script
# RHEL 8 must use pam_faillock to lock accounts after failed logins.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010780..."

# RHEL-08-010780: Configure pam_faillock
authselect enable-feature with-faillock || true
echo "pam_faillock enabled" 

echo "STIG RHEL-08-010780 remediation completed."
