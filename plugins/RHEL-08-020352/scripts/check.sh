#!/bin/bash
# Check for umask 077
for file in /etc/profile /etc/bashrc; do
    grep -q "umask 077" "$file" 2>/dev/null && echo "PASS: $file" || echo "FAIL: $file"
done
exit 0