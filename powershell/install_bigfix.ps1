
# adaption of this: https://github.com/jgstew/tools/blob/master/CMD/install_bigfix.bat

$RELAYFQDN='test'
$MASTHEADURL="http://"+$RELAYFQDN+":52311/masthead/masthead.afxm"
$BASEFOLDER='C:\Windows\Temp'

cd "$BASEFOLDER"

Write-Host "Downloading: " $MASTHEADURL
#(New-Object Net.WebClient).DownloadFile($MASTHEADURL, "$BASEFOLDER\actionsite.afxm")

Write-Host "Downloading: http://software.bigfix.com/download/bes/95/BigFix-BES-Client-9.5.14.73.exe" 
#(New-Object Net.WebClient).DownloadFile('http://software.bigfix.com/download/bes/95/BigFix-BES-Client-9.5.14.73.exe', "$BASEFOLDER\BESClient.exe")

ECHO "_BESClient_RelaySelect_FailoverRelay=http://$($RELAYFQDN):52311/bfmirror/downloads/" >>$BASEFOLDER\clientsettings.cfg
#>>%BASEFOLDER%\clientsettings.cfg ECHO __RelaySelect_Automatic=1
#>>%BASEFOLDER%\clientsettings.cfg ECHO _BESClient_Resource_StartupNormalSpeed=1
#>>%BASEFOLDER%\clientsettings.cfg ECHO _BESClient_Download_RetryMinutes=1
#>>%BASEFOLDER%\clientsettings.cfg ECHO _BESClient_Resource_WorkIdle=20
#>>%BASEFOLDER%\clientsettings.cfg ECHO _BESClient_Resource_SleepIdle=500
#>>%BASEFOLDER%\clientsettings.cfg ECHO _BESClient_Comm_CommandPollEnable=1
#>>%BASEFOLDER%\clientsettings.cfg ECHO _BESClient_Comm_CommandPollIntervalSeconds=10800
#>>%BASEFOLDER%\clientsettings.cfg ECHO _BESClient_Log_Days=30
#>>%BASEFOLDER%\clientsettings.cfg ECHO _BESClient_Download_UtilitiesCacheLimitMB=500
#>>%BASEFOLDER%\clientsettings.cfg ECHO _BESClient_Download_DownloadsCacheLimitMB=5000
#>>%BASEFOLDER%\clientsettings.cfg ECHO _BESClient_Download_MinimumDiskFreeMB=2000

