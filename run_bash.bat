@echo off
setlocal

cd /d C:\ESI-OpenCFD\OpenFOAM\v2212\msys64

set USERNAME=ofuser
set USER=ofuser
set HOME=/home/ofuser

set FOAM_INIT=/home/ofuser/OpenFOAM/OpenFOAM-v2212/etc/bashrc

set CMD=%*

if "%CMD%"=="" (
    echo No command given
    exit /b 1
)

usr\bin\bash.exe -lc "source %FOAM_INIT% etc-mingw/pref.sh && %CMD%"

endlocal
