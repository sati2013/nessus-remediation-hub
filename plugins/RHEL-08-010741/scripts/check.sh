#!/bin/bash
grep -q "deny = 3" /etc/security/faillock.conf && echo "PASS" || echo "FAIL"
exit 0