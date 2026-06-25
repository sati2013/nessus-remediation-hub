#!/bin/bash
# STIG RHEL-08-010331 Remediation Script
# RHEL 8 must verify certificates for package installation.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010331..."

# RHEL-08-010331: Enable GPG check
sed -i 's/^gpgcheck=.*/gpgcheck=1/' /etc/dnf/dnf.conf
echo "GPG check enabled for packages" 

echo "STIG RHEL-08-010331 remediation completed."
