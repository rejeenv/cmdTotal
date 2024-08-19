@echo off
title CMD-Total
echo Welcome in cmdTotal by rejeen, created using Volt options, version 1.0.0
echo.
set /p pass="Enter password: "
if "%pass%" NEQ "ebola" exit
:menu
cls
color d
chcp 65001 >nul
echo     ██╗   ██╗ █████╗ ██╗     ████████╗
echo     ██║   ██║██╔══██╗██║     ╚══██╔══╝
echo     ╚██╗ ██╔╝██║  ██║██║        ██║
echo      ╚████╔╝ ██║  ██║██║        ██║
echo       ╚██╔╝  ╚█████╔╝███████╗   ██║
echo        ╚═╝    ╚════╝ ╚══════╝   ╚═╝ user manager
echo.
echo.
echo userset  - User's settings
echo another options soon
echo.
set /p input="/ "
------------------------------Pierwszy input-----------------------
if %input% EQU userset (
    :usmenu
    cls
    echo.
    echo 1 List of users
    echo 2 Create a new user
    echo 3 Change a user password 
    echo 4 Delete a user 
    echo 0 Back to the menu
    echo.
    set /p input1="/ "
)
-------------------------------Pierwsza opcja--------------------------
    if %input1% EQU 1 (
        cls
        net user
        pause
        goto usmenu
    )
    if %input1% EQU 2 (
        cls
        set /p username="Enter the username: "
        set /p password="Enter the passord: "
        net user %username% %password% /add
        echo New user created.
        echo Username: %username%
        echo Password: %password%
        pause
        goto usmenu
    )
    if %input1% EQU 3 (
        cls
        set /p username="Enter the username: "
        set /p password="Enter the password: "
        net user %username% %password%
    )
    if %input1% EQU 4 (
        cls
        set /p username="Enter the username: "
        net user %username% /delete 
        pause>nul
        goto usmenu
    )
    if %input1% EQU 0 (
        goto menu
    )
if %input% EQU netinfo (
        cls
        echo info
        pause>nul
    )





    

pause