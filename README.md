# Nessus Remediation Hub (STIG-Centric)

Centralized repository of remediation procedures and scripts for **DISA STIG RHEL 8** findings, with Nessus Plugin IDs noted per scanner.

## Structure

This repo is now organized by **official STIG Rule ID** (e.g., `RHEL-08-020352`).

Each STIG rule folder contains:
- `remediation.md` — STIG requirement + Nessus Plugin ID mapping
- `scripts/remediate.sh` — RHEL 8 remediation script
- `ansible/remediate.yml` — Ansible playbook (placeholder)

## How to Use

1. Identify the STIG rule from your compliance scan.
2. Go to `plugins/<RHEL-08-XXXXXX>/`
3. Run the remediation script or follow the steps.
4. Note the Nessus Plugin ID in the `remediation.md` for your specific scanner.

## STIG Rules Currently Covered

- RHEL-08-020352
- RHEL-08-010770
- RHEL-08-010730
- RHEL-08-010610
- RHEL-08-010590
- RHEL-08-010455
- RHEL-08-010420
- RHEL-08-010370
- RHEL-08-010331
- RHEL-08-010190
- RHEL-08-010731
- RHEL-08-010780
- RHEL-08-010690
- RHEL-08-010660
- RHEL-08-010741

## Nessus Plugin IDs

Different scanners (Nessus, OpenSCAP, SCAP Workbench, etc.) use different plugin/check IDs for the same STIG rule.  
The Nessus Plugin ID field in each `remediation.md` is left as `[To be filled per scanner]`.

## Status

STIG-rule centric structure implemented (June 2026).

Public repository.
