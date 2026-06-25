#!/bin/bash
# STIG RHEL-08-010731 Remediation Script
# RHEL 8 must limit concurrent sessions.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010731..."

# RHEL-08-010731: Limit concurrent sessions
echo "* hard maxlogins 10" > /etc/security/limits.d/99-stig-maxlogins.conf
echo "Concurrent sessions limited to 10" 

echo "STIG RHEL-08-010731 remediation completed."
