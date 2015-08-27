powershell -command "& {Set-ExecutionPolicy Remotesigned}"
powershell "%~d0\progdiff\getinstalled.ps1 2>&1> C:\Users\$env:USERNAME\Desktop\prog.csv"
powershell -noexit %~d0\progdiff\DiffFinder.ps1 -sta
pause