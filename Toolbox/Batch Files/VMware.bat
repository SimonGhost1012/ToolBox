@echo off

echo Stopping all VMware processes...

:: List of common VMware process names to kill
set "vmwareProcesses=vmware.exe vmware-authd.exe vmware-hostd.exe vmware-vmx.exe vmware-tray.exe vmware-usbarbitrator64.exe vmplayer.exe vmware-vmrc.exe vmware-unity-helper.exe"

:: Loop through each process and attempt to kill it
for %%p in (%vmwareProcesses%) do (
    echo Killing process %%p...
    taskkill /F /IM %%p /T 2>nul
    if %errorLevel% neq 0 (
        echo Failed to kill process %%p or process not found.
    )
)

:: Use tasklist to find and kill any process with "vmware" in its name just in case some are missed
for /F "tokens=1" %%i in ('tasklist /FI "IMAGENAME eq vmware*" /NH') do (
    echo Killing process %%i...
    taskkill /F /IM %%i /T 2>nul
    if %errorLevel% neq 0 (
        echo Failed to kill process %%i or process not found.
    )
)

echo All VMware processes have been stopped.
exit