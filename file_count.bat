chcp 65001
@echo off

set "subdirectory=Командная строка"
set "file_count=0"
for /r "%~dp0%subdirectory%" %%A in (*) do set /a "file_count+=1"
echo Кількість файлів в підкаталозі "%subdirectory%": %file_count%

set "subdirectory=batch"
set "file_count=0"
for /f %%B in ('dir /a-d-h /b /s "%~dp0%subdirectory%" ^| find /v /c "::"') do set "file_count=%%B"
echo Кількість файлів в підкаталозі "%subdirectory%": %file_count%

echo Виконання завершено!
pause


