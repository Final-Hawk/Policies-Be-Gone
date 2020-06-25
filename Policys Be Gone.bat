
set "Location=%cd%"

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%Location%\DisablePolicys.ps1""' -Verb RunAs}
TIMEOUT /T 1
taskkill /im explorer.exe /f
TIMEOUT /T 1
start explorer.exe

