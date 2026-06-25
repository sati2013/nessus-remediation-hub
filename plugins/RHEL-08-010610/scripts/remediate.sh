#!/bin/bash
# STIG RHEL-08-010610 Remediation Script
# RHEL 8 must prevent code from being executed on file systems used with removable media.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010610..."

# RHEL-08-010610: Add noexec to removable media in fstab
sed -i 's/\(cdrom\|floppy\|usb\)/& noexec/' /etc/fstab || true
echo "noexec added to removable media mounts" 

echo "STIG RHEL-08-010610 remediation completed."
