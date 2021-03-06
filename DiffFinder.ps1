Get-WmiObject -Class "win32_quickfixengineering" | Select-Object -Property HotFixId | Export-Csv -Path "C:\Users\$env:USERNAME\Desktop\update.csv"

$a = get-content "C:\Users\$env:USERNAME\Desktop\prog.csv"
$b = get-content "E:\progdiff\masterprog.csv"
$c = get-content "C:\Users\$env:USERNAME\Desktop\update.csv"
$d = get-content "E:\progdiff\masterupdate.csv"

$TestPath = "D:\progdiff\masterprog.csv"
If (Test-Path -Path $TestPath) {($b = get-content "D:\progdiff\masterprog.csv")}
If (Test-Path -Path $TestPath) {($d = get-content "D:\progdiff\masterupdate.csv")}
If(-not(Test-Path -Path $TestPath)) {($b = get-content "E:\progdiff\masterprog.csv")}
If(-not(Test-Path -Path $TestPath)) {($d = get-content "E:\progdiff\masterupdate.csv")}
Diff $a $b > "C:\Users\$env:USERNAME\Desktop\ProgramDifference.txt"
Diff $c $d > "C:\Users\$env:USERNAME\Desktop\UpdateDifference.txt"