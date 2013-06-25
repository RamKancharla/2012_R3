/*************************************************************************
* Module                EAIMoniotrUI 
*                       
* File                  StruckSequenceDetails.java
* Type                  Java File
* Description           List outs the Orders Stuck when sent from seibel to end systems.
*
* Change History
* Version	Date		Author              Description Of Change
* ========	========	===========         ===============================
*  0.01		21/09/11	John Peter      Created for Sequence Monitoring
* ========	========	===========	    ===============================
* 
*************************************************************************/
package com.strucksequence;

import com.database.DBDatasource;

//import java.sql.Connection;
//import java.sql.ResultSet;
//import java.sql.Statement;

import java.io.IOException;
import java.util.ArrayList;
import java.io.InputStream;
import java.sql.*;
import java.util.Date;
import java.util.Properties;
import java.util.StringTokenizer;
import java.io.FileInputStream;
import java.lang.*;
import java.text.DateFormat; 
import java.text.ParseException; 
import java.text.SimpleDateFormat; 

import com.tr.eai.console.vo.InputObject;
import com.tr.eai.console.sif.ServiceInvoker;


public class StruckSequenceDetails {
    public StruckSequenceDetails() {
    }
 
	Date d = new Date();
	static String endpoint	=null;	
	
	static
		{
			try {	
				Properties props=new java.util.Properties();
				InputStream inputStream = StruckSequenceDetails.class.getResourceAsStream("/EAIMonitorUI.properties");   
				props.load(inputStream);
				String soahost=props.get("soa.host").toString();	
				String soaport=props.get("soa.port").toString();
				endpoint="http://"+soahost+":"+soaport+"/soa-infra/services/CRMASYNC/SequenceReleaser/anchorToSeqReleaser";												
			} catch (Exception e) {
			        e.printStackTrace();
			}
		}

	// Method to calculate the total number of struck records
   public int getStruckSequenceCount(String selInterface, String selFlow, int selTimeDuration, String contextId) {
   
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
		int count = 0;  

        try {

			String contextAndMessageType = getContextAndMessageType(selInterface,selFlow);
			String context = "";
			String messageType = "";
			String contextIdVal = contextId.trim();

			StringTokenizer parser = new StringTokenizer(contextAndMessageType , "|");

			int i=0;
			while (parser.hasMoreTokens()) {
				if (i == 0 )
				{
					context = parser.nextToken();
				} else {
					messageType = parser.nextToken();
				}
				i++;
			}


            conn = DBDatasource.getConnection("eai/ds/EAIReference");
                               
			String queryString="select count(*) as count from MESSAGE_SEQ_INST  where context='"+ context +"' and message_type='"+ messageType +"' \n" +
								" and status = 'S' and last_updated_date > (sysdate-"+ selTimeDuration +") ";

			if (contextIdVal.length() > 0 && contextIdVal != "")
			{
				queryString = queryString + " and context_id = '" + contextIdVal + "' ";
			}			

			System.out.println("***getStruckSequenceCount - Query  : "+ queryString);

			stmt = conn.createStatement();
            rset = stmt.executeQuery(queryString);

            if (rset.next()) {
				count = rset.getInt("count");
            }
		
			System.out.println("***Record Count " + count);  


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try
            {
                if(rset!=null) {
                    rset.close();
                }
                if(stmt!=null) {
                    stmt.close();
                }
                if(conn!=null) {
                    conn.close();
                }
            }catch(Exception e) {
                e.printStackTrace();
            }
        }
        
        return count;
        
    }

