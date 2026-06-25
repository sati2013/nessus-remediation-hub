#!/bin/bash
grep -q max_log_file /etc/audit/auditd.conf && echo "PASS" || echo "FAIL"
exit 0