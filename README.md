# UEFN Verse Log Streamer

A minimalist PowerShell utility to stream **Clean Verse Logs** from UEFN directly to your terminal. No timestamps, no clutter—just your `Print()` statements.

## Features
* **Real-time Streaming:** See your logs the instant they happen.
* **Zero Clutter:** Automatically strips UEFN timestamps and `LogVerse:` prefixes.
* **Lightweight:** A single script with no dependencies.

---

## Setup

1. **Download** the `WatchVerse.ps1` file.
2. **Right-click** the file and select **Run with PowerShell**.

> [!TIP]
> If your system blocks the script, open PowerShell and run:
> `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

---

## One-Liner (Fast Start)
Copy and paste this into a PowerShell window while UEFN is open to start streaming immediately:

```powershell
Get-Content "$env:LOCALAPPDATA\UnrealEditorFortnite\Saved\Logs\UnrealEditorFortnite.log" -Wait -Tail 0 | ?{$_ -match 'LogVerse'} | %{Write-Host ($_ -replace '^.*LogVerse:\s*(:\s*)?','')}
```

## Project Info
This project is kept intentionally lean to provide a distraction-free debugging environment.

> [!NOTE]
> This project was built with the assistance of AI (Gemini by Google).
