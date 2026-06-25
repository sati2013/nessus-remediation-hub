#!/bin/bash
if authselect current 2>/dev/null | grep -q sha512; then
    echo "PASS: SHA-512 password hashing enabled"
    exit 0
else
    echo "FAIL: SHA-512 not enabled"
    exit 1
fi