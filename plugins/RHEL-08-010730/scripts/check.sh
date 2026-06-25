#!/bin/bash
find /home -maxdepth 1 -type d ! -perm -0750 | head -1
[ $? -ne 0 ] && echo "PASS: Home dirs <= 0750" || echo "FAIL"
exit 0