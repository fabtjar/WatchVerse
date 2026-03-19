$Path = "$env:LOCALAPPDATA\UnrealEditorFortnite\Saved\Logs\UnrealEditorFortnite.log"

Clear-Host
Write-Host "--- Verse Log Streamer ---" -ForegroundColor Cyan

Get-Content $Path -Wait -Tail 0 | Where-Object { $_ -match "LogVerse" } | ForEach-Object {
    Write-Host ($_ -replace "^.*LogVerse:\s*(:\s*)?", "")
}
