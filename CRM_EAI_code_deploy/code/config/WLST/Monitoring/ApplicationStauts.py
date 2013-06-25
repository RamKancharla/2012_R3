#############################################################   
# This script will get you status  applications which are deployed    
# in the Domain.            
# script get you the colorful output                            
# NOTE : You need to give target name as an input to the script                   
# author:lokesh.gowda@thomsonreuters.com
##############################################################   
import sys

print "@@@ Starting the script ..."

from java.util import *
from javax.management import *   
from weblogic.management.runtime import *
from weblogic.management.configuration import *
from java.security import *	
from javax.security.auth import *
from weblogic.management.security import *
from weblogic.security import *
from weblogic.security.service import *
from weblogic.security.spi import *
from java.io import FileInputStream 

propInputStream1 = FileInputStream("../domain.properties")
domainProps = util.Properties()
domainProps.load(propInputStream1) 

#The directory of the domain configuration
#/app/oracle/products/11g/admin/domains 
wlsDomain=os.environ["WLSDOMAIN"]
print "WLSDOMAIN="+wlsDomain


adminURL='t3://'+domainProps.get('domain1.AdminIP')+':'+domainProps.get('domain1.AdminPort')
adminUserName='weblogic'
adminPassword=domainProps.get("domain1.AdminPasswd")
connect(adminUserName, adminPassword, adminURL)

targetName=sys.argv[1]   
domainConfig()   
apps=cmo.getAppDeployments()   
for i in apps:   
    navPath1=getMBean('domainConfig:/AppDeployments/'+i.getApplicationName())   
    appID=navPath1.getApplicationIdentifier()   
    navPath=getMBean('domainRuntime:/AppRuntimeStateRuntime/AppRuntimeStateRuntime')   
    sts=navPath.getCurrentState(appID,targetName)   
    if(sts == "STATE_ACTIVE"):   
        print "\033[132m Status of " + i.getApplicationName() + ": " + sts + "\033[1m"  
    else:   
        print "\033[131m Status of " + i.getApplicationName() + ": " + sts + "\033[1m"  
disconnect()   
exit()   
