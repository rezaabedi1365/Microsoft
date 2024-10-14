## https://gal.vin/wsus-windows-server-core-walkthrough/
## https://www.ajtek.ca/wsus/how-to-remove-wsus-completely-and-reinstall-it/
## https://www.hostcheetah.com/t/how-to-remove-wsus-settings-and-restore-windows-update-defaults/1034


#install wsus Rolle:
1- install rolle: 
      Install-WindowsFeature -Name UpdateServices -IncludeManagementTools
      Install-WindowsFeature -Name UpdateServices-Ui

2- 
3- post install :
      CD "C:\Program Files\Update Services\Tools"
      .\wsusutil.exe postinstall CONTENT_DIR=D:\Update

#Remove Update Rolle:
remove iis website and applicationpool
2-Remove c:\Prigram Files\update services
3- In powershell :
remove rolle | wid feature | update services tolls feature
      Remove-WindowsFeature -Name UpdateServices,UpdateServices-DB,UpdateServices-RSAT,UpdateServices-API,UpdateServices-UI,Windows-Internal-Database -IncludeManagementTools
OR
      Uninstall-WindowsFeature -Name UpdateServices,Windows-Internal-Database -Restart




#Sample for if:
* if ($env:PROCESSOR_ARCHITECTURE -eq 'x86') { msiexec.exe /x {CEB5780F-1A70-44A9-850F-DE6C4F6AA8FB } callerid=ocsetup.exe }
* if ($env:PROCESSOR_ARCHITECTURE -eq 'AMD64') { msiexec.exe /x {BDD79957-5801-4A2D-B09E-852E7FA64D01} callerid=ocsetup.e
