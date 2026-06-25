#!/bin/bash
echo "* hard maxlogins 10" > /etc/security/limits.d/99-stig-maxlogins.conf
echo "Concurrent sessions limited to 10" 