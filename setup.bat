@echo off
title Setup

set /p varUser="Enter username: "
set /p varPsw="Enter password: "

(
echo set USER=%varUser%
echo set PASSWORD=%varPsw%
echo set URL=www.example.com
echo set DELAY=60

)> %~dp0config.bat

SchTasks /Create /SC ONSTART /TN "HTTPAutoLogin" /TR "%~dp0service.vbs" /RL HIGHEST
echo.
echo You must restart your computer before the changes will take effect.
echo.
pause