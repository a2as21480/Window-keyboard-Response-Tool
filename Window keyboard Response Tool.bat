@echo off
title Window Keboard Response tool
echo ���� �Ͻðڽ��ϱ�(Y/N)?
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
rem echo Last ~ �� ��� �⺻�� 0

reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v KeyboardSpeed /d 48 /f
rem echo �� ��ɾ�� �� ������ �� �����ӵ� ���� �⺻�� 31

pause
