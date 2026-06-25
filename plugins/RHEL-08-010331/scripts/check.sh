#!/bin/bash
if grep -q "^gpgcheck=1" /etc/dnf/dnf.conf; then
    echo "PASS: GPG check enabled"
    exit 0
else
    echo "FAIL: GPG check disabled"
    exit 1
fi