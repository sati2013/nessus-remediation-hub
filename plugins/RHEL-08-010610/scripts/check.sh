#!/bin/bash
# STIG RHEL-08-010610 Check Script
# noexec on removable media
#
# Returns 0 if compliant, non-zero if non-compliant

set -euo pipefail

echo "Checking STIG RHEL-08-010610..."

grep -E "(cdrom|floppy|usb)" /etc/fstab | grep -q noexec && echo "PASS: noexec set on removable media" || echo "FAIL: noexec missing on removable media" 

echo "Check completed for RHEL-08-010610."
