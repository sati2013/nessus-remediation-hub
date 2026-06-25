#!/bin/bash
grep -q "dcredit=-1" /etc/security/pwquality.conf && echo "PASS" || echo "FAIL"
exit 0