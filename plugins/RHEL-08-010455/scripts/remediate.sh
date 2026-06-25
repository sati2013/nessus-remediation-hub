#!/bin/bash
cat >> /etc/audit/auditd.conf <<EOF
max_log_file = 100
max_log_file_action = rotate
EOF
systemctl restart auditd
echo "Audit storage configured" 