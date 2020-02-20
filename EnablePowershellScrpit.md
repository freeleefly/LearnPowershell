出于安全考虑，默认的 Windows PowerShell 策略不允许执行脚本

名称
    `Set-ExecutionPolicy`

语法
    `Set-ExecutionPolicy [-ExecutionPolicy] {Unrestricted | RemoteSigned | AllSigned | Restricted | Default | Bypass |Undefined} [[-Scope] {Process | CurrentUser | LocalMachine | UserPolicy | MachinePolicy}]  [<CommonParameters>]`

Get-ExecutionPolicy表示获得当前环境执行powershell脚本的权限，这种权限有4个值
Restricted，默认设置，不允许运行任何脚本
AllSigned， 仅运行受信任脚本
RemoteSigned运行本地脚本，不管这些脚本是否受信任；
Unrestricted，允许运行所有脚本，甚至是不受信任的；
一般状况下我们把级别设置为RemoteSigned这样方便脚本调试运行。
