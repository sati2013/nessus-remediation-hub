# Nessus Remediation Hub

Centralized repository of remediation procedures, scripts, playbooks, and automation for Nessus vulnerability scanner findings, organized by Nessus plugin ID.

Quick lookup and consistent remediation across environments and teams.

## Features (Planned)

- Directory structure keyed by plugin ID (`plugins/<plugin-id>/`)
- Standardized remediation Markdown templates
- Reusable scripts (bash, Python, PowerShell, Ansible, etc.)
- Verification steps and rollback guidance
- Integration hooks for ticketing systems and scan report parsers
- Searchable index and CLI lookup tool

## Tech Direction

- Markdown-first knowledge base with optional CLI tool (Python/Typer or Go)
- Git-based for version control and collaboration
- Extensible with community or internal contributions

## Status

**Phase 1 complete** — Core structure + remediation templates in place.

- 14 plugin directories created with standardized `remediation.md`, bash script, and Ansible playbook placeholders.
- Template available in `templates/remediation.md`.
- Plugins covered: 1001401, 1001490, 1001498, 1001521, 1001524, 1001550, 1001559, 1001587, 1001600, 1001628, 1001503, 1001514, 1001496, 1001488

These appear to be custom/local compliance plugins (not publicly listed on tenable.com). Ready for content population from your Nessus reports.

See the full specification in Obsidian: [Nessus Remediation Hub](obsidian://open?vault=work&file=2-Areas%2FTech%2FApps%2F01%20Initial%20Ideas%2FNessus%20Remediation%20Hub)

## Contributing

TBD – standard PR process once development begins.

## License

Private repository. Internal use only.