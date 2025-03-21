@echo off
echo *******************************
echo Bienvenido Lolo !!!
echo - - - Activado Backend - - - -  
echo *******************************
::cd /d C:\Users\damia\desktop\lolo\back
cd C:\sistemas\Back
::start "Ventana Back" cmd /k "npm run dev"
node out.js
::echo Servidor backend iniciado.
::pause
