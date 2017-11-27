@echo off

call config.bat

:start

echo.

wget --no-cache --spider --user=%USER% --password=%PASSWORD% %URL%
echo [%time% %date%] Checked>> %~dp0log.txt

echo.

rem Check if log size is greater then 5mb if true delete 

set file="%~dp0log.txt"
set maxbytesize=5000000

FOR /F "usebackq" %%A IN ('%file%') DO set size=%%~zA

if %size% GTR %maxbytesize% (
    del %~dp0log.txt
)

timeout /t %DELAY%

goto start