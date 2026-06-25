#!/bin/bash
if grep -q "maxlogins 10" /etc/security/limits.d/*.conf 2>/dev/null; then
    echo "PASS: Concurrent sessions limited"
    exit 0
else
    echo "FAIL: maxlogins not limited"
    exit 1
fi