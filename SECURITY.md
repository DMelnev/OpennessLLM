# Security Policy

## Supported Versions

Security fixes are currently made on the latest released version only.

## Reporting a Vulnerability

Do not publish details of a suspected vulnerability in a public issue. Use the
repository's private security advisory feature when it is available. If private
reporting is temporarily unavailable, open a minimal issue asking the maintainer
for a private contact channel without including exploit details, credentials,
project files, PLC addresses, or production data.

Include the affected version, command, expected behavior, observed behavior,
and a minimal sanitized reproduction. State clearly whether the issue could
write to a TIA project, HMI, or live PLC.

## Operational Safety

OpennessLLM is an engineering aid, not a safety system. Its validation gates do
not replace project backups, offline review, TIA Portal compilation, controlled
commissioning, access control, or machinery safety procedures. Test write paths
against non-production projects and controllers first.

Never attach real credentials, proprietary project exports, controller memory
snapshots, network diagrams, or personally identifiable information to a public
report.
