Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name DisableRegistryTools -Value 0



Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name DisableTaskMgr -Value 0


Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name disablecad -Value 1



Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name NoToolbarCustomize -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name DisallowRun -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name NoTrayContextMenu -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name DisablePersonalDirChange -Value 0

Set-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name NoSecurityTab -Value 0


Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDrives"

Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoViewOnDrive"

REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Policies\Google" /f
