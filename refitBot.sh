#!/bin/bash          

#Alex Trautman
#Summer 2014
#run refit install script 'Install-Refit.csh', then reboot
#user can add any bash lines they want followed by semi-colons

for comp in 01 #02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18
do
    ssh cmc102-$comp.mathcs.carleton.edu -l SET_USERNAME_HERE 'ENTER BASH COMMANDS HERE; SEPARATED BY SEMI-COLONS'
done
