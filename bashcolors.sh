#!/bin/bash

# Bash Color References

#Formatting:
Bold="\e[1m"
Dim="\e[2m"
Underlined="\e[4m"
Blink="\e[5m"
Inverted="\e[7m"
Hidden="\e[8m"

#Reset:
Normal="\e[0m"
ResetBoldOrBright="\e[21m"
ResetDim="\e[22m"
ResetUnderlined="\e[24m"
ResetBlink="\e[25m"
ResetReverse="\e[27m"
ResetHidden="\e[28m"

#Foreground:
Default="\e[39m"
Black="\e[30m"
Red="\e[31m"
Green="\e[32m"
Yellow="\e[33m"
Blue="\e[34m"
Magenta="\e[35m"
Cyan="\e[36m"
LightGrey="\e[37m"
DarkGrey="\e[90m"
LightRed="\e[91m"
LightGreen="\e[92m"
LightYellow="\e[93m"
LightBlue="\e[94m"
LightMagenta="\e[95m"
LightCyan="\e[96m"
White="\e[97m"

#Background
DefaultBg="\e[49m"
BlackBg="\e[40m"
RedBg="\e[41m"
GreenBg="\e[42m"
YellowBg="\e[43m"
BlueBg="\e[44m"
MagentaBg="\e[45m"
CyanBg="\e[46m"
LightGreyBg="\e[47m"
DarkGreyBg="\e[100m"
LightRedBg="\e[101m"
LightGreenBg="\e[102m"
LightYellowBg="\e[103m"
LightBlueBg="\e[104m"
LightMagentaBg="\e[105m"
LightCyanBg="\e[106m"
WhiteBg="\e[107m"


#Test 256 Color:

for fgbg in 38 48 ; do # Foreground / Background
    for color in {0..255} ; do # Colors
        # Display the color
        printf "\e[${fgbg};5;%sm  %3s  \e[0m" $color $color
        # Display 6 colors per lines
        if [ $((($color + 1) % 6)) == 4 ] ; then
            echo # New line
        fi
    done
    echo # New line
done
 
exit 0