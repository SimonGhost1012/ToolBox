@ECHO OFF

ECHO Deleting User temp files
DEL /S /Q /F "%TEMP%\*.*"
DEL /S /Q /F "%TMP%\*.*"

ECHO Deleting Local temp files
DEL /S /Q /F "%USERPROFILE%\Local Settings\Temp\*.*"
DEL /S /Q /F "%LOCALAPPDATA%\Temp\*.*"

ECHO Deleting Windows temp files
DEL /S /Q /F "%WINDIR%\temp\*.*"
FOR /D %%p IN ("%WINDIR%\Temp\*") DO RMDIR /S /Q "%%p"
ECHO Cleanup completed !
exit
