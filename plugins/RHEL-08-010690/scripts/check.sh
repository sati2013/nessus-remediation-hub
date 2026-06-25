#!/bin/bash
if grep -q "dcredit=-1" /etc/security/pwquality.conf; then
    echo "PASS: Numeric character requirement set"
    exit 0
else
    echo "FAIL: Numeric requirement missing"
    exit 1
fi