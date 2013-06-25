#=======================================================================================
# Script to create Weblogic Domain 
#Author: Lokesh T.C (lokesh.gowda@thomsonreuters.com)
#=======================================================================================

import sys


print "@@@ Starting the script ..."
global props
   
from wlstModule import *#@UnusedWildImport
from java.io import FileInputStream 

#=======================================================================================
# Create Boot Properties File
#=======================================================================================

def createBootPropertiesFile(directoryPath, username, password):
    adminserverDir = File(directoryPath)
    bool = adminserverDir.mkdirs()
    fileNew=open(directoryPath + '/boot.properties', 'w')
    fileNew.write('username=%s\n' % username)
    fileNew.write('password=%s\n' % password)
    fileNew.flush()
    fileNew.close()

def createNodeManagerPropertiesFile(directoryPath, username, password):
    adminserverDir = File(directoryPath)
    bool = adminserverDir.mkdirs()
    fileNew=open(directoryPath + '/nm_password.properties', 'w')
    fileNew.write('username=%s\n' % username)
    fileNew.write('password=%s\n' % password)
    fileNew.flush()
    fileNew.close()

def createAdminStartupPropertiesFile(directoryPath, args):
    adminserverDir = File(directoryPath)
    bool = adminserverDir.mkdirs()
    fileNew=open(directoryPath + '/startup.properties', 'w')
    args=args.replace(':','\\:')
    args=args.replace('=','\\=')
    fileNew.write('Arguments=%s\n' % args)
    fileNew.flush()
    fileNew.close()

propInputStream = FileInputStream("domain.properties")  

configProps = util.Properties()  

configProps.load(propInputStream) 

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

#SUN

Admin_Java_Arguments= configProps.get("domain1.Admin_Java_Arguments")

WLSCore_Java_Arguments=configProps.get("domain1.WLSCore_Java_Arguments")

SOACore_Java_Arguments=configProps.get("domain1.SOACore_Java_Arguments")

OSBCore_Java_Arguments=configProps.get("domain1.OSBCore_Java_Arguments")

#JROCKIT
#Java_Arguments=' -Xms512m -Xmx1024m -XX:PermSize=128m -XX:MaxPermSize=512m -Xnohup '
print "JAVA_HOME="+javaHome

# Administration server configuration
soac_vip1= configProps.getProperty("domain1.soac-vip1")     
soac_vip2= configProps.getProperty("domain1.soac-vip2")     
soac_vip3= configProps.getProperty("domain1.soac-vip3")     
soac_vip4= configProps.getProperty("domain1.soac-vip4")     
				                                                                              
osb_vip1=  configProps.getProperty("domain1.osb-vip1")      
osb_vip2=  configProps.getProperty("domain1.osb-vip2")      
osb_vip3=  configProps.getProperty("domain1.osb-vip3")      
osb_vip4=  configProps.getProperty("domain1.osb-vip4")      
				                                                                              
ms_vip1=   configProps.getProperty("domain1.ms-vip1")       
ms_vip2=   configProps.getProperty("domain1.ms-vip2")       
ms_vip3=   configProps.getProperty("domain1.ms-vip3")       
ms_vip4=   configProps.getProperty("domain1.ms-vip4")       
				                                                                              
AdminIP= configProps.getProperty("domain1.cadm-vip1")
AdminPort= configProps.getProperty("domain1.AdminPort")
AdminPasswd= configProps.getProperty("domain1.AdminPasswd")

NodeManagerMachineType=configProps.getProperty("domain1.NodeManagerMachineType")
NodeManagerType=configProps.getProperty("domain1.NodeManagerType")
ServerMode = configProps.getProperty("SERVER_MODE")



Machine1IP= configProps.getProperty("domain1.Machine1IP")
Machine2IP= configProps.getProperty("domain1.Machine2IP")
Machine3IP= configProps.getProperty("domain1.Machine3IP")
Machine4IP= configProps.getProperty("domain1.Machine4IP")
Machine1Name= configProps.getProperty("domain1.Machine1Name")
Machine2Name= configProps.getProperty("domain1.Machine2Name")
Machine3Name= configProps.getProperty("domain1.Machine3Name")
Machine4Name= configProps.getProperty("domain1.Machine4Name")

# Cluster Names
WLSCoreClusterName= configProps.getProperty("domain1.WLSCoreClusterName")
SOAClusterName= configProps.getProperty("domain1.SOAClusterName")
OSBClusterName= configProps.getProperty("domain1.OSBClusterName")

# WLS Core Server 1 configuration for WLS Core Cluster
WLSServerPort= configProps.getProperty("domain1.WLSServerPort")
ServerWLSCore1Name= configProps.getProperty("domain1.ServerWLSCore1Name")

ServerWLSCore2Name= configProps.getProperty("domain1.ServerWLSCore2Name")
ServerWLSCore3Name= configProps.getProperty("domain1.ServerWLSCore3Name")
ServerWLSCore4Name= configProps.getProperty("domain1.ServerWLSCore4Name")

