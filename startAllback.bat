@echo off
setlocal

:: Replace with your CLSID GUID
set "CLSID={6566e6f4-11ec-dc01-46cf-809bfb8ef08}"

:: Define the registry key path dynamically
set "KeyPath=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\%CLSID%"

:: Set the (Default) value to a random number
reg add "%KeyPath%" /t REG_SZ /d "%RANDOM%" /f

echo.
echo (Default) registry value set successfully!
echo Key:   %KeyPath%
echo Value: %RANDOM%
echo.
pause