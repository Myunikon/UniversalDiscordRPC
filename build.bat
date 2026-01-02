@echo off
cls
echo ==========================================
echo    Universal Discord RPC - Build Tool
echo ==========================================
echo.

echo [1/4] Cleaning old build files...
if exist build rd /s /q build
if exist dist rd /s /q dist

set ICON_ARG=
if exist icon.ico (
    set ICON_ARG=--icon="%~dp0icon.ico"
    echo [INFO] Icon found: icon.ico
) else (
    echo [WARNING] icon.ico tidak ditemukan. Menggunakan icon default.
)

echo.
echo [2/4] Installing requirements (Harap tunggu...)...
python -m pip install -q --disable-pip-version-check -r requirements.txt

echo.
echo [3/4] Building EXE (Mungkin butuh semenit...)...
python -m PyInstaller --log-level WARN --noconsole --onefile %ICON_ARG% --add-data "icon.ico;." --version-file="file_version_info.txt" --name "UniversalDiscordRPC" main.py

echo.
echo [4/4] Finishing up...
if not exist dist mkdir dist
copy config.json dist\ >nul

echo.
echo ==========================================
echo    BUILD BERHASIL!
echo ==========================================
echo Lokasi File: \dist\UniversalDiscordRPC.exe
echo.
echo TIP: Jika icon tetap tidak muncul, coba rename file .exe-nya atau copy ke folder Desktop.
echo.
pause