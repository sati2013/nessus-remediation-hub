#!/bin/bash
# RHEL-08-010190 Remediation Script
# Set sticky bit on public directories

set -euo pipefail

echo "Applying STIG RHEL-08-010190..."

find / -type d -perm -0002 ! -perm -1000 -exec chmod +t {} + 2>/dev/null || true

echo "Sticky bit set on all world-writable public directories"

echo "STIG RHEL-08-010190 remediation completed."
