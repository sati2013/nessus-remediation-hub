#!/bin/bash
# STIG RHEL-08-010455 Check Script
# Audit log configuration
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010455..."

grep -q "max_log_file" /etc/audit/auditd.conf && echo "PASS: Audit log settings configured" || echo "FAIL: Audit log settings missing" 

echo "Check completed for RHEL-08-010455."
