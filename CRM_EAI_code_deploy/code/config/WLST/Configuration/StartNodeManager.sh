#===================================
# FileName: StartNodeManager.sh
#!/bin/bash
cd $WLSHOME/server/bin 

export JAVA_OPTIONS="-DDomainRegistrationEnabled=true"

nohup ./startNodeManager.sh &
 
echo "Node Manager Started you can press ctrl - c and proceed when it is done"

tail -10f $WLSHOME/common/nodemanager/nodemanager.log

