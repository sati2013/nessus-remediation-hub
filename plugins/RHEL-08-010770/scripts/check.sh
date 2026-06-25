#!/bin/bash
# Check local init files <= 0740
if find /home -maxdepth 2 -name ".*" -type f ! -perm -0740 | head -1 | grep -q .; then
    echo "FAIL: Some initialization files have excessive permissions"
    exit 1
else
    echo "PASS: All local initialization files have mode 0740 or less permissive"
    exit 0
fi