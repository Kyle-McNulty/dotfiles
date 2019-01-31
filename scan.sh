#!/bin/bash
if [ "$1" == "-h" ]; then
	echo "Add a command line argument for the IP or hostname to scan against"
	exit 0
fi
file=out.txt
rm $file

nslookup $1 >> $file
dig $1 >> $file
whois $1 >> $file
echo Starting nmap scan...
echo 'Nmap:' >> $file
nmap -T4 -p- $1 >> $file
echo 'Amass:' >> $file
echo 'Nmap complete. Starting Amass...'
sudo docker run amass --passive -d $1 >> $file
echo 'Scan complete. View out.txt for details.'


