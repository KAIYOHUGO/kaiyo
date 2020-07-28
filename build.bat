@echo off
echo starting...
echo.
set fp=%~p0
set floder=%1
set map=%2
set /a i=1
echo ^<?xml version="1.0" encoding="UTF-8"?^>^<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd"^> > %map%
:l
if exist %floder%\%i%.md (
  echo.
  echo %i%
  echo ^<url^>^<loc^>https://kaiyohugo.functionxyz.eu.org/blog.html?article%i%^</loc^>^<priority^>0.80^</priority^>^</url^> >> %map%
  set /a i=i+1
  goto l
) else (
  echo ^</urlset^> >> %map%
  echo.
  echo sitemap done!
  echo.
)
for /r %floder%\files\ %%a in (*) do (
  if not exist %%~dpa%%~na.webp (
    %fp%\cwebp.exe %%~fa -o %%~dpa%%~na.webp
  )
)
echo webp done

goto end

::error
:err
echo.
echo "unknow error. try again or report error at github"

:end
pause
