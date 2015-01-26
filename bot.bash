address0 = cmc102 #first part of address
address1 = .mathcs.carleton.edu #second part of address - after variable

#loop through list of machines in lab, copy printing stuff, reboot
for comp in 01 02 03 04 05 07 08 09 10 12 13
do
    ssh $address0$comp$address1 -l root 'cd /usr/local/admin; ditto printing/org.cups.printers.plist /Library/Preferences/org.cups.printers.plist; ditto printing/etc/cups /private/etc/cups; ditto printing/spool/cups /private/var/spool/cups; reboot'
done

#turn off wifi, then reboot
for comp in 01 02 03 04 07 08 09 10 12 13 14 15 16 17 18 inst
do
    ssh cmc306-$comp.mathcs.carleton.edu -l root 'networksetup -setairportpower en0 off; shutdown -r now'
done

#shutdown all computers
for comp in 01 02 03 04 07 08 09 10 12 13 14 15 16 17 18 inst
do
    ssh cmc102-$comp.mathcs.carleton.edu -l root 'shutdown -s now'
done