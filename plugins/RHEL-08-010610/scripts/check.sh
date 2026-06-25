#!/bin/bash
grep -E 'cdrom|floppy|usb' /etc/fstab | grep -q noexec && echo "PASS" || echo "FAIL"
exit 0