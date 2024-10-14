# https://stackoverflow.com/questions/64722098/how-do-i-set-rapidfailprotectioninterval-in-iis-using-powershell

Install-WindowsFeature Web-Mgmt-Console
Import-Module WebAdministration

$WsusPool = Get-Item IIS:\AppPools\WsusPool\
$WsusPool.failure.rapidFailProtectionInterval

Set-WebConfigurationProperty '//*[@name="WsusPool"]//failure' -Name rapidFailProtectionInterval -Value (New-TimeSpan -Minutes 30)
