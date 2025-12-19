@echo off
call :logs_edit ECHO_OFF
chcp 65001 >nul
setlocal enabledelayedexpansion
setlocal

:logs_edit
for /f "delims=" %%i in ('powershell -c "(Get-Content 'logs.txt' -Raw)"') do (
    set "logs_info=%%i"
)

> "logs.txt" echo %logs_info% %1
