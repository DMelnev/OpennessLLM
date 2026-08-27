# Changelog

All notable changes to OpennessLLM are recorded in this file.

## 0.12.3 - 2026-08-27

- Prepared a sanitized public distribution without project-specific network,
  DB, field, equipment, or filesystem identifiers.
- Generalized the 24-bit `CommandMask` / `AllowedOutputMask` runtime write guard
  so it no longer depends on a project-specific DB name.
- Added an offline regression test for the generalized DWORD output-mask guard.
- Added a public-facing README, MIT license, security policy, contribution guide,
  and Windows CI workflow.
- Verification result: `self-test` passed `28/28`.

## 0.12.2 - 2026-06-27

- Fixed `sync-clone` acceptance of blocks added in TIA Portal.
- New accepted block rows now keep `SoftwarePath` in both `plc-blocks.csv` and
  `CLONE_PROJECT\_metadata\blocks.jsonl`.
- Updated the portable and internal documentation for the metadata fix.
- Verification result: `self-test` passed `27/27`.

## 0.12.1 - 2026-06-27

- Extended `plc-runtime-map` to classic non-optimized Global DBs declared as
  `DATA_BLOCK ... STRUCT ... END_STRUCT`.
- Kept Instance DB mapping through referenced FB declarations.
- Added support for quoted Global DB field names.
- Runtime-map source discovery works recursively under `CLONE_PROJECT\_root`.

## 0.12.0

- Added read-only PLC runtime snapshots in CSV, Markdown, JSON, raw HEX, and
  read-range report formats.

## 0.11.0

- Added direct PLC runtime access over S7comm / ISO-on-TCP.
- Added read-only DB probes, runtime maps, variable reads by name, and guarded
  runtime writes with dry-run behavior by default.

## 0.10.6

- Added TIA Portal V20-compatible PublicAPI resolution.
- Supported both `PublicAPI\VXX\net48\Siemens.Engineering.Base.dll` and the
  legacy `PublicAPI\VXX\Siemens.Engineering.dll` layout.
