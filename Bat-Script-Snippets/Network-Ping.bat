@ECHO OFF
CLS
TITLE   Network-Ping.bat - System and Hardware Info
ECHO  ---------------------------------------------------------
ECHO  ---------------------------------------------------------
ECHO  ---------------------------------------------------------
ECHO  ---------------------------------------------------------
ECHO  ---------------------------------------------------------
ECHO  --This batch reveals OS, Hardware and Network Settings --
ECHO  ----                                                 ----
ECHO  ----  Check C:\temp\home-network.txt for active IPs  ----
ECHO  ----                                                 ----
ECHO  ----              Network-Ping.bat                   ----
ECHO  ---------------------------------------------------------
ECHO  ---------------------------------------------------------
ECHO  ---------------------------------------------------------
ECHO   --------------------------------------------------------->>C:\temp\home-network.txt
ECHO   --------------------------------------------------------->>C:\temp\home-network.txt
ECHO   --This batch reveals OS, Hardware and Network Settings -->>C:\temp\home-network.txt
ECHO   ----                                                 ---->>C:\temp\home-network.txt
ECHO   ----  Check C:\temp\home-network.txt for active IPs  ---->>C:\temp\home-network.txt
ECHO   ----                                                 ---->>C:\temp\home-network.txt
ECHO   ----              Network-Ping.bat                   ---->>C:\temp\home-network.txt
ECHO   --------------------------------------------------------->>C:\temp\home-network.txt
ECHO   --------------------------------------------------------->>C:\temp\home-network.txt
ECHO  ---------------------------------------------------------
ECHO  ---------------------------------------------------------
ECHO  ---------------------------------------------------------
ECHO  ---             Hit any key to continue               ---
ECHO  ---------------------------------------------------------
PAUSE
ECHO
ECHO    System test is running .....
ECHO
ECHO  ---------------------------------------------------------
ECHO  ---                 Operating System                  ---
ECHO  ---------------------------------------------------------
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
systeminfo | findstr /c:"OS Name">>C:\temp\home-network.txt
systeminfo | findstr /c:"OS Version">>C:\temp\home-network.txt
systeminfo | findstr /c:"System Type">>C:\temp\home-network.txt
ECHO  ---------------------------------------------------------
ECHO  ---               Hardware Information                ---
ECHO  ---------------------------------------------------------
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
systeminfo | findstr /c:"Total Physical Memory">>C:\temp\home-network.txt
wmic cpu get name>>C:\temp\home-network.txt
ECHO  ---------------------------------------------------------
ECHO  ---                Network Information                ---
ECHO  ---------------------------------------------------------
ipconfig | findstr IPv4
ipconfig | findstr IPv6
ipconfig | findstr IPv4>>C:\temp\home-network.txt
ipconfig | findstr IPv6>>C:\temp\home-network.txt
ECHO 
ECHO  ---------------------------------------------------------
ECHO  ---             Hit any key to continue               ---
ECHO  ---------------------------------------------------------
PAUSE
ECHO
ECHO  EXAMPLE OF AN ACTIVE HOST ON YOUR HOME NETWORK
ECHO
ECHO  Ping statistics for 192.168.1.x:
ECHO  Packets: Sent = 1, Received = 1, Lost = 0 (0% loss),
ECHO  Approximate round trip times in milli-seconds:
ECHO  Minimum = 3ms, Maximum = 3ms, Average = 3ms
ECHO
ECHO
ECHO  EXAMPLE OF HOST DOWN ON YOUR HOME NETWORK
ECHO
ECHO  Ping statistics for 192.168.1.x:
ECHO  Packets: Sent = 1, Received = 0, Lost = 1 (100% loss)
ECHO
ECHO  ---------------------------------------------------------
ECHO  --------------------------------------------------------->>C:\temp\home-network.txt
ECHO  EXAMPLE OF AN ACTIVE HOST ON YOUR HOME NETWORK>>C:\temp\home-network.txt
ECHO  Ping statistics for 192.168.1.x:>>C:\temp\home-network.txt
ECHO  Packets: Sent = 1, Received = 1, Lost = 0 (0 loss):>>C:\temp\home-network.txt
ECHO  Approximate round trip times in milli-seconds:>>C:\temp\home-network.txt
ECHO  Minimum = 3ms, Maximum = 3ms, Average = 3ms:>>C:\temp\home-network.txt
ECHO  --------------------------------------------------------->>C:\temp\home-network.txt
ECHO  EXAMPLE OF HOST DOWN ON YOUR HOME NETWORK>>C:\temp\home-network.txt
ECHO  Ping statistics for 192.168.1.x:>>C:\temp\home-network.txt
ECHO  Packets: Sent = 1, Received = 0, Lost = 1 (100 loss):>>C:\temp\home-network.txt
@ECHO OFF
ECHO            WAIT 3 MINUTES TO FINISH PROCESSING!
ECHO               System test is running .....
ECHO
for /L %%i in (0,1,254) do ping -n 1 -w 250 192.168.1.%%i>>C:\temp\home-network.txt
PAUSE
ECHO
ECHO  ---------------------------------------------------------
ECHO  ---------------------------------------------------------
ECHO  --This batch reveals OS, Hardware and Network Settings --
ECHO  ----  Check C:\temp\home-network.txt for active IPs  ----
ECHO  ----                                                 ----
ECHO  ----              THE END                            ----
ECHO  ---------------------------------------------------------
ECHO  ---------------------------------------------------------
PAUSE







