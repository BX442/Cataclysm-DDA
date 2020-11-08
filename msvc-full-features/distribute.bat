@echo off
mkdir distribution_%Date:~0,2%.%Date:~3,2%.%Date:~6,4%_%TIME:~0,2%.%TIME:~0,2%.%TIME:~6,2%
xcopy dll\*.dll distribution\
xcopy /s /e /i ..\data distribution\data
xcopy /s /e /i ..\config distribution\config
xcopy /s /e /i ..\gfx distribution\gfx
xcopy /s /e /i ..\lang\mo distribution\lang\mo
copy ..\Cataclysm*.exe distribution\
echo Distribution files has been put into `distribution_%Date:~0,2%.%Date:~3,2%.%Date:~6,4%_%TIME:~0,2%.%TIME:~0,2%.%TIME:~6,2%\' directory.
pause
