#!/bin/bash
if grep -q "ocredit=-1" /etc/security/pwquality.conf; then
    echo "PASS: Special character requirement set"
    exit 0
else
    echo "FAIL: Special character requirement missing"
    exit 1
fi