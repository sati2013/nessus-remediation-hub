#!/bin/bash
# RHEL 8 Remediation Script for Nessus Plugin 1001401
# RHEL 8 - /etc/passwd ownership and permissions
#
# WARNING: Review before running. Customize based on your exact Nessus plugin output.
# Test in non-production first.

set -euo pipefail

echo "=== Remediation for Nessus Plugin 1001401 ==="
echo "Target: RHEL 8"

# Example remediation logic (customize per plugin)
case 1001401 in
    1001401)
        # /etc/passwd ownership
        chown root:root /etc/passwd
        chmod 0644 /etc/passwd
        echo "Fixed /etc/passwd permissions"
        ;;
    1001490)
        # Disable root SSH login
        if grep -q '^PermitRootLogin' /etc/ssh/sshd_config; then
            sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
        else
            echo "PermitRootLogin no" >> /etc/ssh/sshd_config
        fi
        systemctl restart sshd
        echo "Disabled root SSH login"
        ;;
    1001498)
        # Disable common unnecessary services
        for svc in avahi-daemon cups bluetooth; do
            if systemctl is-enabled "$svc" &>/dev/null; then
                systemctl disable --now "$svc" || true
                echo "Disabled $svc"
            fi
        done
        ;;
    1001521)
        # Basic sysctl hardening
        cat >> /etc/sysctl.d/99-nessus-1001401.conf <<EOF
net.ipv4.conf.all.rp_filter = 1
net.ipv4.conf.default.rp_filter = 1
net.ipv4.icmp_echo_ignore_broadcasts = 1
kernel.randomize_va_space = 2
EOF
        sysctl --system
        echo "Applied kernel hardening parameters"
        ;;
    *)
        echo "No specific remediation implemented yet for plugin 1001401."
        echo "Please provide the exact Nessus plugin description to implement targeted fixes."
        ;;
esac

echo "=== Remediation attempt completed for plugin 1001401 ==="
echo "Please re-scan with Nessus to verify."
