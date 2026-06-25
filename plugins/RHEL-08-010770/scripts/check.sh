#!/bin/bash
find /home -maxdepth 2 -name ".*" -type f ! -perm -0740 | head -1
[ $? -ne 0 ] && echo "PASS: All init files <= 0740" || echo "FAIL: Some files too permissive"
exit 0