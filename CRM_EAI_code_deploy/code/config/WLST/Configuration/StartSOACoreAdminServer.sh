#===================================
# FileName: StartSOACoreAdmin.sh
#!/bin/bash

cd /reuters/shared/11g/wlst

nohup wlst.sh startAdmin1Server.py SOACoreDomain &
 
tail -f $WLSDOMAIN/SOACoreDomain/servers/AdminServer/logs/AdminServer.out

