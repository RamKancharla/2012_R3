#=======================================================================================
# Script to update TLOG 
#Author: Lokesh T.C (lokesh.gowda@thomsonreuters.com)
#=======================================================================================
import sys


print "@@@ Starting the script ..."

from java.util import *
from javax.management import *   
from java.io import FileInputStream 

print "@@@ Starting the script ..."
global props
   

propInputStream1 = FileInputStream("domain.properties")
domainProps = util.Properties()
domainProps.load(propInputStream1) 

#The directory of the domain configuration
#/app/oracle/products/11g/admin/domains 
wlsDomain=os.environ["WLSDOMAIN"]
print "WLSDOMAIN="+wlsDomain


adminURL='t3://'+domainProps.get('domain2.AdminIP')+':'+domainProps.get('domain2.AdminPort')
adminUserName='weblogic'
adminPassword=domainProps.get("domain2.AdminPasswd")
connect(adminUserName, adminPassword, adminURL)

edit()
startEdit()

adminserverDir = File(wlsDomain+'/SOAExtDomain/soa_cluster/tlogs')
bool = adminserverDir.mkdirs()

cd('/Servers/SOA5')
cd('/Servers/SOA5/DefaultFileStore/SOA5')
cmo.setDirectory(wlsDomain+'/SOAExtDomain/soa_cluster/tlogs')

cd('/Servers/SOA6')
cd('/Servers/SOA6/DefaultFileStore/SOA6')
cmo.setDirectory(wlsDomain+'/SOAExtDomain/soa_cluster/tlogs')

cd('/Servers/SOA7')
cd('/Servers/SOA7/DefaultFileStore/SOA7')
cmo.setDirectory(wlsDomain+'/SOAExtDomain/soa_cluster/tlogs')

save()
activate()
