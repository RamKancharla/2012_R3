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

#JROCKIT
#Java_Arguments=' -Xms512m -Xmx1024m -XX:PermSize=128m -XX:MaxPermSize=512m -Xnohup '
print "JAVA_HOME="+javaHome

# Administration server configuration
				                                                                              
AdminIP= configProps.getProperty("domain1.cadm-vip1")
AdminPort= configProps.getProperty("domain1.AdminPort")
AdminPasswd= configProps.getProperty("domain1.AdminPasswd")

ServerMode = configProps.getProperty("SERVER_MODE")

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
print 'Creating domain at '+wlsDomain + '/' + sys.argv[1]+'/aserver' + '/' +  sys.argv[1]

DOMAIN_PATH= wlsDomain + '/' + sys.argv[1]+'/aserver' + '/' +  sys.argv[1]
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
setOption( "AppDir", DOMAIN_PATH+'/applications' )
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
#===========================Read DOMAIN ================================
print 'reading domain from '+DOMAIN_PATH


readDomain(DOMAIN_PATH)

setOption( "AppDir", DOMAIN_PATH+'/applications' )

print 'Adding JAXRPC and JAXWS Webservice Support Template'
#addTemplate(wlsServer + "/common/templates/applications/wls_webservice.jar")
addTemplate(wlsServer + "/common/templates/applications/wls_webservice_jaxws.jar")

dumpStack();

#==================================================================================

cd('/')


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


cd('/')

print 'Deleting default servers & machines'

#delete default servers from the template
delete('LocalMachine', 'Machine')
delete('soa_server1', 'Server')


dumpStack();

print 'Adding OSB Template'
addTemplate(wlsServer + "/common/templates/applications/wls_webservice.jar")
addTemplate(osbHome+'/common/templates/applications/wlsb.jar')

dumpStack();

cd('/')

print 'Deleting default servers'

#delete default servers from the template
delete('osb_server1', 'Server')

#cd('/JDBCSystemResource/wlsbjmsrpDataSource/JdbcResource/wlsbjmsrpDataSource/JDBCDriverParams/NO_NAME_0')  

#set('URL',DBURL)  

#set('PasswordEncrypted',DBPASSWORD)  
#cd('Properties/NO_NAME_0/Property/user')  
#set('Value',DBUSER_PREFIX+'_SOAINFRA')

##############UN ASSIGN All#####################

#unassign('StartupClass','*','Target','AdminServer')
#unassign('ShutdownClass','*','Target','AdminServer')
#unassign('Library','*','Target','AdminServer')
#unassign('AppDeployment', '*', 'Target', 'AdminServer')
#unassign('JdbcSystemResource', '*', 'Target', 'AdminServer')
#unassign('WldfSystemResource', '*', 'Target', 'AdminServer')
#unassign('JmsSystemResource', '*', 'Target', 'AdminServer')
#unassign('JmsSystemResource.SubDeployment', '*', 'Target', 'AdminServer')
#unassign('SelfTuning.WorkManager', '*', 'Target', 'AdminServer')

unassign('AppDeployment', 'FMW Welcome Page Application#11.1.0.0.0', 'Target', 'AdminServer')

########################################Assign All##############################################

assign('AppDeployment', 'wsil-wls', 'Target', 'AdminServer')
assign('AppDeployment', 'DMS Application#11.1.1.1.0', 'Target', 'AdminServer')
assign('AppDeployment', 'FileAdapter', 'Target', 'AdminServer')
assign('AppDeployment', 'DbAdapter', 'Target', 'AdminServer')
assign('AppDeployment', 'JmsAdapter', 'Target', 'AdminServer')
assign('AppDeployment', 'AqAdapter', 'Target', 'AdminServer')
assign('AppDeployment', 'FtpAdapter', 'Target', 'AdminServer')
assign('AppDeployment', 'SocketAdapter', 'Target', 'AdminServer')
assign('AppDeployment', 'MQSeriesAdapter', 'Target', 'AdminServer')
assign('AppDeployment', 'OracleAppsAdapter', 'Target', 'AdminServer')
assign('AppDeployment', 'OracleBamAdapter', 'Target', 'AdminServer')
assign('AppDeployment', 'wsm-pm', 'Target', 'AdminServer')
assign('AppDeployment', 'usermessagingserver', 'Target', 'AdminServer')
assign('AppDeployment', 'usermessagingdriver-email', 'Target', 'AdminServer')


