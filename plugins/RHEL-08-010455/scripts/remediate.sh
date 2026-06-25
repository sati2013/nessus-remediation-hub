#!/bin/bash
# STIG RHEL-08-010455 Remediation Script
# RHEL 8 must allocate audit storage capacity proportionally.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010455..."

# RHEL-08-010455: Configure audit log rotation
cat > /etc/audit/auditd.conf <<EOF
max_log_file = 100
max_log_file_action = rotate
space_left = 100
EOF
systemctl restart auditd
echo "Audit storage configured" 

echo "STIG RHEL-08-010455 remediation completed."
