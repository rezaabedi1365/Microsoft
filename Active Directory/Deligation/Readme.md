# How to Prevent Standard Users from Joining Computers  
#### Permition for all users
ADDS > 
 - ms-DS-MachineAccountQuota 0 [Default:10]


#### Permition for Specific users
##### Method1)
```Powershell
Get-ADDomain | Select-Object ComputersContainer
redircmp "OU=NewJoin,DC=yourdomain,DC=com"
```
Create OU [NewJoin]
 - Right click > Deligation Control

1- Create a custom task to delegate
   + Create Computer objects
   + Delete Computer objects
2- Permisiion
 - Read
    + Write
    + Reset password (برای Computer object)
    + Validated write to DNS host name
    + Validated write to service principal name

* OUPath : Client Side > add Comouter to to specefic OU
```Powershell
Add-Computer -DomainName "yourdomain.com" `
-OUPath "OU=Workstations,DC=yourdomain,DC=com" `
-Credential (Get-Credential) `
-Restart
```

##### Method2)
ADSI Edit > Default naming context > Click DC=yourdomain,DC=com > wellKnownObjects attribute


##### verify :
computers > securty tab > 

