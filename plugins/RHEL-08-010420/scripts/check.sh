#!/bin/bash
authselect current | grep -q sha512 && echo "PASS" || echo "FAIL"
exit 0