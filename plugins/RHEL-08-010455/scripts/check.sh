#!/bin/bash
if grep -q "max_log_file" /etc/audit/auditd.conf; then
    echo "PASS: Audit log settings configured"
    exit 0
else
    echo "FAIL: Audit log settings missing"
    exit 1
fi