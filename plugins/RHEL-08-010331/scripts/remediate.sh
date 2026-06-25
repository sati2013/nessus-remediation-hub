#!/bin/bash
sed -i 's/^gpgcheck=.*/gpgcheck=1/' /etc/dnf/dnf.conf
echo "GPG check enabled for packages" 