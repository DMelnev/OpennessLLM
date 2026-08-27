# Contributing to OpennessLLM

Thank you for helping improve OpennessLLM. Changes that touch engineering
projects or live PLC communication need especially careful review.

## Development Environment

- Use 64-bit Windows and Windows PowerShell.
- Keep TIA Portal projects, PLC clones, runtime maps, snapshots, credentials,
  logs, and generated binaries outside commits.
- Build with `build.ps1`; the script uses the .NET Framework 4.x C# compiler.
- TIA-connected testing requires a licensed local TIA Portal installation and
  membership in the `Siemens TIA Openness` Windows group.

## Before Opening a Pull Request

1. Keep the change focused and document any behavior or safety-gate change.
2. Add or update an offline self-test for logic that can be tested without TIA.
3. Run the build and complete self-test:

```powershell
.\build.cmd
.\run.cmd self-test --out .\out\self-test-current
```

4. Run `git diff --check` and inspect every staged file.
5. Confirm that no project files, exported PLC/HMI sources, runtime data, IP
   addresses, credentials, or proprietary Siemens binaries are included.

## Safety-Critical Changes

Pull requests that add or alter write operations must preserve dry-run behavior,
explicit opt-in flags, preflight validation, and useful audit output. Describe
the failure modes considered and the manual validation performed. Never use a
production controller as the first test target.

## Reporting Security Issues

Do not open a public issue for a vulnerability that could enable unsafe PLC/HMI
writes, disclose credentials, or expose project data. Follow `SECURITY.md`.
