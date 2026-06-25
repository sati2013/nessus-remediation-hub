#!/bin/bash
echo "kernel.randomize_va_space=2" > /etc/sysctl.d/99-stig-aslr.conf
sysctl --system
echo "ASLR enabled" 