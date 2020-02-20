```
Add-Type -AssemblyName System.Windows.Forms 

$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$balloon.Icon = "C:\PowerShellScript\Icon\Checked.ico" 
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info 
$balloon.BalloonTipText = 'What do you think of this balloon tip?'
$balloon.BalloonTipTitle = "Attention $Env:USERNAME" 
$balloon.Visible = $true 
$balloon.ShowBalloonTip(1000)
```


`balloon.BalloonTipIcon` 有4个值，[ToolTipIcon Enum](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.tooltipicon?view=netframework-4.8)


如果需要展示中文，那么需要将脚本保存为gbk编码

当然还有更方便的，安装[BurntToast](https://github.com/Windos/BurntToast)库，一切就都很方便。
