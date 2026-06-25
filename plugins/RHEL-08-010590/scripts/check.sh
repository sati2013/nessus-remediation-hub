#!/bin/bash
systemctl is-active --quiet rngd && echo "PASS: rngd running" || echo "FAIL"
exit 0