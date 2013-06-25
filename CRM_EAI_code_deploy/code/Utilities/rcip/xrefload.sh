#!/usr/bin/ksh

RCIP_HOME=<<rcip base folder>>;export RCIP_HOME
DB_URL=jdbc:oracle:thin:@<<host name of the db>>:<<tns port>>:<<db name>>;export DB_URL
DB_USER=soa_soainfra;export DB_USER
DB_PASSWORD=<<soa_soainfra password>>;export DB_PASSWORD

mv $RCIP_HOME/sql/current/AssetCache*.* $RCIP_HOME/sql/archive/

$ORACLE_HOME/bin/sqlplus SOA_EAIOWNER@<<db name>>\/<<soa_eaiowner password>> @$RCIP_HOME/sql/asset_cache_import.sql $RCIP_HOME

mv $RCIP_HOME/sql/current/Asset*.lst $RCIP_HOME/sql/archive/
$ORACLE_HOME/bin/sqlplus SOA_EAIOWNER@<<db name>>\/<<soa_eaiowner password>> @$RCIP_HOME/sql/xref_import.sql $RCIP_HOME


cp $RCIP_HOME/sql/current/Asset*.lst $RCIP_HOME/sql/current/orderTab

#cd $ORACLE_HOME/integration/esb/bin/
#bash xrefimport.sh -file orderTab -mode ignore

java -jar -cp :.: -DDB_URL=$DB_URL -DDB_USER=$DB_USER -DDB_PASSWORD=$DB_PASSWORD $RCIP_HOME/dist/xrefimportutil.jar $RCIP_HOME/sql/current/orderTab
