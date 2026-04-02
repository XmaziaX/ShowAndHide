@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
set "I18N_DIR=%SCRIPT_DIR%i18n"

if not exist "%I18N_DIR%\show_and_hide.pro" (
    echo [ERROR] File not found: "%I18N_DIR%\show_and_hide.pro"
    exit /b 1
)

set "LRELEASE_CMD="

for %%C in (lrelease lrelease-qt6 lrelease-qt5) do (
    where %%C >nul 2>nul
    if not errorlevel 1 (
        set "LRELEASE_CMD=%%C"
        goto :found_lrelease
    )
)

:found_lrelease
if "%LRELEASE_CMD%"=="" (
    echo [ERROR] Could not find lrelease in PATH.
    echo.
    echo Install Qt Linguist tools or add lrelease to PATH, then run again.
    exit /b 1
)

echo [INFO] Using %LRELEASE_CMD%
pushd "%I18N_DIR%"
%LRELEASE_CMD% "show_and_hide.pro"
if errorlevel 1 (
    popd
    echo [ERROR] Translation compilation failed.
    exit /b 1
)
popd

echo [OK] Translation files compiled successfully.
echo [OK] Generated files should be in "%I18N_DIR%".
exit /b 0
