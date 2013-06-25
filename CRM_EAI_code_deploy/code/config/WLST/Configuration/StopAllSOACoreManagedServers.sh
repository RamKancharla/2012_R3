#===================================
# FileName: StartSOACoreAdmin.sh
#!/bin/bash

cd /reuters/shared/11g/wlst

nohup wlst.sh connectToAdmin1Server.py shutdown SOA1 Server &

nohup wlst.sh connectToAdmin1Server.py shutdown SOA2 Server &

nohup wlst.sh connectToAdmin1Server.py shutdown SOA3 Server &

nohup wlst.sh connectToAdmin1Server.py shutdown MS2 Server &

nohup wlst.sh connectToAdmin1Server.py shutdown MS3 Server &

echo "Run tail on the following commands to verify the status of the server" 
echo "tail -f $WLSDOMAIN/SOACoreDomain/servers/SOA1/logs/SOA1.out"
echo "tail -f $WLSDOMAIN/SOACoreDomain/servers/SOA2/logs/SOA2.out"
echo "tail -f $WLSDOMAIN/SOACoreDomain/servers/SOA3/logs/SOA3.out"
echo "tail -f $WLSDOMAIN/SOACoreDomain/servers/MS2/logs/MS2.out"
echo "tail -f $WLSDOMAIN/SOACoreDomain/servers/MS3/logs/MS3.out"



