# *****************************************************************************************
# find_and_replace_in_files.sh
# This script does a recursive, case sensitive directory search and replace of files
# To make a case insensitive search replace, use the -i switch in the grep call
# AUTHOR: lokesh.gowda@thomsonreuters.com
# *****************************************************************************************

!/bin/bash
# **************** Change Variables Here ************
echo $startdirectory
searchterm='PRODUCTION_MODE=""'
replaceterm='PRODUCTION_MODE="true"'
searchterm1='-Djavax.net.ssl.trustStore=\${WL_HOME}/server/lib/DemoTrust.jks'

searchtermfinal="`echo $searchterm1 | sed 's:\.:\\\.:g'`"
searchtermfinal="`echo $searchtermfinal | sed 's:\/:\\\/:g'`"

echo $searchterm1

echo $searchtermfinal

replaceterm1='-Djavax.net.ssl.trustStore='
replaceterm2='/certs/appTrustKeyStore.jks -Djavax.net.ssl.trustStorePassword=welcome1'
replaceterm3=$replaceterm1$WLSDOMAIN$replaceterm2

echo $replaceterm3

replacetermfinal="`echo $replaceterm3 | sed 's:\.:\\\.:g'`"

echo $replacetermfinal
 
replacetermfinal="`echo $replacetermfinal | sed 's:\/:\\\/:g'`"

echo $replacetermfinal

# **********************************************************

echo "******************************************"
echo "* Search and Replace in Files Version .1 *"
echo "******************************************"

find $MWHOME/admin/SOACoreDomain/mserver/SOACoreDomain/bin/setDomainEnv.sh -type f | xargs perl -pi -e s/$searchterm/$replaceterm/g

if [ -d "$MWHOME/admin/SOAExtDomain/mserver/SOAExtDomain/bin" ]; then
	find $MWHOME/admin/SOAExtDomain/mserver/SOAExtDomain/bin/setDomainEnv.sh -type f | xargs perl -pi -e s/$searchterm/$replaceterm/g
fi

if [ -d "$MWHOME/admin/SOACoreDomain/mserver/SOACoreDomain/bin" ]; then
echo "Replacinig values for SOACoreDomain"
	replacetermfinal1=`echo  "find $MWHOME/admin/SOACoreDomain/mserver/SOACoreDomain/bin/setDomainEnv.sh -type f | xargs perl -pi -e 's/$searchtermfinal/$replacetermfinal/g'"`
	echo $replacetermfinal1

	eval $replacetermfinal1
echo "Replacinig values for SOAExtDomain"
	replacetermfinal1=`echo  "find $MWHOME/admin/SOAExtDomain/mserver/SOAExtDomain/bin/setDomainEnv.sh -type f | xargs perl -pi -e 's/$searchtermfinal/$replacetermfinal/g'"`
	echo $replacetermfinal1

	eval $replacetermfinal1
fi

if [ -d "$WLSDOMAIN/SOAExtDomain/aserver/SOAExtDomain/bin" ]; then
echo "Replacinig values for SOAExtDomain AdminServer"
	replacetermfinal1=`echo  "find $WLSDOMAIN/SOAExtDomain/aserver/SOAExtDomain/bin/setDomainEnv.sh -type f | xargs perl -pi -e 's/$searchtermfinal/$replacetermfinal/g'"`
	echo $replacetermfinal1

	eval $replacetermfinal1
fi

if [ -d "$WLSDOMAIN/SOACoreDomain/aserver/SOACoreDomain/bin" ]; then
echo "Replacinig values for SOACoreDomain Adminserver"
	replacetermfinal1=`echo  "find $WLSDOMAIN/SOACoreDomain/aserver/SOACoreDomain/bin/setDomainEnv.sh -type f | xargs perl -pi -e 's/$searchtermfinal/$replacetermfinal/g'"`
	echo $replacetermfinal1

	eval $replacetermfinal1
fi

echo " *** All Done! *** "
