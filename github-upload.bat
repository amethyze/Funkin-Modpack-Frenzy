set /p commitname="Commit name? "
set /p needforce="Push with force? [Y/N]"
git init -b main
git add .
git commit -m "%COMMITNAME%"
git remote add origin https://github.com/SteveeWasTaken/Funkin-Modpack-Frenzy.git
git remote -v
if /i %NEEDFORCE%==y (git push origin main -f) else (git push origin main)
pause