#!/bin/bash
# STIG RHEL-08-010590 Remediation Script
# RHEL 8 must enable the hardware random number generator entropy gatherer service.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010590..."

# RHEL-08-010590: Enable rngd
systemctl enable --now rngd
echo "rngd service enabled" 

echo "STIG RHEL-08-010590 remediation completed."
