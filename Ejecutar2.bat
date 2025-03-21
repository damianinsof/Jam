@echo off
@echo *******************************
@echo Bienvenido Lolo !!!
@@echo - - - Activado Backend - - - -  
echo *******************************
::cd /d C:\Users\damia\desktop\lolo\back
@copy /y C:\sistemas\.env C:\sistemas\jam\Back
@cd /d "C:\sistemas\jam\Back"
::start "Ventana Back" cmd /k "npm run dev"
@node out.js
::echo Servidor backend iniciado.
::pause