# Server 1 configuration for Core SOA
SOAServerPort= configProps.getProperty("domain1.SOAServerPort")

SOAServer1Name= configProps.getProperty("domain1.SOAServer1Name")

# Server 2 configuration for Core SOA
SOAServer2Name= configProps.getProperty("domain1.SOAServer2Name")

# Server 3 configuration for Core SOA
SOAServer3Name= configProps.getProperty("domain1.SOAServer3Name")

# Server 4 configuration for Core SOA
SOAServer4Name= configProps.getProperty("domain1.SOAServer4Name")

# OSB Server 
OSBServerPort=configProps.getProperty("domain1.OSBServerPort")
OSBServer1Name= configProps.getProperty("domain1.OSBServer1Name")
OSBServer2Name= configProps.getProperty("domain1.OSBServer2Name")
OSBServer3Name= configProps.getProperty("domain1.OSBServer3Name")
OSBServer4Name= configProps.getProperty("domain1.OSBServer4Name")


# SOADomain Datasource Configuration
DBURL= configProps.getProperty("domain1.DBURL")
DBUSER_PREFIX=configProps.getProperty("domain1.DBUSER_PREFIX")
DBPASSWORD=configProps.getProperty("domain1.DBPASSWORD")

#=======================================================================================
# Create a domain from the weblogic domain template. 
#=======================================================================================
print 'Reading Weblogic Basic Template'

readTemplate(wlsServer + "/common/templates/domains/wls.jar")
#=======================================================================================
# Configure the Administration Server and SSL port.
# Note: The argument '-Dcom.sun.xml.namespace.QName.useCompatibleSerialVersionUID=1.0'
#       is required for WebLogic servers to run under some versions of Sun JDK 1.5
#=======================================================================================
print 'Creating domain at '+wlsDomain + '/' + sys.argv[1]+'/aserver/' +  sys.argv[1]

DOMAIN_PATH= wlsDomain + '/' + sys.argv[1]+'/aserver/' +  sys.argv[1]
cd('Servers/AdminServer')

set('ListenAddress',AdminIP)
dumpStack()
set('ListenPort', int(AdminPort))

create('AdminServer','SSL')
cd('SSL/AdminServer')
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

dumpStack()
setOption( "AppDir", wlsDomain + '/' + sys.argv[1]+'/aserver/applications' )
create('AdminServer','ServerStart')
cd('ServerStart/AdminServer')
set('Arguments', Admin_Java_Arguments)
set('JavaVendor','Sun')
set('JavaHome',javaHome)

#=======================================================================================
# Define the password for user weblogic. You must define the password before you 
# can write the domain.
#=======================================================================================
cd('/')

cmo=cd('Security/base_domain/User/weblogic')
cmo.setPassword(AdminPasswd)
#set('InternalAppsDeployOnDemandEnabled','False')

#=======================================================================================
# Set domain save options:
# - CreateStartMenu:    Enable creation of Start Menu shortcut.
# - ServerStartMode:    Set mode to development.
# - JavaHome:           Sets home directory for the JVM used when starting the server.
# - OverwriteDomain:    Overwrites domain, when saving, if one exists.
#=======================================================================================
setOption('CreateStartMenu', 'false')
setOption('ServerStartMode', ServerMode)
#setOption('JavaVendor', 'Sun')
setOption('JavaHome', javaHome)
setOption('OverwriteDomain', 'true')

print 'Creating domain '+sys.argv[1]+' at'+wlsDomain + '/' + sys.argv[1]+'/aserver/'

writeDomain(DOMAIN_PATH)
closeTemplate()
createBootPropertiesFile(DOMAIN_PATH+'/servers/AdminServer/security','weblogic',AdminPasswd)
#===========================Read DOMAIN ================================
print 'reading domain from '+DOMAIN_PATH


readDomain(DOMAIN_PATH)

setOption( "AppDir", wlsDomain + '/' + sys.argv[1]+'/aserver/applications' )

print 'Adding JAXRPC and JAXWS Webservice Support Template'
#addTemplate(wlsServer + "/common/templates/applications/wls_webservice.jar")
addTemplate(wlsServer + "/common/templates/applications/wls_webservice_jaxws.jar")

dumpStack();

#==================================================================================

#=======================================================================================
# Create the machines to associate the managed servers with, so they can be controlled
# by the node manager.
#=======================================================================================
cd('/')

#create new Machines
create(Machine1Name, 'Machine')
cd('Machine/' + Machine1Name)

create(Machine1Name, 'NodeManager')
cd('NodeManager/' + Machine1Name)
set('ListenAddress', Machine1IP)
set('NMType',NodeManagerType) 

