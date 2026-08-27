param(
    [string[]]$Members = @("$env:COMPUTERNAME\Admin")
)

$ErrorActionPreference = "Stop"
$group = "Siemens TIA Openness"

foreach ($member in $Members) {
    try {
        Add-LocalGroupMember -Group $group -Member $member -ErrorAction Stop
        Write-Host "Added $member to '$group'."
    }
    catch {
        if ($_.Exception.Message -match "already") {
            Write-Host "$member is already in '$group'."
        }
        else {
            throw
        }
    }
}

Write-Host "Sign out of Windows and sign back in before running Openness tools."
