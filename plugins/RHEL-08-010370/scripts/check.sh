#!/bin/bash
sysctl kernel.randomize_va_space | grep -q "= 2" && echo "PASS" || echo "FAIL"
exit 0