@echo off
setlocal

set JAVA_HOME=C:\Program Files\Java\jdk-17
set PATH=%JAVA_HOME%\bin;%PATH%
if not defined GITHUB_TOKEN set GITHUB_TOKEN=%GITHUB_TOKEN%
set GITHUB_ACTOR=testiwy268

cd /d "%~dp0"

echo === Java ===
java -version 2>&1
echo.
echo === Cleaning and Building ===
call gradlew.bat clean :patches:buildAndroid --no-daemon -Pgpr.key=%GITHUB_TOKEN% -Pgpr.user=%GITHUB_ACTOR% 2>&1

if %ERRORLEVEL% EQU 0 (
    echo.
    echo [SUCCESS] Patches generated:
    for /r patches\build\libs %%f in (*.mpp) do echo   %%f
    echo.
    echo === To apply to APK ===
    echo java -jar morphe-cli.jar patch --patches "patches\build\libs\patches-*.mpp" dualspace.apk
) else (
    echo.
    echo [FAILED] See errors above.
)
pause

