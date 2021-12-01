@echo off
echo Commit name?
set /p commit=""
git init
git add .
git commit -m "%COMMIT%"
git branch -M main
git remote add origin https://github.com/SteveeWasTaken/Funkin-Modpack-Frenzy.git
git push -u origin main
pause