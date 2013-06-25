package com.tr.eai.sequencereleaser;

import com.tr.eai.console.vo.InputObject;
import com.tr.eai.console.sif.ServiceInvoker;

import java.io.InputStream;
import com.database.DBDatasource;

import java.sql.*;
import java.util.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;
import java.util.StringTokenizer;
import java.io.FileInputStream;



public class SequenceReleaser
{
		
		Date d = new Date();
        String correlationId;	
		static String endpoint	=null;	
		static
		{
			try {	
				Properties props=new java.util.Properties();
				InputStream inputStream = SequenceReleaser.class.getResourceAsStream("/EAIMonitorUI.properties");   
				props.load(inputStream);
				String soahost=props.get("soa.host").toString();	
				String soaport=props.get("soa.port").toString();
				endpoint="http://"+soahost+":"+soaport+"/soa-infra/services/CRMASYNC/SequenceReleaser/anchorToSeqReleaser";												
			} catch (Exception e) {
			        e.printStackTrace();
			}
		}
		
		//Method for release the process

    public void callRelease(String selCorrelation_Id) throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {


            conn = DBDatasource.getConnection("eai/ds/EAIReference");
            String startedqry =
                "select CORRELATION_ID  from message_seq_inst where  sequence_id in(select max(sequence_id) from MESSAGE_SEQ_INST where sequence_id<(select sequence_id from message_seq_inst where CORRELATION_ID = '" +
                selCorrelation_Id + "'))";

             stmt = conn.createStatement();
            rs = stmt.executeQuery(startedqry);
            rs.next();
            correlationId = rs.getString("CORRELATION_ID");


               System.out.println("correlationId correlationId" +correlationId );

            String xml =
                " <ns1:releaseSequenceRequest xmlns:ns1=\"http://www.reuters.com/ns/2007/09/01/GCAP/UTL/Sequencer\">\n" +
                " <ns1:eaiHeader xmlns:ns2=\"http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes\">\n" +
                " <ns2:applicationId>CRM</ns2:applicationId>\n" +
                " <ns2:transactionId></ns2:transactionId>\n" +
                "<ns2:messageId></ns2:messageId>\n" +
                " <ns2:messageHistory>CRM;EAI;</ns2:messageHistory>\n" +
                " <ns2:tracingId>" + correlationId + "</ns2:tracingId>\n" +
                " <ns2:timeStamp>" + d.getTime() + "</ns2:timeStamp>\n" +
                "<ns2:instanceId>9999</ns2:instanceId>\n" +
                " <ns2:timeToLive>0</ns2:timeToLive>\n" +
                " <ns2:payloadVersion>A</ns2:payloadVersion>\n" +
                " </ns1:eaiHeader>\n" + " <ns1:correlationID>" +
                correlationId + "</ns1:correlationID>\n" +
                "</ns1:releaseSequenceRequest>\n";

				InputObject inputParamObj = new InputObject();						
				System.out.println("End pint URL" +endpoint );
                inputParamObj.setSServiceEndPoint(endpoint);
                inputParamObj.setSOprName("releaseSequence");
                inputParamObj.setInputPayload(xml);
                // Getting service invoker class to invoke service.
                ServiceInvoker serviceInvoker =ServiceInvoker.getInstance();
                serviceInvoker.invokeService(inputParamObj, null);
                System.out.println("BPELProcess SequenceRelease in call Releaser executed!<br>");


        }

