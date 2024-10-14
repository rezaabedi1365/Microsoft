scan and repair any corrupted system files:
sfc /scannow
log file path: c:\windows\logs\CBS\cbs.log

Dism /Online /Cleanup-Image /StartComponentCleanup
Dism /Online /Cleanup-Image /RestoreHealth
