#!/bin/bash
#Colors added 
RESTORE='\033[0m'
WBGC='\e[1;90;107m'

RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\033[00;33m'
BLUE='\033[00;34m'
PURPLE='\033[00;35m'
CYAN='\033[00;36m'
LIGHTGRAY='\033[00;37m'

LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'
echo -e "
╔══════════════════════════════════════════╗
║◂◂◂$WHITE SCREENSHOTS IN LINUX USING SCRIPTS$RESTORE ▸▸▸║
╚══════════════════════════════════════════╝
[1]$YELLOW Click options $RESTORE
[2]$YELLOW Click screen no mouse ponter $RESTORE
[3]$YELLOW Click the Active terminal $RESTORE
[4]$YELLOW Click screen + mouse ponter $RESTORE
[5]$YELLOW Click the sellected area $RESTORE
[6]$YELLOW Click delay 2 seconds $RESTORE
[7]$YELLOW Click sellected area to clipboard $RESTORE
[8]$YELLOW Click active terminal to clipboard $RESTORE 
[9]$YELLOW Click and compress sellected area $RESTORE"

read UserInput
case $UserInput in
    1)
    gnome-screenshot -i
    ;;
    2)
    gnome-screenshot
    ;;
    3)
    gnome-screenshot -w
    ;;
    4)
    gnome-screenshot -p
    ;;
    5)
    gnome-screenshot -a
    ;;
    6)
    gnome-screenshot -d 2
    ;;
    7)
    gnome-screenshot -ac
    ;;     
    8)
    gnome-screenshot -wc
    ;;
    9)
    gnome-screenshot -a -f $PWD/screen.png
    sleep 3
    cwebp -q 50 screen.png -o compressed-image.webp
    ;;
    *)
    echo -e "Please Enter Correct Input \n"
    ;;
esac