        catch (Exception e) {
	e.printStackTrace();

        } finally {

            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException sqle) {
                    System.err.println(sqle.getMessage());

                }
                rs = null;
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException sqle) {
                    System.err.println(sqle.getMessage());

                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException sqle) {
                    System.err.println(sqle.getMessage());

                }
            }

        }
    }
    //Method for load the context and context type values
    public ArrayList loadContextDetails(){

            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            ArrayList context = new ArrayList();
            ArrayList contextTYPE = new ArrayList();
            ArrayList ContextDetails = new ArrayList();
        try{
            String searchQry = "select distinct(message_type),context  from MESSAGE_SEQ_INST  ";
            conn = DBDatasource.getConnection("eai/ds/EAIReference");
            stmt = conn.createStatement();
            rs = stmt.executeQuery(searchQry);

              while (rs.next()) {
                  contextTYPE.add( rs.getString("message_type"));
                  context.add( rs.getString("context"));
              }
            ContextDetails.add(context);
            ContextDetails.add(contextTYPE);
        }catch(Exception e){
         e.printStackTrace();
        }finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException sqle) {
                    System.err.println(sqle.getMessage());
                    return null;
                }
                rs = null;
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException sqle) {
                    System.err.println(sqle.getMessage());
                    return null;
                }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException sqle) {
                System.err.println(sqle.getMessage());
                return null;
            }
        }

    }
    return ContextDetails;
    }
    //Method for complete the process
    public String  updateStatus(String selCorrelation_Id){

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
String completeQry=null;
String xml="";

        try{
                conn = DBDatasource.getConnection("eai/ds/EAIReference");

                 completeQry = "UPDATE  MESSAGE_SEQ_INST set S_C_DISPLAY = 'Y' where CORRELATION_ID = '"+selCorrelation_Id+"' and STATUS='S'";

                System.out.println("query ****"+completeQry);
                stmt = conn.createStatement();
                int result=stmt.executeUpdate(completeQry);
                System.out.println("Successfully completed "+result);

        //String S= new Long(d.getTime()).toString();



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
            serviceInvoker.invokeService(inputParamObj, null);
            System.out.println("BPELProcess SequenceRelease executed!<br>");

        }catch(Exception e){
        e.printStackTrace();
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
    //Method for load the search results
    public ArrayList loadSearchResults(String selCONTEXT_Id,String selCONTEXT_TYPE, String selCONTEXT){

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    ArrayList correclationIdResults = new ArrayList();

    try{
            conn = DBDatasource.getConnection("eai/ds/EAIReference");
            String searchResultsQry = "select sequence_id,message_type,context_id,context,process,correlation_id,status,last_updated_date,CHECKER_INSTANCE_ID,RELEASER_INSTANCE_ID,N_S_INSTANCE_ID  from MESSAGE_SEQ_INST where CONTEXT_ID like ('"+selCONTEXT_Id+"')  "+"and context ='"+selCONTEXT+"' "+"and message_type ='"+selCONTEXT_TYPE+"' "+"and status in ('S','N') and S_C_DISPLAY is null "+"order by sequence_id,status asc";

           // System.out.println("query ****"+searchResultsQry);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(searchResultsQry);
              while (rs.next()) {
                  SequenceReleaserBean sequenceReleaseBean = new SequenceReleaserBean();
                  sequenceReleaseBean.setSequenceId(rs.getString(1));
                  sequenceReleaseBean.setMessageType(rs.getString(2));
                  sequenceReleaseBean.setRecontextId(rs.getString(3));
                  sequenceReleaseBean.setContext(rs.getString(4));
                  sequenceReleaseBean.setProcess(rs.getString(5));
                  sequenceReleaseBean.setCorrelationId(rs.getString(6));
                  sequenceReleaseBean.setStatus(rs.getString(7));
                  sequenceReleaseBean.setLastUpdatedDate(rs.getString(8));
                  sequenceReleaseBean.setCheckerInstanceId(rs.getString(9));
                  sequenceReleaseBean.setReleaserInstanceId(rs.getString(10));
                  sequenceReleaseBean.setNSInstacneId(rs.getString(11));
                  correclationIdResults.add(sequenceReleaseBean);
              }

    }catch(Exception e){
       e.printStackTrace();
    }finally {
    if (rs != null) {
        try {
            rs.close();
        } catch (SQLException sqle) {
            System.err.println(sqle.getMessage());

        }
        rs = null;
    }
    if (stmt != null) {
        try {
            stmt.close();
        } catch (SQLException sqle) {
            System.err.println(sqle.getMessage());

        }
    }
    if (conn != null) {
    try {
        conn.close();
    } catch (SQLException sqle) {
        System.err.println(sqle.getMessage());

    }
    }

    }
    return correclationIdResults;
 }

}

