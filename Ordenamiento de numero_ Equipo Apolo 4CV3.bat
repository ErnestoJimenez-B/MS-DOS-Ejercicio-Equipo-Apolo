@echo off
setlocal EnableDelayedExpansion

:menu
cls
echo ***********************************************
echo *** Ejercicio elaborado por el equipo Apolo ***
echo ******************* 4CV3 **********************
echo ***********************************************
echo ===============================================
echo               MENU DE OPCIONES
echo ===============================================
echo 1. Ordenar numeros de menor a mayor
echo 2. Ordenar numeros de mayor a menor
echo 3. Esperando...
echo =====================================
set /p opcion="Elija una opcion (1, 2, o 3): "

if "%opcion%"=="1" goto menor_mayor
if "%opcion%"=="2" goto mayor_menor
if "%opcion%"=="3" goto esperando
goto menu

:menor_mayor
cls
echo Ingrese varios numeros separados por espacios:
set /p input="Numeros: "

:: Convertimos los numeros en una lista
set i=0
for %%a in (%input%) do (
    set /a i+=1
    set num[!i!]=%%a
)

:: Ordenamiento burbuja de menor a mayor
for /l %%x in (1,1,!i!) do (
    for /l %%y in (1,1,!i!) do (
        if !num[%%x]! lss !num[%%y]! (
            set temp=!num[%%x]!
            set num[%%x]=!num[%%y]!
            set num[%%y]=!temp!
        )
    )
)

:: Mostrar los numeros ordenados
echo.
echo Numeros ordenados de menor a mayor:
for /l %%z in (1,1,!i!) do (
    echo !num[%%z]!
)
pause
goto menu

:mayor_menor
cls
echo Ingrese varios numeros separados por espacios:
set /p input="Numeros: "

:: Convertimos los numeros en una lista
set i=0
for %%a in (%input%) do (
    set /a i+=1
    set num[!i!]=%%a
)

:: Ordenamiento burbuja de mayor a menor
for /l %%x in (1,1,!i!) do (
    for /l %%y in (1,1,!i!) do (
        if !num[%%x]! gtr !num[%%y]! (
            set temp=!num[%%x]!
            set num[%%x]=!num[%%y]!
            set num[%%y]=!temp!
        )
    )
)

:: Mostrar los numeros ordenados
echo.
echo Numeros ordenados de mayor a menor:
for /l %%z in (1,1,!i!) do (
    echo !num[%%z]!
)
pause
goto menu

:esperando
cls
echo Esperando...
pause
goto menu
