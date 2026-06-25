#!/bin/bash
sed -i 's/\(cdrom\|floppy\|usb\)/& noexec/' /etc/fstab || true
echo "noexec added to removable media" 