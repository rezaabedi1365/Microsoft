
#Find
Search-ADAccount -AccountInactive -ComputersOnly -TimeSpan 90.00:00:00 | Select-Object Name, LastLogonDate
     #only last90 Days login Active user 
Search-ADAccount -AccountInactive -ComputersOnly -TimeSpan 90.00:00:00 |
Where-Object { $_.Enabled -eq $true } |
Select-Object Name, LastLogonDate


#Report
Search-ADAccount -AccountInactive -ComputersOnly -TimeSpan 90.00:00:00 |
Select-Object Name, LastLogonDate |
Export-Csv -Path "C:\InactiveComputers.csv" -NoTypeInformation


#Disable
Search-ADAccount -AccountInactive -ComputersOnly -TimeSpan 90.00:00:00 |
ForEach-Object { Disable-ADAccount -Identity $_.DistinguishedName }

#Delete
Search-ADAccount -AccountInactive -ComputersOnly -TimeSpan 90.00:00:00 |
ForEach-Object { Remove-ADComputer $_.DistinguishedName -Confirm:$false }
