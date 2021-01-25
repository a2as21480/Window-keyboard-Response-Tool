@echo off
title Window Keboard Response tool
echo 실행 하시겠습니까(Y/N)?
echo.
set /p a=
if %a%==y goto excution
if %a%==y goto exit

:excution
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v AutoRepeatDelay  /d 200 /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v AutoRepeatRate /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v BounceTime /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v DelayBeforeAcceptance /d 0 /f

reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d 200 /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d 0 /f
rem echo Last ~ 는 모두 기본값 0

reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v KeyboardSpeed /d 48 /f
rem echo 이 명령어는 꾹 눌렀을 때 반응속도 조절 기본값 31

pause
