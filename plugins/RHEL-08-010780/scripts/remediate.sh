#!/bin/bash
authselect enable-feature with-faillock 2>/dev/null || true
echo "pam_faillock enabled" 