#!/bin/bash
if grep -E 'cdrom|floppy|usb' /etc/fstab | grep -qv noexec; then
    echo "FAIL: noexec missing on removable media"
    exit 1
else
    echo "PASS: noexec set on removable media"
    exit 0
fi