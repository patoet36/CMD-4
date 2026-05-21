@echo off
title Diagnostico de Red Avanzado
color 0A

:MENU
cls
echo =========================================
echo      MENU DE DIAGNOSTICO DE RED
echo =========================================
echo.
echo 1. Verificacion de Bucle Local
echo 2. Obtener IP de la placa
echo 3. Prueba de Conectividad Estandar
echo 4. Monitoreo Continuo (-t)
echo 5. Definir Cantidad de Paquetes (-n)
echo 6. Prueba de Carga (-l)
echo 7. Resolucion de Nombres (-a)
echo 8. Informacion completa de red (IPCONFIG)
echo 9. Consulta DNS (NSLOOKUP)
echo 10. Rastreo de ruta (TRACERT)
echo 11. Salir
echo.
set /p opcion=Seleccione una opcion: 

if %opcion%==1 goto LOOPBACK
if %opcion%==2 goto IP
if %opcion%==3 goto STANDARD
if %opcion%==4 goto CONTINUO
if %opcion%==5 goto PAQUETES
if %opcion%==6 goto CARGA
if %opcion%==7 goto RESOLUCION
if %opcion%==8 goto IPCONFIG
if %opcion%==9 goto NSLOOKUP
if %opcion%==10 goto TRACERT
if %opcion%==11 goto FIN

goto MENU

:LOOPBACK
cls
echo =========================================
echo Verificacion de Bucle Local
echo =========================================
ping 127.0.0.1
pause
goto MENU

:IP
cls
echo =========================================
echo Obtener IP de la placa
echo =========================================
ipconfig
pause
goto MENU

:STANDARD
cls
echo =========================================
echo Prueba de Conectividad Estandar
echo =========================================
set /p sitio=Ingrese una URL o IP: 
ping %sitio%
pause
goto MENU

:CONTINUO
cls
echo =========================================
echo Monitoreo Continuo (-t)
echo =========================================
set /p sitio=Ingrese una URL o IP: 
echo Presione CTRL + C para detener
ping -t %sitio%
pause
goto MENU

:PAQUETES
cls
echo =========================================
echo Definir Cantidad de Paquetes (-n)
echo =========================================
set /p sitio=Ingrese una URL o IP: 
ping -n 10 %sitio%
pause
goto MENU

:CARGA
cls
echo =========================================
echo Prueba de Carga (-l)
echo =========================================
set /p sitio=Ingrese una URL o IP: 
ping -l 1000 %sitio%
pause
goto MENU

:RESOLUCION
cls
echo =========================================
echo Resolucion de Nombres (-a)
echo =========================================
set /p ip=Ingrese una direccion IP: 
ping -a %ip%
pause
goto MENU

:IPCONFIG
cls
echo =========================================
echo Informacion completa de red
echo =========================================
ipconfig /all
pause
goto MENU

:NSLOOKUP
cls
echo =========================================
echo Consulta DNS (NSLOOKUP)
echo =========================================
set /p dominio=Ingrese un dominio: 
nslookup %dominio%
pause
goto MENU

:TRACERT
cls
echo =========================================
echo Rastreo de ruta (TRACERT)
echo =========================================
set /p destino=Ingrese una URL o IP: 
tracert %destino%
pause
goto MENU

:FIN
echo Saliendo del programa...
exit