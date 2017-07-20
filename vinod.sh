#!/bin/sh
USER="common"
PASS="1234"
SERVER="192.168.10.34"

#local directory to pick *.tar.gz file
#FILE="/home/vinod/"
gunzip security.gz contract.gz cd_contract.gz
mv security security.txt
mv contract contract.txt
mv cd_contract cd_contract.txt
#remote server 
BACKUPDIR="/vinod/"


#login to local server
ftp -inv $SERVER <<EOF
user $USER $PASS
bin

cd $BACKUPDIR  

mput security.txt contract.txt cd_contract.txt
quit
EOF
