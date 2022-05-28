@echo off
SET DIR=%Date:~0,2%.%Date:~3,2%.%Date:~6,4%_%TIME:~0,2%.%TIME:~3,2%.%TIME:~6,2%
mkdir distribution_%DIR%
xcopy dll\*.dll distribution_%DIR%\
xcopy /s /e /i ..\data distribution_%DIR%\data
xcopy /s /e /i ..\config distribution_%DIR%\config
xcopy /s /e /i ..\gfx distribution_%DIR%\gfx
xcopy /s /e /i ..\lang\mo distribution_%DIR%\lang\mo
copy ..\Cataclysm*.exe distribution_%DIR%\

