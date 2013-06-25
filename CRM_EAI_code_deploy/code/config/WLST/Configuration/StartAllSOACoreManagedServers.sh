#===================================
# FileName: StartSOACoreAdmin.sh
#!/bin/bash

cd /reuters/shared/11g/wlst

rm -f $WLSDOMAIN/SOACoreDomain/servers/SOA1/tmp/SOA1.lok

rm -f $WLSDOMAIN/SOACoreDomain/servers/SOA2/tmp/SOA2.lok

rm -f $WLSDOMAIN/SOACoreDomain/servers/SOA3/tmp/SOA3.lok

nohup wlst.sh connectToAdmin1Server.py start SOA1 Server &

nohup wlst.sh connectToAdmin1Server.py start SOA2 Server &

nohup wlst.sh connectToAdmin1Server.py start SOA3 Server &

nohup wlst.sh connectToAdmin1Server.py start MS2 Server &

nohup wlst.sh connectToAdmin1Server.py start MS3 Server &

echo "Run tail on the following commands to verify the status of the server" 
echo "tail -f $WLSDOMAIN/SOACoreDomain/servers/SOA1/logs/SOA1.out"
echo "tail -f $WLSDOMAIN/SOACoreDomain/servers/SOA2/logs/SOA2.out"
echo "tail -f $WLSDOMAIN/SOACoreDomain/servers/SOA3/logs/SOA3.out"
echo "tail -f $WLSDOMAIN/SOACoreDomain/servers/MS2/logs/MS2.out"
echo "tail -f $WLSDOMAIN/SOACoreDomain/servers/MS3/logs/MS3.out"



