$IPv6 = (Get-NetIPAddress -AddressFamily ipv6  -prefixorigin routeradvertisement ).IPAddress

$IPv6_Address = $IPv6[0]+"`n"+$IPv6[1]

$password = ConvertTo-SecureString "此处为我的邮箱的授权码" -AsPlainText -Force
$userpassword = New-Object PSCredential('user1@mail.com', $password)

Send-MailMessage -To "user2@mail.com" -From "user1@mail.com" -SMTPServer 'smtp.mail.com' -Port 587 -Subject "The Current IPv6 Address" -Body $IPv6_Address -Credential $userpassword
