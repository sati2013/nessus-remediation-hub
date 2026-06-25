#!/bin/bash
# STIG RHEL-08-020352 Remediation Script
# RHEL 8 must set the umask value to 077 for all local interactive user accounts.
#
# This script follows the official DISA STIG recommendation.

set -euo pipefail

echo "Applying STIG RHEL-08-020352..."

# RHEL-08-020352: Set umask 077 for interactive users
for file in /etc/profile /etc/bashrc /etc/csh.cshrc ~/.bash_profile ~/.bashrc; do
    [ -f "$file" ] && sed -i '/umask/d' "$file"
    echo 'umask 077' >> "$file"
done
echo "Umask set to 077 for interactive users" 

echo "STIG RHEL-08-020352 remediation completed."
