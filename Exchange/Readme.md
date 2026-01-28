### prerequisite
- .NET Framework 4.8
- Visual C++ Redistributable 2013
- Visual C++ Redistributable 2012
- Unified Communications Managed API 4.0

```
Install-WindowsFeature Server-Media-Foundation, RSAT-ADDS
```
```
Install-WindowsFeature NET-Framework-45-Features, \
RPC-over-HTTP-proxy, \
RSAT-Clustering, \
RSAT-Clustering-CmdInterface, \
RSAT-Clustering-Mgmt, \
RSAT-Clustering-PowerShell, \
WAS-Process-Model, \
Web-Asp-Net45, \
Web-Basic-Auth, \
Web-Client-Auth, \
Web-Digest-Auth, \
Web-Dir-Browsing, \
Web-Dyn-Compression, \
Web-Http-Errors, \
Web-Http-Logging, \
Web-Http-Redirect, \
Web-Http-Tracing, \
Web-ISAPI-Ext, \
Web-ISAPI-Filter, \
Web-Lgcy-Mgmt-Console, \
Web-Metabase, \
Web-Mgmt-Console, \
Web-Mgmt-Service, \
Web-Net-Ext45, \
Web-Request-Monitor, \
Web-Server, \
Web-Stat-Compression, \
Web-Static-Content, \
Web-Windows-Auth, \
Web-WMI, \
Windows-Identity-Foundation
```


schema
```
.\Setup.exe /PrepareSchema /IAcceptExchangeServerLicenseTerms
```
forest
```
Setup.exe /PrepareAD /OrganizationName:"Devops" /IAcceptExchangeServerLicenseTerms
```
domain
```
Setup.exe /PrepareAllDomains /IAcceptExchangeServerLicenseTerms
```