cd('/')
create(Machine2Name, 'Machine')
cd('Machine/' + Machine2Name)
create(Machine2Name, 'NodeManager')
cd('NodeManager/' + Machine2Name)
set('ListenAddress', Machine2IP)
set('NMType',NodeManagerType) 
#set('NodeManagerHome',nm_home)


cd('/')
create(Machine3Name, 'Machine')
cd('Machine/' + Machine3Name)
create(Machine3Name, 'NodeManager')
cd('NodeManager/' + Machine3Name)
set('ListenAddress', Machine3IP)
set('NMType',NodeManagerType) 

cd('/')
create(Machine4Name, 'Machine')
cd('Machine/' + Machine4Name)
create(Machine4Name, 'NodeManager')
cd('NodeManager/' + Machine4Name)
set('ListenAddress', Machine4IP)
set('NMType',NodeManagerType) 

#cd('/')
#cd('/Servers/AdminServer')
#set('Machine', Machine1Name)
#=======================================================================================
# Create two WLS Core Cluster Managed Servers and configure them.
# 
#=======================================================================================
cd('/')

print 'Creating servers'

#server1
create(ServerWLSCore1Name, 'Server')   
cd('Server/' + ServerWLSCore1Name)
set('ListenPort', int(WLSServerPort)) 
set('ListenAddress', ms_vip1)
set('Machine', Machine1Name)

create(ServerWLSCore1Name,'SSL')
cd('SSL/'+ServerWLSCore1Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(ServerWLSCore1Name,'ServerStart')
cd('ServerStart/' + ServerWLSCore1Name)
set('Arguments', WLSCore_Java_Arguments)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)
cd('/')


#server2
server2=create(ServerWLSCore2Name, 'Server')

cd('Server/' + ServerWLSCore2Name)
set('ListenPort', int(WLSServerPort)) 
set('ListenAddress', ms_vip2)
set('Machine', Machine2Name)

create(ServerWLSCore2Name,'SSL')
cd('SSL/'+ServerWLSCore2Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(ServerWLSCore2Name,'ServerStart')
cd('ServerStart/' + ServerWLSCore2Name)
set('Arguments', WLSCore_Java_Arguments)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)
cd('/')


#server3
server3=create(ServerWLSCore3Name, 'Server')

cd('Server/' + ServerWLSCore3Name)
set('ListenPort', int(WLSServerPort)) 
set('ListenAddress', ms_vip3)
set('Machine', Machine3Name)

