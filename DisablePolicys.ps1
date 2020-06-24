netsh interface set interface "WiFi" Disable
netsh interface set interface "Wi-Fi" Disable
Start-Sleep 1

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name DisableRegistryTools -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name DisableTaskMgr -Value 0

Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name disablecad -Value 1

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name NoToolbarCustomize -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name DisallowRun -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name DisallowCpl -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name NoTrayContextMenu -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name NoSecurityTab -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Programs -Name NoInstalledUpdates -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Programs -Name NoWindowsFeatures -Value 0

Set-Variable -Name "user" -Value $env:UserName

Set-ItemProperty -Path 'Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders' -Name 'Startup' -Value 'C:\Users\$user\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'

Set-ItemProperty -Path 'Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders' -Name 'Startup' -Value '%AppData%\Microsoft\Windows\Start Menu\Programs\Startup'

Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDrives"

Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoViewOnDrive"

REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Internet Explorer\Control Panel" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /f

REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\MMC" /f

REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Network Connections" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /f

REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Policies\Google" /f

netsh interface set interface "WiFi" Enable

netsh interface set interface "Wi-Fi" Enable