assign('AppDeployment', 'soa-infra', 'Target', 'AdminServer')
assign('AppDeployment', 'worklistapp', 'Target', 'AdminServer')
assign('AppDeployment', 'b2bui', 'Target', 'AdminServer')
assign('AppDeployment', 'DefaultToDoTaskFlow', 'Target', 'AdminServer')
assign('AppDeployment', 'composer', 'Target', 'AdminServer')
assign('AppDeployment', 'ALSB Framework Starter Application', 'Target', 'AdminServer')
assign('AppDeployment', 'ALSB Coherence Cache Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'XBus Kernel', 'Target', 'AdminServer')


assign('AppDeployment.SubDeployment', '/httpTransport', 'Target', 'AdminServer')


assign('AppDeployment', 'ALSB UDDI Manager', 'Target', 'AdminServer')

assign('AppDeployment', 'ALSB Subscription Listener', 'Target', 'AdminServer')
assign('AppDeployment', 'JMS Reporting Provider', 'Target', 'AdminServer')
#assign('AppDeployment', 'Message Reporting Purger', 'Target', 'AdminServer') #osbserver
assign('AppDeployment', 'Ftp Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'SFTP Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'Email Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'File Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'MQ Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'EJB Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'Tuxedo Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'ALDSP Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'SB Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'WS Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'WS Transport Async Applcation', 'Target', 'AdminServer')
assign('AppDeployment', 'FLOW Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'BPEL 10g Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'JCA Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'JEJB Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'SOA-DIRECT Transport Provider', 'Target', 'AdminServer')
assign('AppDeployment', 'ALSB Routing', 'Target', 'AdminServer')
assign('AppDeployment', 'ALSB Transform', 'Target', 'AdminServer')
assign('AppDeployment', 'ALSB Publish', 'Target', 'AdminServer')
assign('AppDeployment', 'ALSB Logging', 'Target', 'AdminServer')
assign('AppDeployment', 'ALSB Resource', 'Target', 'AdminServer')
assign('AppDeployment', 'ALSB WSIL', 'Target', 'AdminServer')
assign('AppDeployment', 'ServiceBus_Console', 'Target', 'AdminServer')


assign('AppDeployment', 'ALSB Test Framework', 'Target', 'AdminServer')
assign('Library', 'oracle.bi.jbips#11.1.1@0.1', 'Target', 'AdminServer')
assign('Library', 'oracle.bi.composer#11.1.1@0.1', 'Target', 'AdminServer')
assign('Library', 'oracle.bi.adf.model.slib#1.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'oracle.bi.adf.view.slib#1.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'oracle.bi.adf.webcenter.slib#1.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'oracle.wsm.seedpolicies#11.1.1@11.1.1', 'Target', 'AdminServer') #Revisit
assign('Library', 'oracle.jsp.next#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.dconfig-infra#11@11.1.1.1.0', 'Target', 'AdminServer')
assign('Library', 'orai18n-adf#11@11.1.1.1.0', 'Target', 'AdminServer')
assign('Library', 'oracle.adf.dconfigbeans#1.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'oracle.pwdgen#11.1.1@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'oracle.jrf.system.filter', 'Target', 'AdminServer')
assign('Library', 'adf.oracle.domain#1.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'adf.oracle.businesseditor#1.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'oracle.adf.management#1.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'adf.oracle.domain.webapp#1.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'jsf#1.2@1.2.9.0', 'Target', 'AdminServer')
assign('Library', 'UIX#11@11.1.1.1.0', 'Target', 'AdminServer')
assign('Library', 'ohw-rcf#5@5.0', 'Target', 'AdminServer')
assign('Library', 'ohw-uix#5@5.0', 'Target', 'AdminServer')
assign('Library', 'oracle.adf.desktopintegration.model#1.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'oracle.adf.desktopintegration#1.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'oracle.rules#11.1.1@11.1.1', 'Target', 'AdminServer'+',AdminServer')
assign('Library', 'oracle.sdp.client#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.soa.workflow.wc#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.soa.worklist.webapp#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.soa.rules_editor_dc.webapp#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.soa.rules_dict_dc.webapp#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.sdp.messaging#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.soa.worklist#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.soa.bpel#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.soa.workflow#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.soa.mediator#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.soa.composer.webapp#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.soa.ext#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'oracle.jrf.coherence#3@11.1.1', 'Target', 'AdminServer')
assign('Library', 'coherence-l10n#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'ftptransport-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'sftptransport-l10n#3.0@3.0', 'Target', 'AdminServer')
assign('Library', 'emailtransport-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'filetransport-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'mqtransport-l10n#3.0@3.0', 'Target', 'AdminServer')
assign('Library', 'mqconnection-l10n#3.0@3.0', 'Target', 'AdminServer')
assign('Library', 'ejbtransport-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'tuxedotransport-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'aldsp_transport-l10n#3.0@3.0', 'Target', 'AdminServer')
assign('Library', 'wstransport-l10n#2.6@2.6', 'Target', 'AdminServer')
assign('Library', 'flow-transport-l10n#3.0@3.0', 'Target', 'AdminServer')
assign('Library', 'bpel10gtransport-l10n#3.1@3.1', 'Target', 'AdminServer')
assign('Library', 'jcatransport-l10n#3.1@3.1', 'Target', 'AdminServer')
assign('Library', 'wsif#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'JCAFrameworkImpl#11.1.1@11.1.1', 'Target', 'AdminServer')
assign('Library', 'jejbtransport-l10n#3.2@3.2', 'Target', 'AdminServer')
assign('Library', 'jejbtransport-jar#3.2@3.2', 'Target', 'AdminServer')
assign('Library', 'soatransport-l10n#11.1.1.2.0@11.1.1.2.0', 'Target', 'AdminServer')
assign('Library', 'stage-utils#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'sbconsole-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'xbusrouting-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'xbustransform-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'xbuspublish-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'xbuslogging-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'testfwk-l10n#2.5@2.5', 'Target', 'AdminServer')
assign('Library', 'com.bea.wlp.lwpf.console.app#10.3.0@10.3.0', 'Target', 'AdminServer')
assign('Library', 'com.bea.wlp.lwpf.console.web#10.3.0@10.3.0', 'Target', 'AdminServer')
assign('Library', 'wlp-lookandfeel-web-lib#10.3.0@10.3.0', 'Target', 'AdminServer')
assign('Library', 'wlp-light-web-lib#10.3.0@10.3.0', 'Target', 'AdminServer')
assign('Library', 'wlp-framework-common-web-lib#10.3.0@10.3.0', 'Target', 'AdminServer')
assign('Library', 'wlp-framework-struts-1.2-web-lib#10.3.0@10.3.0', 'Target', 'AdminServer')
assign('Library', 'struts-1.2#1.2@1.2.9', 'Target', 'AdminServer')
assign('Library', 'beehive-netui-1.0.1-10.0#1.0@1.0.2.2', 'Target', 'AdminServer')
assign('Library', 'beehive-netui-resources-1.0.1-10.0#1.0@1.0.2.2', 'Target', 'AdminServer')
assign('Library', 'beehive-controls-1.0.1-10.0-war#1.0@1.0.2.2', 'Target', 'AdminServer')
assign('Library', 'weblogic-controls-10.0-war#10.0@10.2', 'Target', 'AdminServer')
assign('Library', 'wls-commonslogging-bridge-war#1.0@1.1', 'Target', 'AdminServer')
assign('Library', 'jstl#1.2@1.2.0.1', 'Target', 'AdminServer')

assign('Library', 'oracle.applcore.model#0.1@11.1.1.0.0', 'Target', 'AdminServer')
assign('Library', 'oracle.applcore.view#0.1@11.1.1.0.0', 'Target', 'AdminServer')


dumpStack();

#assign('SelfTuning.WorkManager', 'weblogic.wsee.mdb.DispatchPolicy', 'Target', 'AdminServer')
dumpStack();

#assign('SelfTuning.WorkManager', 'weblogic.wsee.jaxws.mdb.DispatchPolicy', 'Target', 'AdminServer')
#assign('SelfTuning.WorkManager', 'wm/SOAWorkManager', 'Target', 'AdminServer')
dumpStack();



assign('ShutdownClass', 'JOC-Shutdown', 'Target', 'AdminServer')
assign('ShutdownClass', 'DMSShutdown', 'Target', 'AdminServer')
assign('StartupClass', 'JRF Startup Class', 'Target', 'AdminServer')
assign('StartupClass', 'JPS Startup Class', 'Target', 'AdminServer')
assign('StartupClass', 'ODL-Startup', 'Target', 'AdminServer')
assign('StartupClass', 'Audit Loader Startup Class', 'Target', 'AdminServer')
assign('StartupClass', 'AWT Application Context Startup Class', 'Target', 'AdminServer')
assign('StartupClass', 'JMX Framework Startup Class', 'Target', 'AdminServer')
assign('StartupClass', 'Web Services Startup Class', 'Target', 'AdminServer') #Revisit
assign('StartupClass', 'JOC-Startup', 'Target', 'AdminServer')
assign('StartupClass', 'DMS-Startup', 'Target', 'AdminServer')
assign('StartupClass', 'SOAStartupClass', 'Target', 'AdminServer')
assign('StartupClass', 'OSB JCA Transport Post-Activation Startup Class', 'Target', 'AdminServer')


assign('JmsSystemResource', 'WseeJaxwsJmsModule', 'Target', 'AdminServer')
assign('JmsSystemResource', 'WseeJmsModule', 'Target', 'AdminServer')
dumpStack();


assign('JmsSystemResource', 'UMSJMSSystemResource', 'Target', 'AdminServer')
assign('JmsSystemResource', 'BPMJMSModule', 'Target', 'AdminServer')

assign('JmsSystemResource', 'SOAJMSModule', 'Target', 'AdminServer')
assign('JmsSystemResource', 'jmsResources', 'Target', 'AdminServer')

assign('WldfSystemResource', 'Module-FMWDFW', 'Target', 'AdminServer')
assign('JdbcSystemResource', 'mds-owsm', 'Target', 'AdminServer'+',AdminServer')
assign('JdbcSystemResource', 'OraSDPMDataSource', 'Target', 'AdminServer')
assign('JdbcSystemResource', 'SOADataSource', 'Target', 'AdminServer')
assign('JdbcSystemResource', 'EDNDataSource', 'Target', 'AdminServer')
assign('JdbcSystemResource', 'EDNLocalTxDataSource', 'Target', 'AdminServer')
assign('JdbcSystemResource', 'SOALocalTxDataSource', 'Target', 'AdminServer')
assign('JdbcSystemResource', 'mds-soa', 'Target', 'AdminServer'+',AdminServer')
unassign('JdbcSystemResource', 'wlsbjmsrpDataSource', 'Target', 'AdminServer')


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

setOption( "AppDir", DOMAIN_PATH+'/applications' )

assign('AppDeployment', 'ALSB Cluster Singleton Marker Application', 'Target', 'AdminServer') #osbserver
assign('AppDeployment', 'ALSB Domain Singleton Marker Application', 'Target', 'AdminServer') #osbserver

cd('/SecurityConfiguration/'+sys.argv[1])
set('NodeManagerUsername', 'weblogic')
set('NodeManagerPasswordEncrypted', AdminPasswd)
updateDomain()
closeDomain()

print 'Successfully created domain.'
createNodeManagerPropertiesFile(DOMAIN_PATH+'/config/nodemanager','weblogic',AdminPasswd)
createAdminStartupPropertiesFile(DOMAIN_PATH+'/servers/AdminServer/data/nodemanager',Admin_Java_Arguments)   
  
exit()

