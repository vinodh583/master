#!/bin/sh
USER="CDSGUEST"
PASS="CDSGUEST"
SERVER="ftp.connect2nse.com"

# local directory to pickup *.tar.gz file
FILE="/root/"
rm -rf cd_contract.gz cd_contract
# remote server directory to upload backup
BACKUPDIR="/cdsftp/cdscommon/"

# login to remote server
ftp -inv  $SERVER <<EOF
user $USER $PASS
bin
cd $BACKUPDIR
mget cd_contract.gz
quit

EOF

#mv cd_contract.gz  $FILE


