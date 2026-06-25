#!/bin/bash
if grep -q "U.S. Government" /etc/issue; then
    echo "PASS: DOD banner configured"
    exit 0
else
    echo "FAIL: DOD banner missing"
    exit 1
fi