#!/bin/bash
if authselect current 2>/dev/null | grep -q faillock; then
    echo "PASS: pam_faillock enabled"
    exit 0
else
    echo "FAIL: pam_faillock not enabled"
    exit 1
fi