https://www.ajtek.ca/wsus/how-to-remove-wsus-completely-and-reinstall-it/
https://www.hostcheetah.com/t/how-to-remove-wsus-settings-and-restore-windows-update-defaults/1034


#install wsus Rolle:
"C:\Program Files\Update Services\Tools\wsusutil.exe" postinstall CONTENT_DIR=D:\update

#Remove Update Rolle:
Remove-WindowsFeature -Name UpdateServices,UpdateServices-DB,UpdateServices-RSAT,UpdateServices-API,UpdateServices-UI -IncludeManagementTools




#Sample for if:
#if ($env:PROCESSOR_ARCHITECTURE -eq 'x86') { msiexec.exe /x {CEB5780F-1A70-44A9-850F-DE6C4F6AA8FB } callerid=ocsetup.exe }
#if ($env:PROCESSOR_ARCHITECTURE -eq 'AMD64') { msiexec.exe /x {BDD79957-5801-4A2D-B09E-852E7FA64D01} callerid=ocsetup.e
