
#### Permition for all users
ADDS > 
 - ms-DS-MachineAccountQuota [Default:10]


#### Permition for all users
Method1)
```
Get-ADDomain | Select-Object ComputersContainer
redircmp "OU=NewJoin,DC=yourdomain,DC=com"
```

Create a custom task to delegate
 - Create Computer objects
 - Delete Computer objects
  Permisiion
     ✅ Read
     ✅ Write
     ✅ Reset password (برای Computer object)
     ✅ Validated write to DNS host name
     ✅ Validated write to service principal name


-------------------
Add-Computer -DomainName "yourdomain.com" -OUPath "OU=Workstations,DC=yourdomain,DC=com" -Credential yourdomain\user -Restart


Method2)
ADSI Edit > Default naming context > Click DC=yourdomain,DC=com > wellKnownObjects attribute















https://www.youtube.com/watch?v=dcE4rEgYxrk


##  How to Prevent Standard Users from Joining Computers  

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
