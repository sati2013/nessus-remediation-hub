#!/bin/bash
# RHEL-08-010370 Remediation Script
# Enable gpgcheck in dnf

set -euo pipefail

echo "Applying STIG RHEL-08-010370..."

sed -i 's/^gpgcheck=.*/gpgcheck=1/' /etc/dnf/dnf.conf

echo "gpgcheck enabled in dnf configuration"

echo "STIG RHEL-08-010370 remediation completed."
