@echo off
:start
cd..
cls
popd
title Friday Night Funkin' Compiler
color 0b
echo Version of the game? [x64/x32/html]
set /p version=""
echo Debug or Release? [Debug/Release]
set /p edition=""
echo Building...
title %VERSION% - %EDITION%
if /i %VERSION%==x64 (goto 64)
if /i %VERSION%==x32 (goto 32)
if /i %VERSION%==html (goto html) else (goto fail)

:64
if /i %EDITION%==debug (goto 64debug)
if /i %EDITION%==release (goto 64release) else (goto fail)

:64debug
lime build windows -debug
pushd export\debug\windows\bin
title DONE
pause
title Running...
"ModpackFrenzy.exe"
goto start

:64release
lime build windows -release
pushd export\release\windows\bin
title DONE
pause
title Running...
"ModpackFrenzy.exe"
goto start

:32
if /i %EDITION%==debug (goto 32debug)
if /i %EDITION%==release (goto 32release) else (goto fail)

:32debug
lime build windows -32 -release -D 32bits
pushd export\32bit\windows\bin
title DONE
pause
title Running...
"ModpackFrenzy.exe"
goto start

:32release
lime build windows -32 -release -D 32bits
pushd export\32bit\windows\bin
title DONE
pause
title Running...
"ModpackFrenzy.exe"
goto start

:html
if /i %EDITION%==debug (goto htmldebug)
if /i %EDITION%==release (goto htmlrelease) else (goto fail)

:htmldebug
lime test html5 -debug
goto start

:htmlrelease
lime test html5 -release
goto start