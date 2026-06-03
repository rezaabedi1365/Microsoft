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




step1)
new > gourp [ global -security] > enable-join-group


step2)
method1:
computers OR domain > delegation > add > enable-join-group > join to domain > 
method2:
computers OR domain > delegation > add > enable-join-group > only the following object > computer object >
create selected object in this folder & delete selected object in this folder > permisiton set all >

verify :
computers > securty tab > 


step3)
group policy default > setting > add workstation to domain > defalut is authentication users > change to enable-join-group

step4)
edit
computer configuration > windows setting > security setting > user right assignment > change group to enable-join-group
adsi > domani properties > ms-DS-MachineAccountQuota [default 10] change to 0
