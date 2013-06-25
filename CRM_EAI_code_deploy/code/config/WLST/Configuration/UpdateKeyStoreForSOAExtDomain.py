#=======================================================================================
# Script to update Keystore 
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
	###################Create Key Stores for cluster####################

	cd('/Servers/AdminServer')
	cmo.setCustomIdentityKeyStoreFileName(wlsDomain+'/certs/appIdentityKeyStore.jks')
	set('CustomIdentityKeyStorePassPhrase', 'welcome1')
	cmo.setCustomTrustKeyStoreFileName(wlsDomain+'/certs/appTrustKeyStore.jks')
	set('CustomTrustKeyStorePassPhrase', 'welcome1')
	cmo.setKeyStores('CustomIdentityAndCustomTrust')
	cmo.setCustomIdentityKeyStoreType('JKS')
	cmo.setCustomTrustKeyStoreType('JKS')

	cd('/Servers/AdminServer/SSL/AdminServer')
	cmo.setServerPrivateKeyAlias(domainProps.get('domain2.aadm-vip1'))
	set('ServerPrivateKeyPassPhrase', 'welcome1')

	cd('/Servers/SOA5')
	cmo.setCustomIdentityKeyStoreFileName(wlsDomain+'/certs/appIdentityKeyStore.jks')
	set('CustomIdentityKeyStorePassPhrase', 'welcome1')
	cmo.setCustomTrustKeyStoreFileName(wlsDomain+'/certs/appTrustKeyStore.jks')
	set('CustomTrustKeyStorePassPhrase', 'welcome1')
	cmo.setKeyStores('CustomIdentityAndCustomTrust')
	cmo.setCustomIdentityKeyStoreType('JKS')
	cmo.setCustomTrustKeyStoreType('JKS')

	cd('/Servers/SOA5/SSL/SOA5')
	cmo.setServerPrivateKeyAlias(domainProps.get('domain2.soax-vip5'))
	set('ServerPrivateKeyPassPhrase', 'welcome1')

	cd('/Servers/SOA6')
	cmo.setCustomIdentityKeyStoreFileName(wlsDomain+'/certs/appIdentityKeyStore.jks')
	set('CustomIdentityKeyStorePassPhrase', 'welcome1')
	cmo.setCustomTrustKeyStoreFileName(wlsDomain+'/certs/appTrustKeyStore.jks')
	set('CustomTrustKeyStorePassPhrase', 'welcome1')
	cmo.setKeyStores('CustomIdentityAndCustomTrust')
	cmo.setCustomIdentityKeyStoreType('JKS')
	cmo.setCustomTrustKeyStoreType('JKS')

	cd('/Servers/SOA6/SSL/SOA6')
	cmo.setServerPrivateKeyAlias(domainProps.get('domain2.soax-vip6'))
	set('ServerPrivateKeyPassPhrase', 'welcome1')

	cd('/Servers/SOA7')
	cmo.setCustomIdentityKeyStoreFileName(wlsDomain+'/certs/appIdentityKeyStore.jks')
	set('CustomIdentityKeyStorePassPhrase', 'welcome1')
	cmo.setCustomTrustKeyStoreFileName(wlsDomain+'/certs/appTrustKeyStore.jks')
	set('CustomTrustKeyStorePassPhrase', 'welcome1')
	cmo.setKeyStores('CustomIdentityAndCustomTrust')
	cmo.setCustomIdentityKeyStoreType('JKS')
	cmo.setCustomTrustKeyStoreType('JKS')

	cd('/Servers/SOA7/SSL/SOA7')
	cmo.setServerPrivateKeyAlias(domainProps.get('domain2.soax-vip7'))
	set('ServerPrivateKeyPassPhrase', 'welcome1')

save()
activate()