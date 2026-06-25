#!/bin/bash
# STIG RHEL-08-010370 Remediation Script
# RHEL 8 must implement ASLR.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010370..."

# RHEL-08-010370: Enable ASLR
echo "kernel.randomize_va_space=2" > /etc/sysctl.d/99-stig-aslr.conf
sysctl --system
echo "ASLR enabled" 

echo "STIG RHEL-08-010370 remediation completed."
