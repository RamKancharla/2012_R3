#=======================================================================================
# Script to update JMSStore 
#Author: Lokesh T.C (lokesh.gowda@thomsonreuters.com)
#=======================================================================================
import sys


print "@@@ Starting the script ..."

from java.util import *
from javax.management import *   
from java.io import FileInputStream 

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
if sys.argv[1] == 'Cluster':
	###################Create JDBC Stores for cluster####################

	cd('/')
	cmo.createJDBCStore('UMSJMSJDBCStore_auto_1')
	cd('/JDBCStores/UMSJMSJDBCStore_auto_1')
	cmo.setDataSource(getMBean('/SystemResources/EAIJMSDataSource'))
	cmo.setPrefixName('UMSJMS1')
	set('Targets',jarray.array([ObjectName('com.bea:Name=SOA5,Type=Server')], ObjectName))

	cd('/')
	cmo.createJDBCStore('UMSJMSJDBCStore_auto_2')
	cd('/JDBCStores/UMSJMSJDBCStore_auto_2')
	cmo.setDataSource(getMBean('/SystemResources/EAIJMSDataSource'))
	cmo.setPrefixName('UMSJMS2')
	set('Targets',jarray.array([ObjectName('com.bea:Name=SOA6,Type=Server')], ObjectName))

	cd('/')
	cmo.createJDBCStore('UMSJMSJDBCStore_auto_3')
	cd('/JDBCStores/UMSJMSJDBCStore_auto_3')
	cmo.setDataSource(getMBean('/SystemResources/EAIJMSDataSource'))
	cmo.setPrefixName('UMSJMS3')
	set('Targets',jarray.array([ObjectName('com.bea:Name=SOA7,Type=Server')], ObjectName))

	cd('/')
	cmo.createJDBCStore('BPMJMSJDBCStore_auto_1')
	cd('/JDBCStores/BPMJMSJDBCStore_auto_1')
	cmo.setDataSource(getMBean('/SystemResources/EAIJMSDataSource'))
	cmo.setPrefixName('BPMJMS1')
	set('Targets',jarray.array([ObjectName('com.bea:Name=SOA5,Type=Server')], ObjectName))

	cd('/')
	cmo.createJDBCStore('BPMJMSJDBCStore_auto_2')
	cd('/JDBCStores/BPMJMSJDBCStore_auto_2')
	cmo.setDataSource(getMBean('/SystemResources/EAIJMSDataSource'))
	cmo.setPrefixName('BPMJMS2')
	set('Targets',jarray.array([ObjectName('com.bea:Name=SOA6,Type=Server')], ObjectName))

	cd('/')
	cmo.createJDBCStore('BPMJMSJDBCStore_auto_3')
	cd('/JDBCStores/BPMJMSJDBCStore_auto_3')
	cmo.setDataSource(getMBean('/SystemResources/EAIJMSDataSource'))
	cmo.setPrefixName('BPMJMS3')
	set('Targets',jarray.array([ObjectName('com.bea:Name=SOA7,Type=Server')], ObjectName))

	cd('/')
	cmo.createJDBCStore('SOAJMSJDBCStore_auto_1')
	cd('/JDBCStores/SOAJMSJDBCStore_auto_1')
	cmo.setDataSource(getMBean('/SystemResources/EAIJMSDataSource'))
	cmo.setPrefixName('SOAJMS1')
	set('Targets',jarray.array([ObjectName('com.bea:Name=SOA5,Type=Server')], ObjectName))

	cd('/')
	cmo.createJDBCStore('SOAJMSJDBCStore_auto_2')
	cd('/JDBCStores/SOAJMSJDBCStore_auto_2')
	cmo.setDataSource(getMBean('/SystemResources/EAIJMSDataSource'))
	cmo.setPrefixName('SOAJMS2')
	set('Targets',jarray.array([ObjectName('com.bea:Name=SOA6,Type=Server')], ObjectName))

	cd('/')
	cmo.createJDBCStore('SOAJMSJDBCStore_auto_3')
	cd('/JDBCStores/SOAJMSJDBCStore_auto_3')
	cmo.setDataSource(getMBean('/SystemResources/EAIJMSDataSource'))
	cmo.setPrefixName('SOAJMS3')
	set('Targets',jarray.array([ObjectName('com.bea:Name=SOA7,Type=Server')], ObjectName))

	################  end of JDBC Stores ####################

	############Set Persistent Stores for all the JMS Servers for cluster

	cd('/Deployments/UMSJMSServer_auto_1')
	cmo.setPersistentStore(getMBean('/JDBCStores/UMSJMSJDBCStore_auto_1'))



	cd('/Deployments/UMSJMSServer_auto_2')
	cmo.setPersistentStore(getMBean('/JDBCStores/UMSJMSJDBCStore_auto_2'))



	cd('/Deployments/UMSJMSServer_auto_3')
	cmo.setPersistentStore(getMBean('/JDBCStores/UMSJMSJDBCStore_auto_3'))


	cd('/Deployments/BPMJMSServer_auto_1')
	cmo.setPersistentStore(getMBean('/JDBCStores/BPMJMSJDBCStore_auto_1'))


	cd('/Deployments/BPMJMSServer_auto_2')
	cmo.setPersistentStore(getMBean('/JDBCStores/BPMJMSJDBCStore_auto_2'))



	cd('/Deployments/BPMJMSServer_auto_3')
	cmo.setPersistentStore(getMBean('/JDBCStores/BPMJMSJDBCStore_auto_3'))


	cd('/Deployments/SOAJMSServer_auto_1')
	cmo.setPersistentStore(getMBean('/JDBCStores/SOAJMSJDBCStore_auto_1'))


	cd('/Deployments/SOAJMSServer_auto_2')
	cmo.setPersistentStore(getMBean('/JDBCStores/SOAJMSJDBCStore_auto_2'))


	cd('/Deployments/SOAJMSServer_auto_3')
	cmo.setPersistentStore(getMBean('/JDBCStores/SOAJMSJDBCStore_auto_3'))



	#################DESTROY ALL THE FILE STORES

	cd('/')

	cmo.destroyFileStore(getMBean('/FileStores/UMSJMSFileStore_auto_1'))
	cmo.destroyFileStore(getMBean('/FileStores/UMSJMSFileStore_auto_2'))
	cmo.destroyFileStore(getMBean('/FileStores/UMSJMSFileStore_auto_3'))

	cmo.destroyFileStore(getMBean('/FileStores/BPMJMSFileStore_auto_1'))
	cmo.destroyFileStore(getMBean('/FileStores/BPMJMSFileStore_auto_2'))
	cmo.destroyFileStore(getMBean('/FileStores/BPMJMSFileStore_auto_3'))

	cmo.destroyFileStore(getMBean('/FileStores/SOAJMSFileStore_auto_1'))
	cmo.destroyFileStore(getMBean('/FileStores/SOAJMSFileStore_auto_2'))
	cmo.destroyFileStore(getMBean('/FileStores/SOAJMSFileStore_auto_3'))

save()
activate()