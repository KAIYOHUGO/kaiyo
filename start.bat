@echo off
echo starting...
echo.
choice /c sc /m "setting or continue? :"
if errorlevel 2 goto c
if errorlevel 1 goto s
goto err

::setting
:s
:r
set /p t=php path? :
echo %t% > kaiyo.ini
set /p t=md dir path? :
echo %t% >> kaiyo.ini
set /p t=sitemap path? :
echo %t% >> kaiyo.ini
echo.
echo all done
echo.
choice /c rc /m "reset or continue? :"
echo %errorlevel%
if errorlevel 2 goto c
if errorlevel 1 goto r
goto err

::continue
:c




echo.
echo all done! start server
echo.

pause
:err
echo.
echo unknow error. try again or report error at github
pause