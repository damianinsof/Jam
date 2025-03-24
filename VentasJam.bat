@echo off
@echo *********  Bienvenido Lolo !!! *********
@echo **     Programa Master Inicializado   **
@echo ****************************************

::cd /d "C:\Program Files\xampp"
cd /d "C:\xampp"
start xampp-control.exe


:: actualizar copia 
cd /d "C:\sistemas\jam"
git pull
@echo Actualizando ........
timeout /t 15 /nobreak
@echo off

:: Ruta del archivo a copiar
set source_file=C:\sistemas\.env

:: Ruta de destino
set destination_dir=C:\sistemas\jam\back

:: Verificar si el archivo existe
if exist "%source_file%" (
    echo El archivo existe, copiando...
    copy "%source_file%" "%destination_dir%"
    echo Archivo .env copiado exitosamente.
) else (
    echo falta menos lolo..aguantá...
)
cd /d "C:\sistemas\jam"

start "Backend" "C:\sistemas\jam\Ejecutar2.bat"
start "Frontend" "C:\sistemas\jam\Ejecutar3.bat"
start chrome http://localhost:3000


