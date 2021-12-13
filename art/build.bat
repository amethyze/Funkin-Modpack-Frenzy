@echo off
:start
cd..
cls
popd
title Friday Night Funkin' Compiler
color 0b
echo Version of the game? [x64/x32/html]
set /p version=""
if /i %VERSION%==html (goto itshtml)
echo Debug or Release? [Debug/Release/RunDebug/RunRelease]
set /p edition=""
echo Executable Name? [Example: ModpackFrenzy.exe]
set /p exec=""
goto itshtml

:itshtml
if /i %VERSION%==html (echo Building...)
if /i %VERSION%==html (goto html)
if /i %EDITION%==debug (echo Building...)
if /i %EDITION%==release (echo Building...)
title %VERSION% - %EDITION%
if /i %VERSION%==x64 (goto 64)
if /i %VERSION%==x32 (goto 32) else (goto fail)

:64
if /i %EDITION%==debug (goto 64debug)
if /i %EDITION%==rundebug (goto 64rundebug)
if /i %EDITION%==runrelease (goto 64runrelease)
if /i %EDITION%==release (goto 64release) else (goto fail)

:64debug
lime build windows -debug
pushd export\debug\windows\bin
title DONE
pause
title Running...
"%EXEC%"
goto start

:64rundebug
pushd export\debug\windows\bin
title Running...
"%EXEC%"
goto start

:64runrelease
pushd export\release\windows\bin
title Running...
"%EXEC%"
goto start

:64release
lime build windows -release
pushd export\release\windows\bin
title DONE
pause
title Running...
"%EXEC%"
goto start

:32
if /i %EDITION%==debug (goto 32debug)
if /i %EDITION%==rundebug (goto 32rundebug)
if /i %EDITION%==runrelease (goto 32runrelease)
if /i %EDITION%==release (goto 32release) else (goto fail)

:32debug
lime build windows -32 -release -D 32bits
pushd export\32bit\windows\bin
title DONE
pause
title Running...
"%EXEC%"
goto start

:32rundebug
pushd export\32bit\windows\bin
title Running...
"%EXEC%"
goto start

:32runrelease
pushd export\32bit\windows\bin
title Running...
"%EXEC%"
goto start

:32release
lime build windows -32 -release -D 32bits
pushd export\32bit\windows\bin
title DONE
pause
title Running...
"%EXEC%"
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