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

#The java6 home directory
javaHome=os.environ["JAVA_HOME"]
JAVA_HOME=javaHome

#SUN

Admin_Java_Arguments= configProps.get("domain2.Admin_Java_Arguments")

SOA_Java_Arguments=configProps.get("domain2.SOA_Java_Arguments")

#JROCKIT
#Java_Arguments=' -Xms512m -Xmx1024m -XX:PermSize=128m -XX:MaxPermSize=512m -Xnohup '
print "JAVA_HOME="+javaHome

soax_vip5= configProps.getProperty("domain2.soax-vip5")
soax_vip6= configProps.getProperty("domain2.soax-vip6")
soax_vip7= configProps.getProperty("domain2.soax-vip7")

# Administration server configuration
AdminIP= configProps.getProperty("domain2.aadm-vip1")
AdminPort= configProps.getProperty("domain2.AdminPort")
AdminPasswd= configProps.getProperty("domain2.AdminPasswd")

NodeManagerMachineType=configProps.getProperty("domain2.NodeManagerMachineType")
NodeManagerType=configProps.getProperty("domain2.NodeManagerType")
ServerMode = configProps.getProperty("SERVER_MODE")

Machine1IP= configProps.getProperty("domain2.Machine1IP")
Machine2IP= configProps.getProperty("domain2.Machine2IP")
Machine3IP= configProps.getProperty("domain2.Machine3IP")
Machine4IP= configProps.getProperty("domain2.Machine4IP")
Machine1Name= configProps.getProperty("domain2.Machine1Name")
Machine2Name= configProps.getProperty("domain2.Machine2Name")
Machine3Name= configProps.getProperty("domain2.Machine3Name")
Machine4Name= configProps.getProperty("domain2.Machine4Name")

# Cluster Names
SOAServerPort= configProps.getProperty("domain2.SOAServerPort")

SOAClusterName= configProps.getProperty("domain2.SOAClusterName")

# Server 5 configuration
SOAServer5Name= configProps.getProperty("domain2.SOAServer5Name")

# Server 6 configuration
SOAServer6Name= configProps.getProperty("domain2.SOAServer6Name")

# Server 7 configuration
SOAServer7Name= configProps.getProperty("domain2.SOAServer7Name")

# SOADomain Datasource Configuration
DBURL= configProps.getProperty("domain2.DBURL")
DBUSER_PREFIX=configProps.getProperty("domain2.DBUSER_PREFIX")
DBPASSWORD=configProps.getProperty("domain2.DBPASSWORD")

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
print 'Creating domain at '+wlsDomain + '/' +  sys.argv[1]+'/aserver/'+ sys.argv[1]

DOMAIN_PATH= wlsDomain + '/' + sys.argv[1]+'/aserver/'+ sys.argv[1]
cd('Servers/AdminServer')
#set('Machine', Machine1Name)
set('ListenAddress',AdminIP)
dumpStack()
set('ListenPort', int(AdminPort))
dumpStack()
create('AdminServer','SSL')
cd('SSL/AdminServer')
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')


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

print 'Creating domain '+sys.argv[1]+' at'+DOMAIN_PATH

writeDomain(DOMAIN_PATH)
closeTemplate()
createBootPropertiesFile(DOMAIN_PATH+'/servers/AdminServer/security','weblogic',AdminPasswd)
#===========================SOA DOMAIN ================================
print 'reading domain from '+DOMAIN_PATH

readDomain(DOMAIN_PATH)

setOption( "AppDir", wlsDomain + '/' + sys.argv[1]+'/aserver/applications' )
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
#set('Machine', Machine4Name)

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

#cd('/JDBCSystemResource/wlsbjmsrpDataSource/JdbcResource/wlsbjmsrpDataSource/JDBCDriverParams/NO_NAME_0')  

#set('URL',DBURL)  

#set('PasswordEncrypted',DBPASSWORD)  
#cd('Properties/NO_NAME_0/Property/user')  
#set('Value',DBUSER_PREFIX+'_SOAINFRA')

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

print 'Creating servers.......'

#server5
create(SOAServer5Name, 'Server')   
cd('Server/' + SOAServer5Name)
set('ListenPort', int(SOAServerPort)) 
set('ListenAddress', soax_vip5)
set('Machine', Machine2Name)
print 'Creating servers.......'

create(SOAServer5Name,'SSL')
cd('SSL/'+SOAServer5Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

coherenceUnicastSetup = ' -Dtangosol.coherence.wka1='+soax_vip5+' -Dtangosol.coherence.wka2='+soax_vip6+' -Dtangosol.coherence.wka3='+soax_vip7+' -Dtangosol.coherence.localport=9081 -Dtangosol.coherence.wka1.port=9081 -Dtangosol.coherence.wka2.port=9081 -Dtangosol.coherence.wka3.port=9081'

create(SOAServer5Name,'ServerStart')
cd('ServerStart/' + SOAServer5Name)
set('Arguments', SOA_Java_Arguments+' -Dtangosol.coherence.localhost='+soax_vip5+' '+coherenceUnicastSetup)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)
cd('/')
print 'Creating servers.......'


