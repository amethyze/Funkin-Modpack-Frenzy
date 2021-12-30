set /p commitname="Commit name? "
git init -b main
git add .
git commit -m "%COMMITNAME%"
git remote add origin https://github.com/SteveeWasTaken/Funkin-Modpack-Frenzy.git
git remote -v
git push origin main
pause