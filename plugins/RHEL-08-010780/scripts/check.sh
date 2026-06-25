#!/bin/bash
authselect current | grep -q faillock && echo "PASS" || echo "FAIL"
exit 0