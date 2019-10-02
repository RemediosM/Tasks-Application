call runcrud.bat
if "%ERRORLEVEL%" == "0" goto openbrowser
echo.
echo There was an error in runcrud.bat
goto fail

:openbrowser
start "" http://localhost:8080/crud/v1/task/getTasks
if "%ERRORLEVEL%" == "0" goto end
echo.
echo Something went wrong.
goto fail


:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.