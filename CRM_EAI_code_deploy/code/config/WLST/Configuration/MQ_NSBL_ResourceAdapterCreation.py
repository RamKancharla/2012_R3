#############################################################################
#
# @author Albin Issac.
#
#############################################################################
from java.io import FileInputStream

TargetServerName='AdminServer'
 
#Connect
#The directory of the SOA binaries
#/app/oracle/products/11g/fmw/Oracle_SOA
soaHome=os.environ["SOAHOME"]
print "SOAHOME="+soaHome 

appPathMQ=soaHome+'/soa/connectors/MQSeriesAdapter.rar'
appNameMQ='MQSeriesAdapter'
moduleOverrideNameMQ=appNameMQ+'.rar'

moduleDescriptorName='META-INF/weblogic-ra.xml'

mqJNDIName='eis/MQ/MQSeriesAdapterRemote'

def createMQConnectionFactory(propsFiile,domainName):
        propInputStream = FileInputStream(propsFiile)
        configProps1 = Properties()
        configProps1.load(propInputStream)  
        planPathMQ=configProps1.get('global.resource.deployment.plan.path')+'/'+domainName+'_PlanMQ.xml'

    
        mqQueueManager=configProps1.get('domain1.resource.mqQueueManager')

        mqHostName=configProps1.get('domain1.resource.mqHost')

        MqPort=configProps1.get('domain1.resource.mqport')

        mqChannelName=configProps1.get('domain1.resource.mqChannel')
        
        edit()
        startEdit()
        myPlanMQ=loadApplication(appPathMQ, planPathMQ)
        makeDeploymentPlanVariable(myPlanMQ, 'ConnectionInstance_eis_MQ_MQSeriesAdapterRemoteCRMtoEAI_JNDIName1', mqJNDIName, '/weblogic-connector/outbound-resource-adapter/connection-definition-group/[connection-factory-interface="javax.resource.cci.ConnectionFactory"]/connection-instance/[jndi-name="'+mqJNDIName+'"]/jndi-name',moduleOverrideNameMQ)        
          
        makeDeploymentPlanVariable(myPlanMQ, 'ConfigProperty_host_Value_mqQueueManagerPRD1', mqQueueManager,   '/weblogic-connector/outbound-resource-adapter/connection-definition-group/[connection-factory-interface="javax.resource.cci.ConnectionFactory"]/connection-instance/[jndi-name="'+mqJNDIName+'"]/connection-properties/properties/property/[name="queueManagerName"]/value',moduleOverrideNameMQ)

        makeDeploymentPlanVariable(myPlanMQ, 'ConfigProperty_password_Value_mqHostNamePRD1', mqHostName, '/weblogic-connector/outbound-resource-adapter/connection-definition-group/[connection-factory-interface="javax.resource.cci.ConnectionFactory"]/connection-instance/[jndi-name="'+mqJNDIName+'"]/connection-properties/properties/property/[name="hostName"]/value',moduleOverrideNameMQ)

        makeDeploymentPlanVariable(myPlanMQ, 'ConfigProperty_password_Value_MqPortPRD1', MqPort, '/weblogic-connector/outbound-resource-adapter/connection-definition-group/[connection-factory-interface="javax.resource.cci.ConnectionFactory"]/connection-instance/[jndi-name="'+mqJNDIName+'"]/connection-properties/properties/property/[name="portNumber"]/value',moduleOverrideNameMQ)

        makeDeploymentPlanVariable(myPlanMQ, 'ConfigProperty_password_Value_mqChannelNamePRD1', mqChannelName, '/weblogic-connector/outbound-resource-adapter/connection-definition-group/[connection-factory-interface="javax.resource.cci.ConnectionFactory"]/connection-instance/[jndi-name="'+mqJNDIName+'"]/connection-properties/properties/property/[name="channelName"]/value',moduleOverrideNameMQ)        
        
        myPlanMQ.save();
        save();
        cd('/AppDeployments/MQSeriesAdapter/Targets');
        updateApplication(appNameMQ, planPathMQ);
        #redeploy(appNameFTP, planPathMQ,targets=cmo.getTargets());
        activate(block='true');
 
def makeDeploymentPlanVariable(wlstPlan, name, value, xpath,overrideName, origin='planbased'):
    wlstPlan.destroyVariable(name)
    wlstPlan.destroyVariableAssignment(name, overrideName, moduleDescriptorName)
    variableAssignment = wlstPlan.createVariableAssignment(name, overrideName, moduleDescriptorName)
    variableAssignment.setXpath(xpath)
    variableAssignment.setOrigin(origin)
    wlstPlan.createVariable(name, value)
    print 'moduleDescriptorName=',moduleDescriptorName

 
def main():
    #DOMAIN1
    propInputStream1 = FileInputStream("domain.properties")
    domainProps = util.Properties()
    domainProps.load(propInputStream1)
    
    adminURL='t3://'+domainProps.get('domain1.AdminIP')+':'+domainProps.get('domain1.AdminPort')
    adminUserName='weblogic'
    adminPassword=domainProps.get("domain1.AdminPasswd")
    
    connect(adminUserName, adminPassword, adminURL)

    createMQConnectionFactory("MQ_NSBL_ResourceAdapter_SOACoreDomain.properties",'SOACoreDomain')
    disconnect()
main()
