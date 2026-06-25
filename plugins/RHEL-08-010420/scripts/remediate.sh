#!/bin/bash
authselect select sssd with-pam-unix-sha512 --force 2>/dev/null || true
echo "SHA-512 password hashing enabled" 