create(ServerWLSCore3Name,'SSL')
cd('SSL/'+ServerWLSCore3Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')


create(ServerWLSCore3Name,'ServerStart')
cd('ServerStart/' + ServerWLSCore3Name)
set('Arguments', WLSCore_Java_Arguments)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
cd('/')


#server4
server4=create(ServerWLSCore4Name, 'Server')

cd('Server/' + ServerWLSCore4Name)
set('ListenPort', int(WLSServerPort)) 
set('ListenAddress', ms_vip4)
set('Machine', Machine4Name)

create(ServerWLSCore4Name,'SSL')
cd('SSL/'+ServerWLSCore4Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(ServerWLSCore4Name,'ServerStart')
cd('ServerStart/' + ServerWLSCore4Name)
set('Arguments', WLSCore_Java_Arguments)
set('JavaVendor','Sun')
set('JavaHome',javaHome)

print 'Creating Clusters and assigning them'

#=======================================================================================
# Create and configure a cluster and assign the Managed Servers to that cluster.
#=======================================================================================
#cluster1
WLSCoreCluster = WLSCoreClusterName
cd('/')
create(WLSCoreCluster, 'Cluster')
assign('Server', ServerWLSCore1Name + ', ' + ServerWLSCore2Name+ ', ' + ServerWLSCore3Name+ ', ' + ServerWLSCore4Name, 'Cluster', WLSCoreCluster)
cd('Clusters/' + WLSCoreCluster)
#set('ClusterAddress', '237.0.0.1')
set('ClusterMessagingMode', 'unicast')
#set('WeblogicPluginEnabled', 'true')

clusters = WLSCoreCluster

dumpStack()


#=======================================================================================
# Write the domain and close the domain template.
#=======================================================================================
print 'Creating configurations...'

#writeDomain(DOMAIN_PATH)
#updateDomain()
#closeDomain();

print 'WLS Core Domain created successfully created.'

#==================================================================================

#===========================SOA Core DOMAIN ================================
print 'reading domain from '+DOMAIN_PATH

#readDomain(DOMAIN_PATH)

print 'Adding SOA Template'
addTemplate(wlsHome+'/oracle_common/common/templates/applications/oracle.applcore.model.stub.11.1.1_template.jar')
addTemplate(wlsHome+'/oracle_common/common/templates/applications/jrf_template_11.1.1.jar')
addTemplate(wlsHome+'/oracle_common/common/templates/applications/oracle.wsmpm_template_11.1.1.jar')
addTemplate(soaHome+'/common/templates/applications/oracle.soa_template_11.1.1.jar')    

print 'Adding EM Template'
addTemplate(wlsHome+'/oracle_common/common/templates/applications/oracle.em_11_1_1_0_0_template.jar')

dumpStack();


cd('/JDBCSystemResource/EDNDataSource/JdbcResource/EDNDataSource/JDBCDriverParams/NO_NAME_0')  
set('URL',DBURL)  
set('PasswordEncrypted',DBPASSWORD)  
cd('Properties/NO_NAME_0/Property/user')  
set('Value',DBUSER_PREFIX+'_SOAINFRA')

cd('/JDBCSystemResource/EDNLocalTxDataSource/JdbcResource/EDNLocalTxDataSource/JDBCDriverParams/NO_NAME_0')  

set('URL',DBURL)  

set('PasswordEncrypted',DBPASSWORD)  
cd('Properties/NO_NAME_0/Property/user')  
set('Value',DBUSER_PREFIX+'_SOAINFRA')

cd('/JDBCSystemResource/OraSDPMDataSource/JdbcResource/OraSDPMDataSource/JDBCDriverParams/NO_NAME_0')  

set('URL',DBURL)  

set('PasswordEncrypted',DBPASSWORD)  
cd('Properties/NO_NAME_0/Property/user')  
set('Value',DBUSER_PREFIX+'_ORASDPM')

cd('/JDBCSystemResource/SOADataSource/JdbcResource/SOADataSource/JDBCDriverParams/NO_NAME_0')  

set('URL',DBURL)  

set('PasswordEncrypted',DBPASSWORD)  
cd('Properties/NO_NAME_0/Property/user')  
set('Value',DBUSER_PREFIX+'_SOAINFRA')

cd('/JDBCSystemResource/SOALocalTxDataSource/JdbcResource/SOALocalTxDataSource/JDBCDriverParams/NO_NAME_0')  

set('URL',DBURL)  

set('PasswordEncrypted',DBPASSWORD)  
cd('Properties/NO_NAME_0/Property/user')  
set('Value',DBUSER_PREFIX+'_SOAINFRA')

cd('/JDBCSystemResource/mds-owsm/JdbcResource/mds-owsm/JDBCDriverParams/NO_NAME_0')  

set('URL',DBURL)  

set('PasswordEncrypted',DBPASSWORD)  
cd('Properties/NO_NAME_0/Property/user')  
set('Value',DBUSER_PREFIX+'_MDS')

cd('/JDBCSystemResource/mds-soa/JdbcResource/mds-soa/JDBCDriverParams/NO_NAME_0')  

set('URL',DBURL)  

set('PasswordEncrypted',DBPASSWORD)  
cd('Properties/NO_NAME_0/Property/user')  
set('Value',DBUSER_PREFIX+'_MDS')

#==================================================================================


#=======================================================================================
# Create the machines to associate the managed servers with, so they can be controlled
# by the node manager.
#=======================================================================================
cd('/')

print 'Deleting default servers & machines'

#delete default servers from the template
delete('LocalMachine', 'Machine')
delete('soa_server1', 'Server')


#=======================================================================================
# Create two SOA Core Managed Servers (nodes in the cluster) and configure them.
# 
#=======================================================================================
cd('/')

print 'Creating servers'

coherenceUnicastSetup = ' -Dtangosol.coherence.wka1='+soac_vip1+' -Dtangosol.coherence.wka2='+soac_vip2+' -Dtangosol.coherence.wka3='+soac_vip3+' -Dtangosol.coherence.wka4='+soac_vip4+' -Dtangosol.coherence.localport=8081 -Dtangosol.coherence.wka1.port=8081 -Dtangosol.coherence.wka2.port=8081 -Dtangosol.coherence.wka3.port=8081 -Dtangosol.coherence.wka4.port=8081'

#server1
create(SOAServer1Name, 'Server')   
cd('Server/' + SOAServer1Name)
set('ListenPort', int(SOAServerPort)) 
set('ListenAddress', soac_vip1)
set('Machine', Machine1Name)

create(SOAServer1Name,'SSL')
cd('SSL/'+SOAServer1Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')


create(SOAServer1Name,'ServerStart')
cd('ServerStart/' + SOAServer1Name)
set('Arguments', SOACore_Java_Arguments+' -Dtangosol.coherence.localhost='+soac_vip1+' '+coherenceUnicastSetup)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)
cd('/')


#server2
server2=create(SOAServer2Name, 'Server')

cd('Server/' + SOAServer2Name)
set('ListenPort', int(SOAServerPort)) 
set('ListenAddress', soac_vip2)
set('Machine', Machine2Name)

create(SOAServer2Name,'SSL')
cd('SSL/'+SOAServer2Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(SOAServer2Name,'ServerStart')
cd('ServerStart/' + SOAServer2Name)
set('Arguments', SOACore_Java_Arguments+' -Dtangosol.coherence.localhost='+soac_vip2+' '+coherenceUnicastSetup)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)

cd('/')

#server3
create(SOAServer3Name, 'Server')
cd('Server/' + SOAServer3Name)
set('ListenPort', int(SOAServerPort)) 
set('ListenAddress', soac_vip3)
set('Machine', Machine3Name)

create(SOAServer3Name,'SSL')
cd('SSL/'+SOAServer3Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(SOAServer3Name,'ServerStart')
cd('ServerStart/' + SOAServer3Name)
set('Arguments', SOACore_Java_Arguments+' -Dtangosol.coherence.localhost='+soac_vip3+' '+coherenceUnicastSetup)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)

cd('/')

#server4
create(SOAServer4Name, 'Server')
cd('Server/' + SOAServer4Name)
set('ListenPort', int(SOAServerPort)) 
set('ListenAddress', soac_vip4)
set('Machine', Machine4Name)

create(SOAServer4Name,'SSL')
cd('SSL/'+SOAServer4Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(SOAServer4Name,'ServerStart')
cd('ServerStart/' + SOAServer4Name)
set('Arguments', SOACore_Java_Arguments+' -Dtangosol.coherence.localhost='+soac_vip4+' '+coherenceUnicastSetup)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)

cd('/')

print 'Creating Clusters and assigning them'

#=======================================================================================
# Create and configure a cluster and assign the Managed Servers to that cluster.
#=======================================================================================
#SOACluster
ClusterName1 = SOAClusterName
cd('/')
create(ClusterName1, 'Cluster')
assign('Server', SOAServer1Name + ', ' + SOAServer2Name+ ', ' + SOAServer3Name+ ', ' + SOAServer4Name, 'Cluster', ClusterName1)
cd('Clusters/' + ClusterName1)
#set('ClusterAddress', '237.0.0.2')
set('ClusterMessagingMode', 'unicast')

clusters = ClusterName1


#=======================================================================================
# Write the domain and close the domain template.
#=======================================================================================
print 'Creating configurations...'

#writeDomain(DOMAIN_PATH)
#updateDomain()


print 'Successfully Updated SOA Core Domain.'

#closeDomain()    

#===========================OSB Core DOMAIN ================================
print 'reading domain from '+DOMAIN_PATH

#readDomain(DOMAIN_PATH)

dumpStack();

print 'Adding OSB Template'
addTemplate(wlsServer + "/common/templates/applications/wls_webservice.jar")
addTemplate(osbHome+'/common/templates/applications/wlsb.jar')

dumpStack();

#=======================================================================================
# Create the machines to associate the managed servers with, so they can be controlled
# by the node manager.
#=======================================================================================
cd('/')

print 'Deleting default servers'

#delete default servers from the template
delete('osb_server1', 'Server')

#=======================================================================================
# Create two OSB Managed Servers (nodes in the cluster) and configure them.
# 
#=======================================================================================
cd('/')

print 'Creating servers'

#server1
create(OSBServer1Name, 'Server')   
cd('Server/' + OSBServer1Name)
set('ListenPort', int(OSBServerPort)) 
set('ListenAddress', osb_vip1)
set('Machine', Machine1Name)

create(OSBServer1Name,'SSL')
cd('SSL/'+OSBServer1Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(OSBServer1Name,'ServerStart')
cd('ServerStart/' + OSBServer1Name)
set('Arguments', OSBCore_Java_Arguments)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)
cd('/')


#server2
server2=create(OSBServer2Name, 'Server')

cd('Server/' + OSBServer2Name)
set('ListenPort', int(OSBServerPort)) 
set('ListenAddress', osb_vip2)
set('Machine', Machine2Name)

create(OSBServer2Name,'SSL')
cd('SSL/'+OSBServer2Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(OSBServer2Name,'ServerStart')
cd('ServerStart/' + OSBServer2Name)
set('Arguments', OSBCore_Java_Arguments)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)
cd('/')


#server3
server3=create(OSBServer3Name, 'Server')

cd('Server/' + OSBServer3Name)
set('ListenPort', int(OSBServerPort)) 
set('ListenAddress', osb_vip3)
set('Machine', Machine3Name)

create(OSBServer3Name,'SSL')
cd('SSL/'+OSBServer3Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(OSBServer3Name,'ServerStart')
cd('ServerStart/' + OSBServer3Name)
set('Arguments', OSBCore_Java_Arguments)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)
cd('/')


#server4
server4=create(OSBServer4Name, 'Server')

cd('Server/' + OSBServer4Name)
set('ListenPort', int(OSBServerPort)) 
set('ListenAddress', osb_vip4)
set('Machine', Machine4Name)

create(OSBServer4Name,'SSL')
cd('SSL/'+OSBServer4Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(OSBServer4Name,'ServerStart')
cd('ServerStart/' + OSBServer4Name)
set('Arguments', OSBCore_Java_Arguments)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)

print 'Creating Clusters and assigning them'

#=======================================================================================
# Create and configure a cluster and assign the Managed Servers to that cluster.
#=======================================================================================
#OSBCluster
ClusterName1 = OSBClusterName
cd('/')
create(ClusterName1, 'Cluster')
assign('Server', OSBServer1Name + ', ' + OSBServer2Name+ ', ' + OSBServer3Name+ ', ' + OSBServer4Name, 'Cluster', ClusterName1)
cd('Clusters/' + ClusterName1)
#set('ClusterAddress', '237.0.0.3')
set('ClusterMessagingMode', 'unicast')

clusters = ClusterName1

#cd('/JDBCSystemResource/wlsbjmsrpDataSource/JdbcResource/wlsbjmsrpDataSource/JDBCDriverParams/NO_NAME_0')  

#set('URL',DBURL)  

#set('PasswordEncrypted',DBPASSWORD)  
#cd('Properties/NO_NAME_0/Property/user')  
#set('Value',DBUSER_PREFIX+'_SOAINFRA')

##############UN ASSIGN All#####################

unassign('StartupClass','*','Target',SOAClusterName+','+OSBClusterName+','+WLSCoreClusterName)
unassign('ShutdownClass','*','Target',SOAClusterName+','+OSBClusterName+','+WLSCoreClusterName)
unassign('Library','*','Target',SOAClusterName+','+OSBClusterName+','+WLSCoreClusterName)
unassign('AppDeployment', '*', 'Target', SOAClusterName+','+OSBClusterName+','+WLSCoreClusterName)
unassign('JdbcSystemResource', '*', 'Target', SOAClusterName+','+OSBClusterName+','+WLSCoreClusterName)
unassign('WldfSystemResource', '*', 'Target', SOAClusterName+','+OSBClusterName+','+WLSCoreClusterName)
unassign('JmsSystemResource', '*', 'Target', SOAClusterName+','+OSBClusterName+','+WLSCoreClusterName)
unassign('JmsSystemResource.SubDeployment', '*', 'Target', SOAClusterName+','+OSBClusterName+','+WLSCoreClusterName)
#unassign('SelfTuning.WorkManager', '*', 'Target', SOAClusterName+','+OSBClusterName+','+WLSCoreClusterName)

unassign('AppDeployment', 'FMW Welcome Page Application#11.1.0.0.0', 'Target', 'AdminServer')

########################################Assign All##############################################

assign('AppDeployment', 'wsil-wls', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('AppDeployment', 'DMS Application#11.1.1.1.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('AppDeployment', 'FileAdapter', 'Target', SOAClusterName+','+OSBClusterName)
assign('AppDeployment', 'DbAdapter', 'Target', SOAClusterName+','+OSBClusterName)
assign('AppDeployment', 'JmsAdapter', 'Target', SOAClusterName+','+OSBClusterName)
assign('AppDeployment', 'AqAdapter', 'Target', SOAClusterName+','+OSBClusterName)
assign('AppDeployment', 'FtpAdapter', 'Target', SOAClusterName+','+OSBClusterName)
assign('AppDeployment', 'SocketAdapter', 'Target', SOAClusterName+','+OSBClusterName)
assign('AppDeployment', 'MQSeriesAdapter', 'Target', SOAClusterName+','+OSBClusterName)
assign('AppDeployment', 'OracleAppsAdapter', 'Target', SOAClusterName+','+OSBClusterName)
assign('AppDeployment', 'OracleBamAdapter', 'Target', SOAClusterName+','+OSBClusterName)
assign('AppDeployment', 'wsm-pm', 'Target', WLSCoreClusterName+','+SOAClusterName)
assign('AppDeployment', 'usermessagingserver', 'Target', SOAClusterName)
assign('AppDeployment', 'usermessagingdriver-email', 'Target', SOAClusterName)


assign('AppDeployment', 'soa-infra', 'Target', SOAClusterName)
assign('AppDeployment', 'worklistapp', 'Target', SOAClusterName)
assign('AppDeployment', 'b2bui', 'Target', SOAClusterName)
assign('AppDeployment', 'DefaultToDoTaskFlow', 'Target', SOAClusterName)
assign('AppDeployment', 'composer', 'Target', SOAClusterName)
assign('AppDeployment', 'ALSB Framework Starter Application', 'Target', OSBClusterName+',AdminServer')
assign('AppDeployment', 'ALSB Coherence Cache Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'XBus Kernel', 'Target', OSBClusterName+',AdminServer')


assign('AppDeployment.SubDeployment', '/httpTransport', 'Target', OSBClusterName+',AdminServer')


assign('AppDeployment', 'ALSB UDDI Manager', 'Target', 'AdminServer')

assign('AppDeployment', 'ALSB Subscription Listener', 'Target', OSBClusterName)
assign('AppDeployment', 'JMS Reporting Provider', 'Target', OSBClusterName)
#assign('AppDeployment', 'Message Reporting Purger', 'Target', OSBClusterName) #osbserver
assign('AppDeployment', 'Ftp Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'SFTP Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'Email Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'File Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'MQ Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'EJB Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'Tuxedo Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'ALDSP Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'SB Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'WS Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'WS Transport Async Applcation', 'Target', OSBClusterName)
assign('AppDeployment', 'FLOW Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'BPEL 10g Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'JCA Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'JEJB Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'SOA-DIRECT Transport Provider', 'Target', OSBClusterName)
assign('AppDeployment', 'ALSB Routing', 'Target', OSBClusterName+',AdminServer')
assign('AppDeployment', 'ALSB Transform', 'Target', OSBClusterName+',AdminServer')
assign('AppDeployment', 'ALSB Publish', 'Target', OSBClusterName+',AdminServer')
assign('AppDeployment', 'ALSB Logging', 'Target', OSBClusterName+',AdminServer')
assign('AppDeployment', 'ALSB Resource', 'Target', OSBClusterName)
assign('AppDeployment', 'ALSB WSIL', 'Target', OSBClusterName)
assign('AppDeployment', 'ServiceBus_Console', 'Target', 'AdminServer')


assign('AppDeployment', 'ALSB Test Framework', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'oracle.bi.jbips#11.1.1@0.1', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.bi.composer#11.1.1@0.1', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.bi.adf.model.slib#1.0@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.bi.adf.view.slib#1.0@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.bi.adf.webcenter.slib#1.0@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.wsm.seedpolicies#11.1.1@11.1.1', 'Target', WLSCoreClusterName+','+SOAClusterName+','+OSBClusterName+',AdminServer') #Revisit
assign('Library', 'oracle.jsp.next#11.1.1@11.1.1', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.dconfig-infra#11@11.1.1.1.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'orai18n-adf#11@11.1.1.1.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.adf.dconfigbeans#1.0@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.pwdgen#11.1.1@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.jrf.system.filter', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'adf.oracle.domain#1.0@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'adf.oracle.businesseditor#1.0@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.adf.management#1.0@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'adf.oracle.domain.webapp#1.0@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'jsf#1.2@1.2.9.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'UIX#11@11.1.1.1.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'ohw-rcf#5@5.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'ohw-uix#5@5.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.adf.desktopintegration.model#1.0@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.adf.desktopintegration#1.0@11.1.1.2.0', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('Library', 'oracle.rules#11.1.1@11.1.1', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.sdp.client#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.workflow.wc#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.worklist.webapp#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.rules_editor_dc.webapp#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.rules_dict_dc.webapp#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.sdp.messaging#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.worklist#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.bpel#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.workflow#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.mediator#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.composer.webapp#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.ext#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.jrf.coherence#3@11.1.1', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'coherence-l10n#11.1.1@11.1.1', 'Target', OSBClusterName)
assign('Library', 'ftptransport-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'sftptransport-l10n#3.0@3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'emailtransport-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'filetransport-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'mqtransport-l10n#3.0@3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'mqconnection-l10n#3.0@3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'ejbtransport-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'tuxedotransport-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'aldsp_transport-l10n#3.0@3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'wstransport-l10n#2.6@2.6', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'flow-transport-l10n#3.0@3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'bpel10gtransport-l10n#3.1@3.1', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'jcatransport-l10n#3.1@3.1', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'wsif#11.1.1@11.1.1', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'JCAFrameworkImpl#11.1.1@11.1.1', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'jejbtransport-l10n#3.2@3.2', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'jejbtransport-jar#3.2@3.2', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'soatransport-l10n#11.1.1.2.0@11.1.1.2.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'stage-utils#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'sbconsole-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'xbusrouting-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'xbustransform-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'xbuspublish-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'xbuslogging-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'testfwk-l10n#2.5@2.5', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'com.bea.wlp.lwpf.console.app#10.3.0@10.3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'com.bea.wlp.lwpf.console.web#10.3.0@10.3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'wlp-lookandfeel-web-lib#10.3.0@10.3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'wlp-light-web-lib#10.3.0@10.3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'wlp-framework-common-web-lib#10.3.0@10.3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'wlp-framework-struts-1.2-web-lib#10.3.0@10.3.0', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'struts-1.2#1.2@1.2.9', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'beehive-netui-1.0.1-10.0#1.0@1.0.2.2', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'beehive-netui-resources-1.0.1-10.0#1.0@1.0.2.2', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'beehive-controls-1.0.1-10.0-war#1.0@1.0.2.2', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'weblogic-controls-10.0-war#10.0@10.2', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'wls-commonslogging-bridge-war#1.0@1.1', 'Target', OSBClusterName+',AdminServer')
assign('Library', 'jstl#1.2@1.2.0.1', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')

assign('Library', 'oracle.applcore.model#0.1@11.1.1.0.0', 'Target', SOAClusterName)
assign('Library', 'oracle.applcore.view#0.1@11.1.1.0.0', 'Target', SOAClusterName)


dumpStack();

#assign('SelfTuning.WorkManager', 'weblogic.wsee.mdb.DispatchPolicy', 'Target', WLSCoreClusterName+','+OSBClusterName)
dumpStack();

#assign('SelfTuning.WorkManager', 'weblogic.wsee.jaxws.mdb.DispatchPolicy', 'Target', WLSCoreClusterName)
#assign('SelfTuning.WorkManager', 'wm/SOAWorkManager', 'Target', SOAClusterName)
dumpStack();



assign('ShutdownClass', 'JOC-Shutdown', 'Target', WLSCoreClusterName+','+SOAClusterName+','+OSBClusterName+',AdminServer')
assign('ShutdownClass', 'DMSShutdown', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('StartupClass', 'JRF Startup Class', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('StartupClass', 'JPS Startup Class', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('StartupClass', 'ODL-Startup', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('StartupClass', 'Audit Loader Startup Class', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('StartupClass', 'AWT Application Context Startup Class', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('StartupClass', 'JMX Framework Startup Class', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('StartupClass', 'Web Services Startup Class', 'Target', WLSCoreClusterName+','+SOAClusterName+','+OSBClusterName+',AdminServer') #Revisit
assign('StartupClass', 'JOC-Startup', 'Target', WLSCoreClusterName+','+SOAClusterName+','+OSBClusterName+',AdminServer')
assign('StartupClass', 'DMS-Startup', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('StartupClass', 'SOAStartupClass', 'Target', SOAClusterName)
assign('StartupClass', 'OSB JCA Transport Post-Activation Startup Class', 'Target', OSBClusterName+',AdminServer')


assign('JmsSystemResource', 'WseeJaxwsJmsModule', 'Target', WLSCoreClusterName)
assign('JmsSystemResource', 'WseeJmsModule', 'Target', WLSCoreClusterName+','+OSBClusterName)
dumpStack();


assign('JmsSystemResource', 'UMSJMSSystemResource', 'Target', SOAClusterName)
assign('JmsSystemResource', 'BPMJMSModule', 'Target', SOAClusterName)

assign('JmsSystemResource', 'SOAJMSModule', 'Target', SOAClusterName)
assign('JmsSystemResource', 'jmsResources', 'Target', OSBClusterName)

#assign('JmsSystemResource.SubDeployment', 'weblogic.wlsb.jms.transporttask.QueueConnectionFactory', 'Target', OSBClusterName)

assign('WldfSystemResource', 'Module-FMWDFW', 'Target', SOAClusterName+','+OSBClusterName+',AdminServer')
assign('JdbcSystemResource', 'mds-owsm', 'Target', WLSCoreClusterName+','+SOAClusterName+',AdminServer')
assign('JdbcSystemResource', 'OraSDPMDataSource', 'Target', SOAClusterName)
assign('JdbcSystemResource', 'SOADataSource', 'Target', SOAClusterName)
assign('JdbcSystemResource', 'EDNDataSource', 'Target', SOAClusterName)
assign('JdbcSystemResource', 'EDNLocalTxDataSource', 'Target', SOAClusterName)
assign('JdbcSystemResource', 'SOALocalTxDataSource', 'Target', SOAClusterName)
assign('JdbcSystemResource', 'mds-soa', 'Target', SOAClusterName+',AdminServer')
unassign('JdbcSystemResource', 'wlsbjmsrpDataSource', 'Target', OSBClusterName+',AdminServer')


#=======================================================================================
# Write the domain and close the domain template.
#=======================================================================================
print 'Creating configurations...'
dumpStack();

#writeDomain(DOMAIN_PATH)
updateDomain()
dumpStack();

#===========================Read DOMAIN ================================
print 'reading domain from '+DOMAIN_PATH

closeDomain();
readDomain(DOMAIN_PATH)

setOption( "AppDir", wlsDomain + '/' + sys.argv[1]+'/aserver/applications' )

unassign('AppDeployment', '*', 'Target', OSBServer1Name)
assign('AppDeployment', 'ALSB Cluster Singleton Marker Application', 'Target', OSBClusterName) #osbserver
assign('AppDeployment', 'ALSB Domain Singleton Marker Application', 'Target', OSBClusterName) #osbserver

cd('/SecurityConfiguration/'+sys.argv[1])
set('NodeManagerUsername', 'weblogic')
set('NodeManagerPasswordEncrypted', AdminPasswd)
updateDomain()
closeDomain()

print 'Successfully created domain.'
createNodeManagerPropertiesFile(DOMAIN_PATH+'/config/nodemanager','weblogic',AdminPasswd)
createAdminStartupPropertiesFile(DOMAIN_PATH+'/servers/AdminServer/data/nodemanager',Admin_Java_Arguments)   
  
exit()

