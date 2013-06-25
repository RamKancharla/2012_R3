package com.tr.eai.console.reinitiate;


import com.database.DBDatasource;
import javax.naming.Context;
import java.io.*;
import com.tr.eai.console.bean.CompositeInstanceBean;
import com.tr.eai.console.logger.ConsoleLogger;
import com.tr.eai.console.search.SearchInstance;
import com.tr.eai.console.sif.ServiceInvoker;
import com.tr.eai.console.utils.PropertyReader;
import com.tr.eai.console.utils.XMLUtil;
import com.tr.eai.console.utils.XPathUtils;
import com.tr.eai.console.vo.InputObject;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import oracle.fabric.common.NormalizedMessageCore;

import oracle.soa.management.facade.ComponentInstance;
import oracle.soa.management.facade.Composite;
import oracle.soa.management.facade.CompositeInstance;
import oracle.soa.management.facade.Locator;
import oracle.soa.management.facade.LocatorFactory;
import oracle.soa.management.facade.Service;
import oracle.soa.management.util.ComponentInstanceFilter;
import oracle.soa.management.util.CompositeInstanceFilter;

import org.w3c.dom.Document;
import org.w3c.dom.Node;


public class ReInitiateCompositeInstance {
	//static Properties props=new java.util.Properties();
	static Locator locator = null;
   public ReInitiateCompositeInstance()
		{

		}

                static{

                Hashtable jndiProps = new Hashtable();
                InputStream inputStream = null;
			try {
					inputStream = ReInitiateCompositeInstance.class.getResourceAsStream("/EAIMonitorUI.properties");
				 	Properties props=new java.util.Properties();
					props.load(inputStream);
					//System.out.println("URL............."+props.get("t3.lb.url").toString());
			        jndiProps.put(Context.PROVIDER_URL,props.get("t3.lb.url").toString());
					jndiProps.put(Context.INITIAL_CONTEXT_FACTORY,"weblogic.jndi.WLInitialContextFactory");
					jndiProps.put(Context.SECURITY_PRINCIPAL,props.get("soa.user").toString());
					jndiProps.put(Context.SECURITY_CREDENTIALS,props.get("soa.password").toString());
					//jndiProps.put("dedicated.connection","true");
	                locator = LocatorFactory.createLocator(jndiProps);
			    } catch (Exception e) {
			        e.printStackTrace();
			    }
			    finally{

                                         if (inputStream != null)
                                         try{
                                             inputStream.close();
                                         }
                                         catch(Exception e)
                                         {
                                         }

       }
   }
    public  void reinitiateFaultedInstance(ArrayList<CompositeInstanceBean> instanceBeanList,String[] values) {
         try { 
           NormalizedMessageCore res = null;
           String title=null;              
          SearchInstance searchInstance = new SearchInstance(); 
                          
            for (int i = 0; i < values.length; i++) { 
                if (!"".equals(values[i])) {
				   	CompositeInstanceBean instanceBean = instanceBeanList.get(Integer.parseInt(values[i]));
                    String compositeToken = getCompositeDNToken(instanceBean.getCompositeDN());
                    Composite composite =
                        locator.lookupComposite(compositeToken);
                    List<Service> services = composite.getServices();
                    CompositeInstanceFilter filter =
                        new CompositeInstanceFilter();
                    filter.setECID(instanceBean.getEcid());
                    filter.setId(instanceBean.getId());
                    List<CompositeInstance> compositeInstance =
                        composite.getInstances(filter);
                    ComponentInstanceFilter instanceFilter =
                        new ComponentInstanceFilter();
                     List<ComponentInstance> componentInstance =
                        compositeInstance.get(0).getChildComponentInstances(instanceFilter);
                    if (compositeInstance.size() > 0) {       
                        Document docAudit =
                            XMLUtil.convertToDOM(componentInstance.get(0).getAuditTrail().toString());
                        String payloadAudit =
                            XPathUtils.executeXPath(docAudit, "//details").toString();
                        Document docPayload =
                            XMLUtil.convertToDOM(payloadAudit);
                        Node payloadNode =
                            XPathUtils.executeXPath(docPayload, "//part//*",
                                                    "NODE");
                        String inputPayload =
                            XMLUtil.nodeToString(payloadNode);

                        InputObject inputParamObj = new InputObject();                        
                        inputParamObj.setSServiceEndPoint(services.get(0).getWSDLURL().replace("?WSDL",
                                                                                               ""));
                        inputParamObj.setSOprName(instanceBean.getSourceActionName());
                        inputParamObj.setInputPayload(inputPayload);
                        // Getting service invoker class to invoke service.
                        ServiceInvoker serviceInvoker =
                            ServiceInvoker.getInstance();
                        serviceInvoker.invokeService(inputParamObj, null);
                        //compositeInstance.get(0).set
                        String updatedInstanceTitle=null;                      
                      title=instanceBean.getTitle();
                        if(instanceBean.getTitle().length() > 36){
                                updatedInstanceTitle = instanceBean.getTitle().substring(0,36);
                                updatedInstanceTitle = updatedInstanceTitle+" - Reinitiated";
                              }
                              else{
                                updatedInstanceTitle = instanceBean.getTitle()+" - Reinitiated";
                                
                              }
                       updateTitle(updatedInstanceTitle,instanceBean.getId());
                        
                                              
                        
                    }
                }
            }
                    
        } catch (Exception e) {
           e.printStackTrace();	  
                 
        }
    
    }
    
    
    public void updateTitle(String updatedInstanceTitle,String id) throws Exception{
         Connection conn = null;
          PreparedStatement prepare = null;
         
        try
        {          
          String updateInstanceTitleQuery ="update COMPOSITE_INSTANCE set TITLE=? where ID=?";
          conn = DBDatasource.getConnection("eai/ds/EAIXRef");
          prepare = conn.prepareStatement(updateInstanceTitleQuery);
          prepare.setString(1, updatedInstanceTitle);
          prepare.setInt(2, Integer.parseInt(id));
          prepare.executeUpdate();
          conn.commit(); 
            
            
        }catch(Exception e)  {
         
          e.printStackTrace();
          throw e;
        }finally {
          prepare.close();
          conn.close();
        }
        
       
    }
   