	// Method to fetch the struck records based on the requested page
   public ArrayList<StruckSequenceBean> getStruckSequence(String selInterface, String selFlow, int selTimeDuration, int startRowVal, int endRowVal, String contextId) {
   
        ArrayList<StruckSequenceBean> struckSequenceBeanList=new ArrayList<StruckSequenceBean>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        try {

			String contextAndMessageType = getContextAndMessageType(selInterface,selFlow);
			String context = "";
			String messageType = "";
			String contextIdVal = contextId.trim();

			StringTokenizer parser = new StringTokenizer(contextAndMessageType , "|");

			int i=0;
			while (parser.hasMoreTokens()) {
				if (i == 0 )
				{
					context = parser.nextToken();
				} else {
					messageType = parser.nextToken();
				}
				i++;
			}

            conn = DBDatasource.getConnection("eai/ds/EAIReference");
                               
			String queryString="select correlation_id, context_id, status, last_updated_date from ( \n" +
					"select a.correlation_id, a.context_id, a.status, a.last_updated_date, ROWNUM seq from ( \n" +
					"select correlation_id,context_id, status, last_updated_date \n" +
					"from MESSAGE_SEQ_INST  where context='"+ context +"' and message_type='"+ messageType +"' and status = 'S' \n";


			if (contextIdVal.length() > 0 && contextIdVal != "")
			{
				queryString = queryString + " and context_id = '" + contextIdVal + "' ";
			}

			queryString = queryString + " and last_updated_date > (sysdate-"+ selTimeDuration +")  order by last_updated_date desc ) a ) \n" +
					"where seq > "+ startRowVal +" AND seq <= "+ endRowVal ;

			 System.out.println("***getStruckSequence - Query  : "+ queryString);

			
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");
			Timestamp t1;
			String t = "";

            stmt = conn.createStatement();
            rset = stmt.executeQuery(queryString);
			int rowCount = 0;  
            while (rset.next()) {
				rowCount++;  
                StruckSequenceBean struckSequenceBean = new StruckSequenceBean();
                struckSequenceBean.setCorrelationId(rset.getString("correlation_id"));
                struckSequenceBean.setContextId(rset.getString("context_id"));
                struckSequenceBean.setStatus(rset.getString("status"));

				t1 = rset.getTimestamp("last_updated_date");
				t = dateFormat.format(t1);

				struckSequenceBean.setLastUpdateDate(t); 

				struckSequenceBeanList.add(struckSequenceBean);

            }

		t1 = null;
		t = null;
		
		System.out.println("***There were " + rowCount + " records.");  


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try
            {
                if(rset!=null) {
                    rset.close();
                }
                if(stmt!=null) {
                    stmt.close();
                }
                if(conn!=null) {
                    conn.close();
                }
            }catch(Exception e) {
                e.printStackTrace();
            }
        }
        
        return struckSequenceBeanList;
        
    }


	//Method to release the struck records

    public String  updateStatus(String selCorrelation_Id){
    
	    Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
		String completeQry=null;
		String xml="";
       
        try{
				conn = DBDatasource.getConnection("eai/ds/EAIReference");
                
                completeQry = "UPDATE  MESSAGE_SEQ_INST set S_C_DISPLAY = 'Y' where CORRELATION_ID = '"+selCorrelation_Id+"' and STATUS='S'";
              
                stmt = conn.createStatement();
                int result=stmt.executeUpdate(completeQry);
                System.out.println("Successfully completed "+result);   
                
                xml =" <ns1:releaseSequenceRequest xmlns:ns1=\"http://www.reuters.com/ns/2007/09/01/GCAP/UTL/Sequencer\">\n"+
                    " <ns1:eaiHeader xmlns:ns2=\"http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes\">\n"+
					" <ns2:applicationId>CRM</ns2:applicationId>\n"+
					" <ns2:transactionId></ns2:transactionId>\n"+
					"<ns2:messageId></ns2:messageId>\n"+
					" <ns2:messageHistory>CRM;EAI;</ns2:messageHistory>\n"+
					" <ns2:tracingId>"+selCorrelation_Id+"</ns2:tracingId>\n"+
					" <ns2:timeStamp>"+d.getTime()+"</ns2:timeStamp>\n"+
					"<ns2:instanceId>999</ns2:instanceId>\n"+
					" <ns2:timeToLive>0</ns2:timeToLive>\n"+
					" <ns2:payloadVersion>A</ns2:payloadVersion>\n"+
					" </ns1:eaiHeader>\n"+
					" <ns1:correlationID>"+selCorrelation_Id+"</ns1:correlationID>\n"+
					"</ns1:releaseSequenceRequest>\n";
                        
            
				InputObject inputParamObj = new InputObject();						
				System.out.println("End pint URL" +endpoint );
                inputParamObj.setSServiceEndPoint(endpoint);
                inputParamObj.setSOprName("releaseSequence");
                inputParamObj.setInputPayload(xml);
                // Getting service invoker class to invoke service.
                ServiceInvoker serviceInvoker =ServiceInvoker.getInstance();
                serviceInvoker.invokeService(inputParamObj, null);	System.out.println("BPELProcess SequenceRelease executed!");
         
        }catch(Exception e){
			System.out.println("updateStatus = "+e.getMessage());
        return e.getMessage();
        }finally {
        
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException sqle) {
                System.err.println(sqle.getMessage());
		return sqle.getMessage();
              
            }
        }
        if (conn != null) {
        try {
            conn.close();
        } catch (SQLException sqle1) {
            System.err.println(sqle1.getMessage());
            return sqle1.getMessage();
        }
        }
        
        }
       return xml;
    }



