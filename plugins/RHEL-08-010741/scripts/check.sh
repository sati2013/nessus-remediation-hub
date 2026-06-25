#!/bin/bash
if grep -q "deny = 3" /etc/security/faillock.conf; then
    echo "PASS: Account lockout set to 3 attempts"
    exit 0
else
    echo "FAIL: Lockout setting incorrect"
    exit 1
fi