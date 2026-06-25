#!/bin/bash
grep -q "maxlogins 10" /etc/security/limits.d/*.conf 2>/dev/null && echo "PASS" || echo "FAIL"
exit 0