public Properties loadProperties(){
        //Load the property file.
        Properties props = new java.util.Properties();
        
        try{
          
			InputStream is = this.getClass().getResourceAsStream("/WEB-INF/context.properties");
			//props.load(is.openStream());
			props.load(is);
    
            }catch(Exception pe){
                    pe.printStackTrace();
					System.err.println(pe.getMessage());
            }
            return props;

    }


	// Method to get the context and message type based on the interface and flow.
   public String getContextAndMessageType(String selInterface, String selFlow) {
   
        String contextAndMessageType = "";
        try {
		
			if (selInterface.equalsIgnoreCase("Orders") && selFlow.equalsIgnoreCase("Request") ) {
				contextAndMessageType="OrderManagement.OrderCreation|Order.CRMOrderNumber";
			} else if (selInterface.equalsIgnoreCase("Orders") && selFlow.equalsIgnoreCase("Response")) {
				contextAndMessageType="OrderManagement.OrderStatus|Order.CRMOrderNumber";			
			} else if (selInterface.equalsIgnoreCase("Orders") && selFlow.equalsIgnoreCase("TOMRequest")) {
				contextAndMessageType="TF_OrderDispatcher|TOM.OrderHeader.OrderNumber";
			} else if (selInterface.equalsIgnoreCase("Orders") && selFlow.equalsIgnoreCase("CPFG")) {
				contextAndMessageType="CPfG.UserOrderManager|CPfG.CPfGUserNumber";			
			} else if (selInterface.equalsIgnoreCase("Accounts") && selFlow.equalsIgnoreCase("CRMtoTRUST")) {
				contextAndMessageType="CRM-Trust.AccountManagement|SFDC.AccountID";
			} else if (selInterface.equalsIgnoreCase("Accounts") && selFlow.equalsIgnoreCase("TRUSTtoCRM")) {
				contextAndMessageType="TRUST-CRM.AccountManagement|SFDC.SFDCID";			
			} else if (selInterface.equalsIgnoreCase("Accounts") && selFlow.equalsIgnoreCase("TOM")) {
				contextAndMessageType="TOMAccountManager|AccountDetails.MasterAccountID";			
			} else if (selInterface.equalsIgnoreCase("Accounts") && selFlow.equalsIgnoreCase("SAP")) {
				contextAndMessageType="SAPAMEventManager|SAP.AccountID";
			} else if (selInterface.equalsIgnoreCase("Accounts") && selFlow.equalsIgnoreCase("CPFG")) {
				contextAndMessageType="CPFGAccountManager|CPFGAccountDetails.MasterAccountID";			
			} else if (selInterface.equalsIgnoreCase("Opportunities") && selFlow.equalsIgnoreCase("CRMtoTRUST")) {
				contextAndMessageType="CRM-TRUST.OpportunityManagement|CRM.SiebelAccountID";			
			} else if (selInterface.equalsIgnoreCase("Opportunities") && selFlow.equalsIgnoreCase("TRUSTtoCRM")) {
				contextAndMessageType="TRUST-CRM.OpportunityManagement|TRUST.SiebelOptyID";			
			} else if (selInterface.equalsIgnoreCase("Contacts") && selFlow.equalsIgnoreCase("TOM")) {
				contextAndMessageType="TOMContactManager|ContactDetails.MasterContactID";
			} else if (selInterface.equalsIgnoreCase("Contacts") && selFlow.equalsIgnoreCase("CPFGReq")) {
				contextAndMessageType="CPFGAccountManager|AccountDetails.MasterAccountID";
			} else if (selInterface.equalsIgnoreCase("Contacts") && selFlow.equalsIgnoreCase("CPFGRes")) {
				contextAndMessageType="CPfG.UserUUID|CPfG.UserProfileUpdateToSiebel";
			} else if (selInterface.equalsIgnoreCase("Contacts") && selFlow.equalsIgnoreCase("SAPCM")) {
				contextAndMessageType="SAPCMEventManager|SAP.ContactUUID";			
			} else if (selInterface.equalsIgnoreCase("Contacts") && selFlow.equalsIgnoreCase("SAPExtCM")) {
				contextAndMessageType="SAPCMEventManager|SAP.ContactROWID";
			}  
      else if (selInterface.equalsIgnoreCase("Contacts") && selFlow.equalsIgnoreCase("CRMtoTRUST")) {
        contextAndMessageType="CRM-Trust.ContactManagement|SFDC.ContactID";
      }
      else if (selInterface.equalsIgnoreCase("Contacts") && selFlow.equalsIgnoreCase("TRUSTtoCRM")) {
        contextAndMessageType="TRUST-CRM.ContactManagement|TRUST.ContactUniqueNumber";      
      }
  
			System.out.println("***contextAndMessageType " + contextAndMessageType);  

        } catch (Exception e) {
            e.printStackTrace();
        } 
        
        return contextAndMessageType;
        
    }

}