#server6
server2=create(SOAServer6Name, 'Server')

cd('Server/' + SOAServer6Name)
set('ListenPort', int(SOAServerPort)) 
set('ListenAddress', soax_vip6)
set('Machine', Machine3Name)

create(SOAServer6Name,'SSL')
cd('SSL/'+SOAServer6Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(SOAServer6Name,'ServerStart')
cd('ServerStart/' + SOAServer6Name)
set('Arguments', SOA_Java_Arguments+' -Dtangosol.coherence.localhost='+soax_vip6+' '+coherenceUnicastSetup)
set('JavaVendor','Sun')
set('JavaHome',javaHome)
#set('RootDirectory',DOMAIN_PATH)
#set('Username','weblogic')    
#set('PasswordEncrypted',AdminPasswd)

cd('/')

#server7
create(SOAServer7Name, 'Server')
cd('Server/' + SOAServer7Name)
set('ListenPort', int(SOAServerPort)) 
set('ListenAddress', soax_vip7)
set('Machine', Machine4Name)

create(SOAServer7Name,'SSL')
cd('SSL/'+SOAServer7Name)
set('Enabled', 'False')
set('HostNameVerificationIgnored', 'True')
cd('../..')

create(SOAServer7Name,'ServerStart')
cd('ServerStart/' + SOAServer7Name)
set('Arguments', SOA_Java_Arguments+' -Dtangosol.coherence.localhost='+soax_vip7+' '+coherenceUnicastSetup)
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
cluster = create(ClusterName1, 'Cluster')
assign('Server', SOAServer5Name + ', ' + SOAServer6Name+ ', ' + SOAServer7Name, 'Cluster', ClusterName1)
cd('Clusters/' + ClusterName1)
#set('ClusterAddress', '237.0.0.4')
cluster.setMulticastAddress('')
#ls()
cluster.setMulticastPort(1)
cluster.setClusterMessagingMode('unicast')

clusters = ClusterName1

unassign('StartupClass','*','Target',SOAClusterName)
unassign('ShutdownClass','*','Target',SOAClusterName)
unassign('Library','*','Target',SOAClusterName)
unassign('AppDeployment', '*', 'Target', SOAClusterName)
unassign('JdbcSystemResource', '*', 'Target', SOAClusterName)
unassign('WldfSystemResource', '*', 'Target', SOAClusterName)
unassign('JmsSystemResource', '*', 'Target', SOAClusterName)
#unassign('JmsSystemResource.SubDeployment', '*', 'Target', SOAClusterName)
#unassign('SelfTuning.WorkManager', '*', 'Target', SOAClusterName)

unassign('AppDeployment', 'FMW Welcome Page Application#11.1.0.0.0', 'Target', 'AdminServer')

assign('AppDeployment', 'wsil-wls', 'Target', SOAClusterName+',AdminServer')
assign('AppDeployment', 'DMS Application#11.1.1.1.0', 'Target', SOAClusterName+',AdminServer')
assign('AppDeployment', 'FileAdapter', 'Target', SOAClusterName)
assign('AppDeployment', 'DbAdapter', 'Target', SOAClusterName)
assign('AppDeployment', 'JmsAdapter', 'Target', SOAClusterName)
assign('AppDeployment', 'AqAdapter', 'Target', SOAClusterName)
assign('AppDeployment', 'FtpAdapter', 'Target', SOAClusterName)
assign('AppDeployment', 'SocketAdapter', 'Target', SOAClusterName)
assign('AppDeployment', 'MQSeriesAdapter', 'Target', SOAClusterName)
assign('AppDeployment', 'OracleAppsAdapter', 'Target', SOAClusterName)
assign('AppDeployment', 'OracleBamAdapter', 'Target', SOAClusterName)
assign('AppDeployment', 'wsm-pm', 'Target', SOAClusterName)
assign('AppDeployment', 'usermessagingserver', 'Target', SOAClusterName)
assign('AppDeployment', 'usermessagingdriver-email', 'Target', SOAClusterName)


assign('AppDeployment', 'soa-infra', 'Target', SOAClusterName)
assign('AppDeployment', 'worklistapp', 'Target', SOAClusterName)
assign('AppDeployment', 'b2bui', 'Target', SOAClusterName)
assign('AppDeployment', 'DefaultToDoTaskFlow', 'Target', SOAClusterName)
assign('AppDeployment', 'composer', 'Target', SOAClusterName)

#http://download.oracle.com/docs/cd/E21764_01/core.1111/e12036/extend_soa.htm#insertedID3

assign('Library', 'oracle.bi.jbips#11.1.1@0.1', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.bi.composer#11.1.1@0.1', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.bi.adf.model.slib#1.0@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.bi.adf.view.slib#1.0@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.bi.adf.webcenter.slib#1.0@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.wsm.seedpolicies#11.1.1@11.1.1', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.jsp.next#11.1.1@11.1.1', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.dconfig-infra#11@11.1.1.1.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'orai18n-adf#11@11.1.1.1.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.adf.dconfigbeans#1.0@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.pwdgen#11.1.1@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.jrf.system.filter', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'adf.oracle.domain#1.0@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'adf.oracle.businesseditor#1.0@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.adf.management#1.0@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'adf.oracle.domain.webapp#1.0@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'jsf#1.2@1.2.9.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'UIX#11@11.1.1.1.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'ohw-rcf#5@5.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'ohw-uix#5@5.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.adf.desktopintegration.model#1.0@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.adf.desktopintegration#1.0@11.1.1.2.0', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.rules#11.1.1@11.1.1', 'Target', SOAClusterName+',AdminServer')
assign('Library', 'oracle.sdp.client#11.1.1@11.1.1', 'Target', SOAClusterName) #Removed Admin
assign('Library', 'oracle.soa.workflow.wc#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.worklist.webapp#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.rules_editor_dc.webapp#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.rules_dict_dc.webapp#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.sdp.messaging#11.1.1@11.1.1', 'Target', SOAClusterName)#Removed Admin
assign('Library', 'oracle.soa.worklist#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.bpel#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.workflow#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.mediator#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.composer.webapp#11.1.1@11.1.1', 'Target', SOAClusterName)
assign('Library', 'oracle.soa.ext#11.1.1@11.1.1', 'Target', SOAClusterName)

assign('Library', 'oracle.applcore.model#0.1@11.1.1.0.0', 'Target', SOAClusterName)
assign('Library', 'oracle.applcore.view#0.1@11.1.1.0.0', 'Target', SOAClusterName)

assign('Library', 'jstl#1.2@1.2.0.1', 'Target', SOAClusterName+',AdminServer')

dumpStack();

#assign('SelfTuning.WorkManager', 'wm/SOAWorkManager', 'Target', SOAClusterName)
dumpStack();

assign('ShutdownClass', 'JOC-Shutdown', 'Target', SOAClusterName+',AdminServer')
assign('ShutdownClass', 'DMSShutdown', 'Target', SOAClusterName+',AdminServer')
assign('StartupClass', 'JRF Startup Class', 'Target', SOAClusterName+',AdminServer')
assign('StartupClass', 'JPS Startup Class', 'Target', SOAClusterName+',AdminServer')
assign('StartupClass', 'ODL-Startup', 'Target', SOAClusterName+',AdminServer')
assign('StartupClass', 'Audit Loader Startup Class', 'Target', SOAClusterName+',AdminServer')
assign('StartupClass', 'AWT Application Context Startup Class', 'Target', SOAClusterName+',AdminServer')
assign('StartupClass', 'JMX Framework Startup Class', 'Target', SOAClusterName+',AdminServer')
assign('StartupClass', 'Web Services Startup Class', 'Target', SOAClusterName+',AdminServer')
assign('StartupClass', 'JOC-Startup', 'Target', SOAClusterName+',AdminServer')
assign('StartupClass', 'DMS-Startup', 'Target', SOAClusterName+',AdminServer')
assign('StartupClass', 'SOAStartupClass', 'Target', SOAClusterName)


dumpStack();

assign('JmsSystemResource', 'UMSJMSSystemResource', 'Target', SOAClusterName)
assign('JmsSystemResource', 'BPMJMSModule', 'Target', SOAClusterName)

assign('JmsSystemResource', 'SOAJMSModule', 'Target', SOAClusterName)

assign('WldfSystemResource', 'Module-FMWDFW', 'Target', SOAClusterName+',AdminServer')
assign('JdbcSystemResource', 'mds-owsm', 'Target', SOAClusterName+',AdminServer')
assign('JdbcSystemResource', 'OraSDPMDataSource', 'Target', SOAClusterName)
assign('JdbcSystemResource', 'SOADataSource', 'Target', SOAClusterName)
assign('JdbcSystemResource', 'EDNDataSource', 'Target', SOAClusterName)
assign('JdbcSystemResource', 'EDNLocalTxDataSource', 'Target', SOAClusterName)
assign('JdbcSystemResource', 'SOALocalTxDataSource', 'Target', SOAClusterName)
assign('JdbcSystemResource', 'mds-soa', 'Target', SOAClusterName+',AdminServer')

dumpStack()

#Unassign few Libraries 

#=======================================================================================
# Write the domain and close the domain template.
#=======================================================================================
print 'Creating configurations...'

#writeDomain(DOMAIN_PATH)
updateDomain()
dumpStack();

print 'Successfully Updated SOA Domain.'

closeDomain()    

#===========================Read DOMAIN ================================
print 'reading domain from '+DOMAIN_PATH

readDomain(DOMAIN_PATH)

cd('/SecurityConfiguration/'+sys.argv[1])
set('NodeManagerUsername', 'weblogic')
set('NodeManagerPasswordEncrypted', AdminPasswd)
updateDomain();
closeDomain()
createNodeManagerPropertiesFile(DOMAIN_PATH+'/config/nodemanager','weblogic',AdminPasswd)
createAdminStartupPropertiesFile(DOMAIN_PATH+'/servers/AdminServer/data/nodemanager',Admin_Java_Arguments)

exit()
