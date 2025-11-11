@ECHO OFF
REM отключение отображения выполняемых команд
REM запрос пути директории. set задаёт переменную, /p для ввода данных пользователем, dir - имя переменной
SET /P dir="vvedite put': "

REM проверка директории на существование с помощью IF
IF NOT EXIST "%dir%" (
    ECHO directorii ne sushestvuet
    EXIT /B
)

REM запрос у пользователя расширения файла
SET /P ras="vvedite rashirenie faila bez tochki: "

REM проверка на пустой ввод
IF "%ras%"=="" (
    ECHO vy ne vveli rashirenie
    EXIT /B
)

REM выполнить команду DIR в указанной директории с указанным расширением
DIR "%dir%\*.%ras%" /B

PAUSE
