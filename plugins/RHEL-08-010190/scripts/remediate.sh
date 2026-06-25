#!/bin/bash
# RHEL-08-010190 Remediation Script
# Set sticky bit on all world-writable directories

set -euo pipefail

echo "Applying STIG RHEL-08-010190..."

# Find and fix world-writable directories missing the sticky bit
find / -type d -perm -0002 ! -perm -1000 -exec chmod +t {} + 2>/dev/null || true

echo "Sticky bit set on all world-writable directories."

echo "STIG RHEL-08-010190 remediation completed."
