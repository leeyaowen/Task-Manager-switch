@echo off
set /p var=Turn on Taskmgr?[Y/N]: 
if %var%== Y reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f

rem disable Task Manager
if not %var%== Y reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f


pause