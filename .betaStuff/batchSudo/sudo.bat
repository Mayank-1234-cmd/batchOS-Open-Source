@echo off
title batchOS - SUDO
echo batchOS Sudo Interpreter
goto sudo


:sudo
cls
echo.
echo Enter Command:
set command=
set /p command=

goto commands

:commands
if %command%== $sudo_time.disp goto timedisp
if %command%== $sudo_time.change goto changetime
if %command%== $sudo_date.disp goto timedisp
if %command%== $sudo_date.change goto changetime
if %command%== $sudo_dtime.disp goto timedisp
goto error
:: batch comment  its same as else goto error
:timedisp
echo %time% %date
echo When you are done viewing,
pause
goto sudo
:changetime
echo This command requires elevation. Go to batchOS-Open-Source/.betaStuff/batchSudo/sudo.bat and click run as admin
set /p sudotime=change time (ex. 03:30:01):
set /p sudodate=change date (ex. 06/02/01):
time %sudotime%
date %sudodate%
cls
goto sudo
:error
start error.vbs
goto sudo
