#===================================
# FileName: ShutdownSOACoreAdmin.sh
#!/bin/bash

cd /reuters/shared/11g/wlst

nohup wlst.sh connectToAdmin1Server.py shutdown AdminServer Server force=true &
 
tail -f $WLSDOMAIN/SOACoreDomain/servers/AdminServer/logs/AdminServer.out

