#!/bin/bash
find /home -maxdepth 2 -name ".*" -type f -exec chmod 0740 {} + 2>/dev/null || true
echo "Permissions fixed to 0740" 