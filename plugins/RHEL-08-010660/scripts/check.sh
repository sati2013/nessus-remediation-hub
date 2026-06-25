#!/bin/bash
grep -q "ocredit=-1" /etc/security/pwquality.conf && echo "PASS" || echo "FAIL"
exit 0