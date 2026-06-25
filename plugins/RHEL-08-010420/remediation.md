# RHEL-08-010420 Remediation

**STIG Rule:** RHEL-08-010420  
**Nessus Plugin ID:** [To be filled per scanner]

**Title:** RHEL 8 must be configured to use the pam_unix.so module with the sha512 option for password hashing.

## Requirement
Passwords must be hashed using SHA-512.

## Official STIG Fix
Configure authselect to use SHA-512 hashing.

## Source
Tenable Audit: DISA Red Hat Enterprise Linux 8 STIG (v2r6+)

## Automated Remediation (RHEL 8)
See `scripts/remediate.sh` and `scripts/check.sh`.

## Verification
Run `scripts/check.sh`

**Last Updated:** 2026-06-25
