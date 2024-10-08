
Start-Process takeown.exe -ArgumentList '/f "C:\Program Files\Update Services\Database\VersionCheck.sql"' -Wait
Start-Process icacls.exe -ArgumentList '"C:\Program Files\Update Services\Database\VersionCheck.sql" /grant "administrators:(F)"' -Wait
(Get-Content "C:\Program Files\Update Services\Database\VersionCheck.sql") -replace "(^DECLARE @scriptMinorVersion\s+ int = \(11\)$)" , "DECLARE @scriptMinorVersion int = (51)" | Set-Content "C:\Program Files\Update Services\Database\VersionCheck.sql"
