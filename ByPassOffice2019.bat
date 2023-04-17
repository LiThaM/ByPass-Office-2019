@echo off
title iChip Bypass Windows 11 Office 2019
REM Bypass Windows 11 Office 2019
REM Author: Alejandro Castro
REM Latest update: 30/03/2023
cls
goto :elevation
:elevation
net session >nul 2>&1
if %errorLevel% == 0 (
cls && goto :main
) else (
echo Ejecuta como Administrador Por favor.
pause >nul && exit
)
goto :eof

:main
echo iChip ByPass Windows 11 Office 2019
echo.
echo.
echo KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK#
echo KKKKKKKKKKKKKKK    iKKKKKKKKKKKKKKKKKKKKKKKKKKKKK#
echo KKKKKKKKKKKKKK ;KKK KKKKKKKKKKKKKKKKKKKKKKKKKKKKK#
echo KKKKKKKKKK KKK KKKK KKK KKK KKK KKK    KKKKKKKKKK#
echo KKKKKKKKKK KKK KKKKfKKK KKK KKK KKK KKK KKKKKKKKK#
echo KKKKKKKKKK KKK KKKKKKKK KKK KKK KKK KKK KKKKKKKKK#
echo KKKKKKKKKK KKK KKKKKKKK     KKK KKK KKK KKKKKKKKK#
echo KKKKKKKKKK KKK KKKKKKKK KKK KKK KKK KK fKKKKKKKKK#
echo KKKKKKKKKK KKK KKKK KKK KKK KKK KKK   fKKKKKKKKKK#
echo KKKKKKKKKK KKK EKKK KKK KKK KKK KKK KKKKKKKKKKKKK#
echo KKKKKKKKKK KKK,     KKK KKK KKK KKK KKKKKKKKKKKKK#
echo KKKKKKKKKKKKKKKKKDKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK#
echo.
echo  Repo: https://github.com/LiThaM/ByPass-Office-2019
echo.
pause
echo Windows 11 Office 2019, para poder parchear el office 2019 en windows 11
echo.
echo  * Comprobamos carpetas si es x32 o x64
cd /d %ProgramFiles%\Microsoft Office\Office16
cd /d %ProgramFiles(x86)%\Microsoft Office\Office16
echo.
echo  * Buscamos y lanzamos Bypass Propio de Windows
for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2019VL*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x"
echo  * Lanzamos parches y licencia en sistema, activando desde el propio sistema de licencias de Windows 11/Windows 10
cscript ospp.vbs /setprt:1688
cscript ospp.vbs /unpkey:6MWKP >nul
cscript ospp.vbs /inpkey:NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP
cscript ospp.vbs /sethst:kms.digiboy.ir
cscript ospp.vbs /act
echo.
echo.
pause && cls
goto :eof

:end
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof
