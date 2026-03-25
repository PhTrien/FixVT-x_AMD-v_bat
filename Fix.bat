@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=D:\Downloads\FixVT-xAMD-v.exe
REM BFCPEICON=C:\Program Files (x86)\Advanced BAT to EXE Converter v4.62\ab2econv462\icons\icon6.ico
REM BFCPEICONINDEX=2
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=1
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=Fix VT-x and AMD-v
REM BFCPEVERDESC=
REM BFCPEVERCOMPANY=
REM BFCPEVERCOPYRIGHT=Tool bt Ph Trien
REM BFCPEWINDOWCENTER=1
REM BFCPEDISABLEQE=0
REM BFCPEWINDOWHEIGHT=30
REM BFCPEWINDOWWIDTH=120
REM BFCPEWTITLE=Tool by Mhale
REM BFCPEOPTIONEND
@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
title Tool by Ph Trien
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

for /f %%a in ('echo prompt $E^| cmd') do set "ESC=%%a"
set "CYAN=%ESC%[96m"
set "GREEN=%ESC%[92m"
set "YELLOW=%ESC%[93m"
set "RED=%ESC%[91m"
set "RESET=%ESC%[0m"

:MENU
cls
echo.
echo.
echo %RESET%
echo %CYAN%                       ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗          %RESET%
echo %CYAN%                       ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║         %RESET%
echo %CYAN%                       ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║          %RESET%
echo %CYAN%                       ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║          %RESET%
echo %CYAN%                       ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗      %RESET%
echo %CYAN%                       ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝     %RESET%
echo.
echo                       [7;31mDI CHUYEN FILE "dgreadiness_v3.6" vao o C:\ ROI QUAY LAI DAY NHAN SO 8 DE CHAY[0m
echo.
echo.
echo                                        [1m1.  Disable Hyper-V Hypervisor[0m
echo.
echo                                        [1m2.  Tat HypervisorLaunchType + VsmLaunchType[0m
echo.
echo                                        [1m3.  Disable DISM features (Hyper-V, VMP, WHP)[0m[0m
echo.
echo                                        [1m4.  Tat VBS va Credential Guard[0m[0m[0m
echo.
echo                                        [1m5.  Set-ExecutionPolicy Unrestricted[0m[0m[0m[0m
echo.
echo                                        [1m6.  Chay DG_Readiness_Tool_v3.6.ps1 -Disable[0m[0m[0m[0m[0m
echo.
echo                                        [1m7.  Khoi dong lai may[0m[0m[0m[0m[0m[0m
echo.
echo                                        [93m8.  CHAY TAT CA[0m
echo.
echo                                        [1m0.  Thoat[0m[0m[0m[0m[0m[0m[0m

choice /c 1234567890 /n >nul

if errorlevel 10 goto EXIT
if errorlevel 8  goto STEPALL
if errorlevel 7  goto STEP7
if errorlevel 6  goto STEP6
if errorlevel 5  goto STEP5
if errorlevel 4  goto STEP4
if errorlevel 3  goto STEP3
if errorlevel 2  goto STEP2
if errorlevel 1  goto STEP1
goto MENU

:: ============================================================
:STEP1
cls
echo.
echo                  [BUOC 1] Disable Hyper-V Hypervisor...
echo.
start "" powershell -NoProfile -ExecutionPolicy Bypass -Command "Write-Host ''; Write-Host '  [BUOC 1] Disable Hyper-V Hypervisor...' -ForegroundColor Cyan; Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Hypervisor -NoRestart; Write-Host ''; Write-Host '  [XONG] Hoan tat.' -ForegroundColor Green; Write-Host ''; Write-Host '  Nhan phim bat ky de dong...' -ForegroundColor Yellow; $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')"
echo                  [OK] Da gui lenh - cua so PowerShell dang chay...
timeout /t 2 >nul
goto MENU

:: ============================================================
:STEP2
cls
echo.
echo                  [BUOC 2] bcdedit tat Hypervisor + VSM...
echo.
start "" cmd /k "echo. & echo   [BUOC 2] Dang chay bcdedit... & echo. & bcdedit /set hypervisorlaunchtype off & bcdedit /set vsmlaunchtype off & echo. & echo   [XONG] Hoan tat. & echo. & echo   Nhan phim bat ky de dong... & pause >nul & exit"
echo                  [OK] Da gui lenh - cua so CMD dang chay...
timeout /t 2 >nul
goto MENU

:: ============================================================
:STEP3
cls
echo.
echo                  [BUOC 3] DISM disable Hyper-V / VMP / WHP...
echo.
start "" cmd /k "echo. & echo   [BUOC 3] Dang chay DISM... & echo. & dism /online /disable-feature /featurename:Microsoft-Hyper-V-All /NoRestart & dism /online /disable-feature /featurename:VirtualMachinePlatform /NoRestart & dism /online /disable-feature /featurename:WindowsHypervisorPlatform /NoRestart & echo. & echo   [XONG] Hoan tat. & echo. & echo   Nhan phim bat ky de dong... & pause >nul & exit"
echo                  [OK] Da gui lenh - cua so CMD dang chay...
timeout /t 2 >nul
goto MENU

:: ============================================================
:STEP4
cls
echo.
echo                  [BUOC 4] Ghi Registry tat VBS + Credential Guard...
echo.
start "" cmd /k "echo. & echo   [BUOC 4] Dang ghi Registry... & echo. & reg add HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard /v EnableVirtualizationBasedSecurity /t REG_DWORD /d 0 /f & reg add HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v LsaCfgFlags /t REG_DWORD /d 0 /f & echo. & echo   [XONG] Hoan tat. & echo. & echo   Nhan phim bat ky de dong... & pause >nul & exit"
echo                  [OK] Da gui lenh - cua so CMD dang chay...
timeout /t 2 >nul
goto MENU

:: ============================================================
:STEP5
cls
echo.
echo                  [BUOC 5] Set-ExecutionPolicy Unrestricted...
echo.
start "" powershell -NoProfile -ExecutionPolicy Bypass -Command "Write-Host ''; Write-Host '  [BUOC 5] Dang dat ExecutionPolicy...' -ForegroundColor Cyan; Set-ExecutionPolicy Unrestricted -Force; Write-Host ''; Write-Host '  [XONG] ExecutionPolicy = Unrestricted.' -ForegroundColor Green; Write-Host ''; Write-Host '  Nhan phim bat ky de dong...' -ForegroundColor Yellow; $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')"
echo                  [OK] Da gui lenh - cua so PowerShell dang chay...
timeout /t 2 >nul
goto MENU

:: ============================================================
:STEP6
cls
echo.
if not exist "C:\dgreadiness_v3.6\DG_Readiness_Tool_v3.6.ps1" (
    echo                  [LOI] Khong tim thay:
    echo                  C:\dgreadiness_v3.6\DG_Readiness_Tool_v3.6.ps1
    echo.
    echo                  Hay dat file vao dung duong dan tren truoc khi chay.
    echo.
    timeout /t 4 >nul
    goto MENU
)
echo                  [BUOC 6] Chay DG_Readiness_Tool_v3.6.ps1 -Disable...
echo.
start "" powershell -NoProfile -ExecutionPolicy Bypass -Command "Write-Host ''; Write-Host '  [BUOC 6] Chay DG Readiness Tool -Disable...' -ForegroundColor Cyan; Set-Location 'C:\dgreadiness_v3.6'; .\DG_Readiness_Tool_v3.6.ps1 -Disable; Write-Host ''; Write-Host '  [XONG] Hoan tat.' -ForegroundColor Green; Write-Host ''; Write-Host '  Nhan phim bat ky de dong...' -ForegroundColor Yellow; $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')"
echo                  [OK] Da gui lenh - cua so PowerShell dang chay...
timeout /t 2 >nul
goto MENU

:: ============================================================
:STEP7
cls
echo.
echo                  [CANH BAO] Ban sap KHOI DONG LAI may!
echo.
choice /c yn /n /m "                  Xac nhan? (Y = Co  /  N = Huy): "
if errorlevel 2 goto MENU
start "" powershell -NoProfile -ExecutionPolicy Bypass -Command "Restart-Computer -Force"
echo.
echo                  [OK] May se khoi dong lai trong giay lat.
timeout /t 3 >nul
goto MENU


:: ============================================================
:STEPALL
cls
echo.
echo                  [CHAY TAT CA] Tat ca lenh se chay trong cua so nay.
echo.

set "SKIP6=0"
if not exist "C:\dgreadiness_v3.6\DG_Readiness_Tool_v3.6.ps1" (
    echo                  [!] Khong tim thay DG_Readiness_Tool - Buoc 6 se bi bo qua.
    echo                  Goi y: Hay dat file vao dung duong dan truoc khi chay.
    echo.
    set "SKIP6=1"
)

choice /c yn /n /m "                  Bat dau chay tat ca? (Y = Co  /  N = Huy): "
if errorlevel 2 goto MENU

echo.
echo  ------------------------------------------------------------
echo  [1/6] Disable Hyper-V Hypervisor...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Hypervisor -NoRestart"
echo  [OK] Buoc 1 hoan tat.
echo.

echo  [2/6] bcdedit tat HypervisorLaunchType + VsmLaunchType...
bcdedit /set hypervisorlaunchtype off
bcdedit /set vsmlaunchtype off
echo  [OK] Buoc 2 hoan tat.
echo.

echo  [3/6] DISM disable features...
dism /online /disable-feature /featurename:Microsoft-Hyper-V-All /NoRestart
dism /online /disable-feature /featurename:VirtualMachinePlatform /NoRestart
dism /online /disable-feature /featurename:WindowsHypervisorPlatform /NoRestart
echo  [OK] Buoc 3 hoan tat.
echo.

echo  [4/6] Ghi Registry tat VBS + Credential Guard...
reg add HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard /v EnableVirtualizationBasedSecurity /t REG_DWORD /d 0 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v LsaCfgFlags /t REG_DWORD /d 0 /f
echo  [OK] Buoc 4 hoan tat.
echo.

echo  [5/6] Set-ExecutionPolicy Unrestricted...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-ExecutionPolicy Unrestricted -Force"
echo  [OK] Buoc 5 hoan tat.
echo.

if "%SKIP6%"=="0" (
    echo  [6/6] Chay DG_Readiness_Tool -Disable...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-Location 'C:\dgreadiness_v3.6'; .\DG_Readiness_Tool_v3.6.ps1 -Disable"
    echo  [OK] Buoc 6 hoan tat.
) else (
    echo  [6/6] BO QUA - Khong tim thay DG_Readiness_Tool.
)

echo.
echo  [7;31m------------------------------------------------------------[0m
echo  [91m[LUU Y] KHI MAY KHOI DONG LEN  "F3" DE TIEP TUC[0m
echo  [7;31m------------------------------------------------------------[0m
echo.
choice /c yn /n /m "                  Khoi dong lai may ngay? (Y = Co  /  N = Quay menu): "
if errorlevel 2 goto MENU
powershell -NoProfile -ExecutionPolicy Bypass -Command "Restart-Computer -Force"

:: ============================================================
:EXIT
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                              ███████████  █████ █████ ██████████
echo                                             ░░███░░░░░███░░███ ░░███ ░░███░░░░░█
echo                                              ░███    ░███ ░░███ ███   ░███  █ ░ 
echo                                              ░██████████   ░░█████    ░██████   
echo                                              ░███░░░░░███   ░░███     ░███░░█   
echo                                              ░███    ░███    ░███     ░███ ░   █
echo                                              ███████████     █████    ██████████
echo                                             ░░░░░░░░░░░     ░░░░░    ░░░░░░░░░░ 
echo.
echo.
timeout /t 2 >nul
exit /b
