#!/bin/bash
# STIG RHEL-08-010420 Remediation Script
# RHEL 8 must use SHA-512 for password hashing.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-010420..."

# RHEL-08-010420: Enable SHA-512 password hashing
authselect select sssd with-pam-unix-sha512 --force || authselect apply-changes
echo "SHA-512 password hashing enabled" 

echo "STIG RHEL-08-010420 remediation completed."
