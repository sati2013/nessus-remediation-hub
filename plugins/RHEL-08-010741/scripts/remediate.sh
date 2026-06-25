#!/bin/bash
# RHEL 8 Remediation Script for RHEL-08-010741
# RHEL 8 must lock accounts after three consecutive failed logon attempts.
#
# This script applies the STIG requirement.
# Review before running in production.

set -euo pipefail

echo "Applying STIG RHEL-08-010741 on RHEL 8..."

# Example logic (customize per rule)
case "RHEL-08-010741" in
    RHEL-08-020352)
        # Enable NX (non-executable) protection via kernel
        echo "kernel.exec-shield=1" >> /etc/sysctl.d/99-stig-RHEL-08-010741.conf || true
        sysctl -p /etc/sysctl.d/99-stig-RHEL-08-010741.conf || true
        ;;
    RHEL-08-010770|RHEL-08-010780|RHEL-08-010741)
        # pam_faillock configuration
        authselect enable-feature with-faillock || true
        ;;
    RHEL-08-010730|RHEL-08-010731)
        # Limit concurrent sessions
        echo "* hard maxlogins 10" > /etc/security/limits.d/99-stig-maxlogins.conf
        ;;
    RHEL-08-010610|RHEL-08-010190)
        # DOD banner
        cat > /etc/issue << 'BANNER'
You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only.
BANNER
        ;;
    RHEL-08-010420)
        # SHA512 password hashing
        authselect select sssd with-pam-unix-sha512 --force || true
        ;;
    RHEL-08-010370)
        # ASLR
        echo "kernel.randomize_va_space=2" >> /etc/sysctl.d/99-stig-aslr.conf
        sysctl --system
        ;;
    RHEL-08-010690)
        echo "minlen=15" >> /etc/security/pwquality.conf || true
        ;;
    RHEL-08-010660)
        echo "ocredit=-1" >> /etc/security/pwquality.conf || true
        ;;
    *)
        echo "No specific automated remediation implemented yet for RHEL-08-010741."
        ;;
esac

echo "STIG RHEL-08-010741 remediation completed."
