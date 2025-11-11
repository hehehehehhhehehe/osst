@ECHO OFF
REM првиязка к гиту. ECHO OFF отключает отображение введённых команд для пользователя
REM запрос имени пользователя и адреса почты. set задаёт переменную, /p для ввода данных пользователем, username\email - имя переменной
SET /P username=vvedite svoe imya polzovatelya:
SET /P email=vvedite svoj email: 

REM проверка введённых данных на пустой ввод
IF "%username%"=="" (
    ECHO vy ne vveli imya polzovatelya.
    PAUSE
    EXIT /B
)

IF "%email%"=="" (
    ECHO vy ne vveli email adres.
    PAUSE
    EXIT /B
)

REM команда устанавливает глобальную переменную конфигурации Git user.name с использованием введённого пользователе значения переменной username. Параметр global применяется для внесения изменений в глобальный конфиг.
git config --global user.name "%username%"
git config --global user.email "%email%"

REM вывод подтверждения и текущих настроек
ECHO nastrojki primeneny.
git config --global user.name
git config --global user.email

REM пауза перед очисткой настроек
ECHO.
ECHO nazhmite lyubuyu klaviatu dlya otkata nastroek
PAUSE

REM удаление значений в конфиге с помощтю параметра unset
git config --global --unset user.name
git config --global --unset user.email

ECHO nastrojki uspeshno otmeneni.
PAUSE