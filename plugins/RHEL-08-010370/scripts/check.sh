#!/bin/bash
# RHEL-08-010370 Check Script
# Verify gpgcheck is enabled

set -euo pipefail

echo "Checking STIG RHEL-08-010370..."

if grep -q "^gpgcheck=1" /etc/dnf/dnf.conf; then
    echo "PASS: gpgcheck is enabled"
    exit 0
else
    echo "FAIL: gpgcheck is not enabled or not set to 1"
    exit 1
fi
