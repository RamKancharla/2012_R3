from wlstModule import *#@UnusedWildImport
from java.io import FileInputStream 

propInputStream = FileInputStream("domain.properties")  

configProps = util.Properties()  

configProps.load(propInputStream) 

#=======================================================================================
# Enrolls the node manager with the admin server. This needs to be run for each node
# manager that is not on the same machine as the admin server.
#
# Usage: 
#      wlst enrollnodemanager.py <domain name1> <domain name2>
# Author: Lokesh T.C (lokesh.gowda@thomsonreuters.com)
#=======================================================================================

#=======================================================================================
# Environment-specific configuration
#
# Edit the values of these variables to match your environment.
#=======================================================================================

# Installation directories
#=======================================================================================
# Open a domain template.
#=======================================================================================

#Install directory of Oracle middleware binaries
#/app/oracle/products/11g/fmw
wlsHome=os.environ["MWHOME"] 
print "MWHOME="+wlsHome

#Install directory of Oracle Weblogic server
#/app/oracle/products/11g/fmw/wlserver_10.3
wlsServer=os.environ["WLSHOME"]
print "WLSHOME="+wlsServer

#The directory of the domain configuration
#/app/oracle/products/11g/admin/domains 
wlsDomain=os.environ["WLSDOMAIN"]
print "WLSDOMAIN="+wlsDomain

#The directory of the SOA domain configuration
#/app/oracle/products/11g/admin/domains/soadomain
#soaDomain=os.environ["SOADOMAIN"]
#print "SOADOMAIN="+soaDomain

#The directory of the BAM domain configuration
#/app/oracle/products/11g/admin/domains/bamdomain
#BAM_DOMAIN

#The directory of the SOA binaries
#/app/oracle/products/11g/fmw/Oracle_SOA
soaHome=os.environ["SOAHOME"]
print "SOAHOME="+soaHome

#The directory of the OSB binaries
#/app/oracle/products/11g/fmw/Oracle_OSB
osbHome=os.environ["OSBHOME"]
print "OSBHOME="+osbHome
	

#The java6 home directory
javaHome=os.environ["JAVA_HOME"]
JAVA_HOME=javaHome

Java_Arguments=' -Xms512m -Xmx1024m -XX:PermSize=128m -XX:MaxPermSize=512m'
print "JAVA_HOME="+javaHome


AdminIP1= configProps.getProperty("domain1.cadm-vip1")
AdminPort1= configProps.getProperty("domain1.AdminPort")
AdminPasswd1= configProps.getProperty("domain1.AdminPasswd")
NodeManagerPort1 = configProps.getProperty("domain1.NodeManagerPort")
NodeManagerType1= configProps.getProperty("domain1.NodeManagerType")

AdminIP2= configProps.getProperty("domain2.aadm-vip1")
AdminPort2= configProps.getProperty("domain2.AdminPort")
AdminPasswd2= configProps.getProperty("domain2.AdminPasswd")

NodeManagerPort2 = configProps.getProperty("domain2.NodeManagerPort")

NodeManagerType2= configProps.getProperty("domain2.NodeManagerType")



#=======================================================================================
# Connect to the Admin Server, enroll the node manager, and then start it.
#=======================================================================================

NM_HOME = wlsServer + '/common/nodemanager'
#DOMAIN_PATH = wlsDomain +'/'+ sys.argv[1]

print 'START NODE MANAGER';

startNodeManager(verbose='true', NodeManagerHome=NM_HOME,ListenPort=NodeManagerPort1, ListenAddress=os.environ["HOST_NAME"]);
 
#print 'CONNECT TO NODE MANAGER';
#nmConnect('weblogic', AdminPasswd1, os.environ["HOST_NAME"], NodeManagerPort1, sys.argv[1], DOMAIN_PATH, NodeManagerType1);
	 
exit()
