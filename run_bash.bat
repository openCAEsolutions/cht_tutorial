@echo off
setlocal

cd /d C:\ESI-OpenCFD\OpenFOAM\v2212\msys64

set USERNAME=ofuser
set USER=ofuser
set HOME=/home/ofuser

rem ----------------------------
rem OpenFOAM environment laden
rem ----------------------------
set FOAM_INIT=/home/ofuser/OpenFOAM/OpenFOAM-v2212/etc/bashrc

rem ----------------------------
rem Alles nach dem ersten Argument = Command
rem ----------------------------
set CMD=%*

if "%CMD%"=="" (
    echo No command given
    exit /b 1
)

rem ----------------------------
rem Start MSYS2 + OpenFOAM + Command
rem ----------------------------
usr\bin\bash.exe -lc "source %FOAM_INIT% etc-mingw/pref.sh && %CMD%"

endlocal