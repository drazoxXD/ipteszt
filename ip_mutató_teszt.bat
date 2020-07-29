@echo off
Title Udv
echo Udv ez egy fejlesztes alatt allo alkalmazas!
echo ez meg csak egy teszt szoval nem akartam zavarni!
echo csak 1 valami kell egy toltes mert a szervereink lassuak!
echo megkernelek hogy vard ki ameg betolt! :)
ping localhost -n 5 >null
test&cls
Title toltes...
color 0a
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
Title toltes......
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
ping localhost -n 4 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...    kapcsolodas     Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.      kapcsolodas      Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..     kapcsolodas     Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...    kapcsolodas     Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.       kapcsolodas    Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..     kapcsolodas     Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...    kapcsolodas     Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.     kapcsolodas      Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..    kapcsolodas     Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------

color 08
Title Program: IP mutató  készítette: drazox   discord:Drazox#7869
test&cls
Echo bejelentkezve mint "%ComputerName%"
echo a jobb felso sarokban a *kockara* kattints ra hogy mindent lass!
ecxho ha kesz vagy nyomd meg az entert!
pause
test&cls
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
echo A te  lan IP-d : %NetworkIP%
echo de ha megnyomod az *enter* akkor meg a publikusat is lathatod!
Pause
test&cls
Title Kapd (LAN ,Publikus) (IP) es MAC Addresses keszitette: Drazox

echo( & echo(
echo   Kerlek varj mikozben ... megtalaljuk a (LAN ,Publikus)(IP-d) es MAC addresses ...
Set "LogFile=%~dpn0.txt"
@for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do (
    set "LAN_IP=%%a"
)

for /f "tokens=2 delims=: " %%A in (
  'nslookup myip.opendns.com. resolver1.opendns.com 2^>NUL^|find "Address:"'
) Do set ExtIP=%%A


@For /f %%a in ('getmac /NH /FO Table') do  (
    @For /f %%b in ('echo %%a') do (
        If /I NOT "%%b"=="N/A" (
            Set "MY_MAC=%%b"
        )
    )
)
    Cls 
    echo(
    echo                A te NEM publikus IP-d       : %LAN_IP%
    echo                A te PUBLIKUS IP-d   : %ExtIP%
    echo                MAC CÍM              : %MY_MAC%

(
    echo  A te NEM publikus IP-d       : %LAN_IP%
    echo  A te PUBLIKUS IP-d   : %ExtIP%
    echo  MAC CÍM              : %MY_MAC%

)>"%LogFile%"
Timeout /T 5 /NoBreak>nul
Start "" "%LogFile%"

echo nyomd meg az *enter* gombot ha folytadni akarod!
pause
test&cls
Echo Koszi hogy ki proaltad a kicsi programomat nehezen de ossze hoztam!
Echo ha a source code-ot akarod latni akkor csak jobb klikk a falj-ra amit letoltottel es szerkesztes!
echo nyomd meg az *enter* gombot a kilepeshez! Keszitette:drazox   discord:Drazox#7869
echo barmi problemad volt akkor jelezd a DISCORD-on privatban                  discord:Drazox#7869
Pause
drazox
..drazox
.drazox
.drazoxdrazox
.drazox
.drazox
.drazox
.drazox
.drazox
.drazox
.drazox
.drazox
.drazox
.drazox
