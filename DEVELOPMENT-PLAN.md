# Development Plan - Nessus Remediation Hub

**High-level phases for initial implementation.**

## Phase 0: Foundation (Current)

- [x] Initialize private GitHub repository
- [x] Professional README.md
- [x] Basic folder structure
- [ ] Create Obsidian tracking folder and index

## Phase 1: Core Structure

- Define standard plugin directory layout (`plugins/<id>/remediation.md`, `scripts/`, `verification/`)
- Create template files for remediation entries
- Build initial index of common high-severity plugin IDs (e.g., 10-20 popular ones)
- Simple Markdown index or README table of contents

## Phase 2: Lookup & Usability

- CLI tool (Python with Typer or Click) for searching by plugin ID or CVE
- Basic search script
- Example remediation entries for 5-10 real plugin IDs

## Phase 3: Automation & Integration

- Scripts for common remediation categories (e.g., patch management, config hardening)
- Parser for Nessus .nessus or CSV exports to suggest remediations
- Optional n8n or webhook integration points

## Phase 4: Polish & Sharing

- Documentation, contribution guidelines
- Verification checklists
- Rollback procedures
- Internal training / handoff

**Note**: This is a living document. Detailed tasks will be tracked in GitHub Issues once development starts.

See Obsidian `03 - Development Plan.md` for any expanded details.