    public String getPayLoad(String instanceId,String ecid,String compositDN) {
      String inputPayload = "";
        try {
            String compositeToken =
                getCompositeDNToken(compositDN);
            Composite composite = locator.lookupComposite(compositeToken);
            CompositeInstanceFilter filter = new CompositeInstanceFilter();
            filter.setECID(ecid);
            filter.setId(instanceId);
            List<CompositeInstance> compositeInstance =
                composite.getInstances(filter);
            ComponentInstanceFilter instanceFilter =
                new ComponentInstanceFilter();  
                     List<ComponentInstance> componentInstance =
                compositeInstance.get(0).getChildComponentInstances(instanceFilter);
            if (compositeInstance.size() > 0) {
                Document docAudit =
                    XMLUtil.convertToDOM(componentInstance.get(0).getAuditTrail().toString());
                String payloadAudit =
                    XPathUtils.executeXPath(docAudit, "//details").toString();
                Document docPayload = XMLUtil.convertToDOM(payloadAudit);
                Node payloadNode =
                    XPathUtils.executeXPath(docPayload, "//part//*", "NODE");
                 inputPayload = XMLUtil.nodeToString(payloadNode);
                // inputPayload = inputPayload.replaceAll("<", "&lt;").replaceAll(">", "&gt;");
            }
        } catch (Exception e) {
            e.printStackTrace();

        }

        return inputPayload;
    }

    public String getCompositeDNToken(String value) {      
        String regex = "[\\w]*./[\\w]*![\\S]*[*]";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(value);
        matcher.find();
        return matcher.group();
    }	

}

