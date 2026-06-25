#!/bin/bash
sed -i 's/\(cdrom\|floppy\|usb\)/& noexec/' /etc/fstab 2>/dev/null || true
echo "noexec added to removable media" 