#!/bin/bash
grep -q "U.S. Government" /etc/issue && echo "PASS" || echo "FAIL"
exit 0