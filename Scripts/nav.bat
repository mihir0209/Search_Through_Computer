@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo Usage: nav [filename] or nav.bat [filename]
    exit /b
)

set "filename=%~1"
set "ignore_folders=Program Files,Program Files (x86),Windows,ProgramData,System Volume Information,PerfLogs,"
set "ignore_folders=!ignore_folders:,= !"



for %%d in (D C E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist "%%d:\" (
        for %%i in (!ignore_folders!) do (
            echo %%f | findstr /i /c:"%%d:\%%i" >nul && (
                set "skip=1"
            )
        )
        echo Thamb, ithe check krto: %%d Drive...
        for /f "delims=" %%f in ('dir "%%d:\%filename%" /s /b 2^>nul') do (
            set "skip=0"
            if !skip! equ 0 (
                echo He ghe milala: %%f
                set "file_found=1"
                
                :ask_user
                set /p open_choice="Open karaych aahe ka? (Y for yes, any other key for no): "
                set "open_choice=!open_choice:~0,1!"
                set "open_choice=!open_choice:Y=y!"
                
                if /i "!open_choice!"=="y" (
                    echo Okkaych Master, karto open lagech...
                    start "" "%%f"
                    exit /b
                ) else (
                    echo Thik aahe master, open nahi krt...
                )
            )
        )
    )
)

if !file_found! equ 0 (
    echo Hii file sapdena rao kuthech.
)

endlocal