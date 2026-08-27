param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$Arguments
)

$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$exe = Join-Path $scriptDir "bin\OpennessLLM.exe"

if (-not (Test-Path $exe)) {
    & (Join-Path $scriptDir "build.ps1")
}

& $exe @Arguments
