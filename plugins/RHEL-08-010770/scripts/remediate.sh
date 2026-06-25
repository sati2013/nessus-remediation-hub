#!/bin/bash
# Fix local init file permissions
find /home -maxdepth 2 -name ".*" -type f -exec chmod 0740 {} + 2>/dev/null || true
echo "Local initialization files permissions set to 0740" 