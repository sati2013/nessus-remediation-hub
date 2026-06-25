#!/bin/bash
# Set umask 077
for file in /etc/profile /etc/bashrc; do
    sed -i '/umask/d' "$file" 2>/dev/null || true
    echo 'umask 077' >> "$file"
done
echo "umask 077 applied" 