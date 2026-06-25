#!/bin/bash
if sysctl kernel.randomize_va_space | grep -q "= 2"; then
    echo "PASS: ASLR enabled"
    exit 0
else
    echo "FAIL: ASLR not set correctly"
    exit 1
fi