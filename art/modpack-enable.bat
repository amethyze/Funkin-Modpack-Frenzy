@echo off
cd assets\weeks
:start
set userchoice= 
set finalchoice= 
title Modpack Frenzy Mod Enabler
cls
echo Enable the visibility of some mods.
echo.
if exist week-stickman.json~ (echo [1] Stickman)
if exist week-tricky.json~ (echo [2] Tricky)
if exist week-accelerant.json~ (echo [3] Accelerant Hank)
if exist week-starlightmayhem.json~ (echo [4] Starlight Mayhem)
if exist week-arch.json~ (echo [5] Arch)
if exist week-kapi.json~ (echo [6] Kapi)
if exist week-bob.json~ (echo [7] Bob)
if exist week-ddlc1.json~ (echo [8] Doki Doki)
if exist week-hecker.json~ (echo [9] Hecker)
if exist week-nonsense.json~ (echo [10] Nonsense)
if exist week-sus1.json~ (echo [11] Among Us)
if exist week-matt.json~ (echo [12] Matt)
if exist week-dave1.json~ (echo [13] Dave and Bambi)
if exist week-eteled.json~ (echo [14] Eteled)
if exist week-neo1.json~ (echo [15] NEO)
if exist week-b3-1.json~ (echo [16] B3)
if exist week-sandbox.json~ (echo [17] Sandboxin')
if exist week-bobb1.json~ (echo [18] Bob ^& Bosip)
if exist week-star1.json~ (echo [19] Starcatcher)
if exist week-sonicexe1.json~ (echo [20] Sonic.exe)
if exist week-lullaby.json~ (echo [21] Lullaby)
if exist week-miku1.json~ (echo [22] Vs Miku)
if exist week-sunday.json~ (echo [23] Vs Sunday)
set /p userchoice=""
if %USERCHOICE%==1 (set mod=stickman & set exists=y)
if %USERCHOICE%==2 (set mod=tricky & set exists=y)
if %USERCHOICE%==3 (set mod=accelerant & set exists=y)
if %USERCHOICE%==4 (set mod=starlight & set exists=y)
if %USERCHOICE%==5 (set mod=arch & set exists=y)
if %USERCHOICE%==6 (set mod=kapi & set exists=y)
if %USERCHOICE%==7 (set mod=bob & set exists=y)
if %USERCHOICE%==8 (set mod=doki & set exists=y)
if %USERCHOICE%==9 (set mod=hecker & set exists=y)
if %USERCHOICE%==10 (set mod=nonsense & set exists=y)
if %USERCHOICE%==11 (set mod=among & set exists=y)
if %USERCHOICE%==12 (set mod=matt & set exists=y)
if %USERCHOICE%==13 (set mod=davebambi & set exists=y)
if %USERCHOICE%==14 (set mod=eteled & set exists=y)
if %USERCHOICE%==15 (set mod=neo & set exists=y)
if %USERCHOICE%==16 (set mod=b3 & set exists=y)
if %USERCHOICE%==17 (set mod=sandbox & set exists=y)
if %USERCHOICE%==18 (set mod=bobsip & set exists=y)
if %USERCHOICE%==19 (set mod=starcatcher & set exists=y)
if %USERCHOICE%==20 (set mod=sonicexe & set exists=y)
if %USERCHOICE%==21 (set mod=lullaby & set exists=y)
if %USERCHOICE%==22 (set mod=miku & set exists=y)
if %USERCHOICE%==23 (set mod=sunday & set exists=y)
if /i %EXISTS%==y (goto modchange) else (goto fail)

:modchange
echo Are you sure you wish to enable this mod? YIt will appear in-game. (To disable again, open "Disable-Mods.bat".)
set /p finalchoice=""
if /i %FINALCHOICE%==n (goto start)
goto %MOD%

:startb
echo Done.
pause
goto start

:stickman
rename week-stickman.json~ week-stickman.json
goto startb

:tricky
rename week-tricky.json~ week-tricky.json
goto startb

:accelerant
rename week-accelerant.json~ week-accelerant.json
goto startb

:starlight
rename week-starlightmayhem.json~ week-starlightmayhem.json
goto startb

:arch
rename week-arch.json~ week-arch.json
goto startb

:kapi
rename week-kapi.json~ week-kapi.json
rename week-kapi2.json~ week-kapi2.json
goto startb

:bob
rename week-bob.json~ week-bob.json
rename week-bob2.json~ week-bob2.json
rename week-bob3.json~ week-bob3.json
goto startb

:doki
rename week-ddlc1.json~ week-ddlc1.json
rename week-ddlc2.json~ week-ddlc2.json
rename week-ddlc3.json~ week-ddlc3.json
rename week-ddlc4.json~ week-ddlc4.json
rename week-ddlc5.json~ week-ddlc5.json
rename week-ddlc6.json~ week-ddlc6.json
rename week-ddlc7.json~ week-ddlc7.json
goto startb

:hecker
rename week-hecker.json~ week-hecker.json
goto startb

:nonsense
rename week-nonsense.json~ week-nonsense.json
rename week-nonsense2.json~ week-nonsense2.json
goto startb

:among
rename week-sus1.json~ week-sus1.json
rename week-sus2.json~ week-sus2.json
rename week-sus3.json~ week-sus3.json
rename week-sus4.json~ week-sus4.json
goto startb

:matt
rename week-matt.json~ week-matt.json
rename week-matt2.json~ week-matt2.json
rename week-matt3.json~ week-matt3.json
rename week-matt4.json~ week-matt4.json
goto startb

:davebambi
rename week-dave1.json~ week-dave1.json
rename week-dave2.json~ week-dave2.json
rename week-dave3.json~ week-dave3.json
rename week-dave4.json~ week-dave4.json
rename week-dave5.json~ week-dave5.json
goto startb

:eteled
rename week-eteled.json~ week-eteled.json
rename week-eteled2.json~ week-eteled2.json
goto startb

:neo
rename week-neo1.json~ week-neo1.json
rename week-neo2.json~ week-neo2.json
rename week-neo3.json~ week-neo3.json
rename week-neo4.json~ week-neo4.json
rename week-neo5.json~ week-neo5.json
goto startb

:b3
rename week-b3-1.json~ week-b3-1.json
rename week-b3-2.json~ week-b3-2.json
rename week-b3-3.json~ week-b3-3.json
rename week-b3-4.json~ week-b3-4.json
rename week-b3-5.json~ week-b3-5.json
rename week-b3-6.json~ week-b3-6.json
goto startb

:sandbox
rename week-sandbox.json~ week-sandbox.json
goto startb

:bobsip
rename week-bobb1.json week-bobb1.json~
rename week-bobb2.json week-bobb2.json~
rename week-bobb3.json week-bobb3.json~
rename week-bobb4.json week-bobb4.json~
goto startb

:starcatcher
rename week-star1.json~ week-star1.json
rename week-star2.json~ week-star2.json
rename week-star3.json~ week-star3.json
rename week-star4.json~ week-star4.json
goto startb

:sonicexe
rename week-sonicexe1.json~ week-sonicexe1.json
rename week-sonicexe2.json~ week-sonicexe2.json
goto startb

:lullaby
rename week-lullaby.json~ week-lullaby.json
goto startb

:miku
rename week-miku1.json~ week-miku1.json
rename week-miku2.json~ week-miku2.json
goto startb

:sunday
rename week-sunday.json~ week-sunday.json
goto startb

:fail
echo That's not an option.
pause
goto start