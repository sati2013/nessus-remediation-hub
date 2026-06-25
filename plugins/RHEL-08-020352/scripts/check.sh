#!/bin/bash
# Check umask 077
for file in /etc/profile /etc/bashrc; do
    if grep -q "umask 077" "$file" 2>/dev/null; then
        echo "PASS: $file"
    else
        echo "FAIL: $file missing umask 077"
        exit 1
    fi
done
echo "PASS: umask 077 configured"
exit 0