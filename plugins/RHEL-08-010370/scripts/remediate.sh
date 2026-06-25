#!/bin/bash
# RHEL-08-010370 Remediation Script
# Enable ASLR (kernel.randomize_va_space=2)

set -euo pipefail

echo "Applying STIG RHEL-08-010370..."

echo "kernel.randomize_va_space=2" > /etc/sysctl.d/99-stig-aslr.conf
sysctl --system

echo "ASLR enabled (kernel.randomize_va_space=2)"

echo "STIG RHEL-08-010370 remediation completed."
