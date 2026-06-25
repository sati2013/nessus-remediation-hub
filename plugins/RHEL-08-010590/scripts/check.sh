#!/bin/bash
if systemctl is-active --quiet rngd; then
    echo "PASS: rngd is running"
    exit 0
else
    echo "FAIL: rngd is not running"
    exit 1
fi