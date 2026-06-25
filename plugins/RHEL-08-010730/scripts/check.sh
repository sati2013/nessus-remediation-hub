#!/bin/bash
if find /home -maxdepth 1 -type d ! -perm -0750 | head -1 | grep -q .; then
    echo "FAIL: Some home directories have excessive permissions"
    exit 1
else
    echo "PASS: All home directories have mode 0750 or less permissive"
    exit 0
fi