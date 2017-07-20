#!/bin/sh
USER="FTPGUEST"
PASS="FTPGUEST"
SERVER="ftp.connect2nse.com"
 
# local directory to pickup *.tar.gz file
FILE="/root/"
rm -rf security.gz contract.gz security contract
# remote server directory to upload backup
BACKUPDIR="/COMMON/NTNEAT"
 
# login to remote server
ftp -inv  $SERVER <<EOF
user $USER $PASS
bin
cd $BACKUPDIR
mget security.gz contract.gz
quit

EOF

#mv security.gz contract.gz $FILE

