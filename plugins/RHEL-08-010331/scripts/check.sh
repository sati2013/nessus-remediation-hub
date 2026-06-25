#!/bin/bash
grep -q "^gpgcheck=1" /etc/dnf/dnf.conf && echo "PASS" || echo "FAIL"
exit 0