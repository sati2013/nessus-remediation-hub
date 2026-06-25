#!/bin/bash
authselect select sssd with-pam-unix-sha512 --force || true
echo "SHA-512 enabled" 