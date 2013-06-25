package com.dsperr;

import java.io.BufferedWriter;
import java.io.File;

import java.io.FileWriter;

import java.io.Writer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.database.DBDatasource;

import java.util.ArrayList;

public class DisplayErrorMessage {

public static String globalQuery = "";

public static ArrayList<DisplayErrorMessageVO> errorDetails=null;
public static int currPage=0,numRecordsPerPage=0,totalPages=0,totalRecords=0;

    public static ArrayList nextRecords(){
        ArrayList<DisplayErrorMessageVO> nextPage=new ArrayList<DisplayErrorMessageVO>();
        if (currPage+1>totalPages)
            return null;            
        else{
            int start=currPage*numRecordsPerPage,numrecordsInCurrPage=0;
            if(currPage+1==totalPages)
                numrecordsInCurrPage=totalRecords-currPage*numRecordsPerPage;
            else
                numrecordsInCurrPage = numRecordsPerPage;
            for (int i = start; i < start + numrecordsInCurrPage; i++) {
                nextPage.add(errorDetails.get(i));
            }
            currPage++;
            return nextPage;
        }
    }
    public static ArrayList prevRecords(){
        if (currPage<=1)
            return null;
        else{
//            int start=currPage*numRecordsPerPage,numrecordsInCurrPage=0;
//            if(currPage==totalPages)
//                numrecordsInCurrPage=totalRecords-(currPage-1)*numRecordsPerPage;
//            else
//                numrecordsInCurrPage=numRecordsPerPage;        
            ArrayList<DisplayErrorMessageVO> prevPage=new ArrayList<DisplayErrorMessageVO>();
            int start=(currPage-2)*numRecordsPerPage;
            //System.out.println("CURR PAGE"+currPage+"START::"+start+"No::"+numRecordsPerPage);
            for(int i=start;i<start+numRecordsPerPage;i++){
                prevPage.add(errorDetails.get(i));
            }
            currPage--;
            return prevPage;
        }
    }
    public static String whichPage(){
        return "Page "+currPage+" out of "+totalPages;
    }

    public ArrayList<DisplayErrorMessageVO> loadErrorDetails(String contextId, String context,String timeduration,int startIndex,int lastIndex){
        //numRecordsPerPage=numRecords;
        errorDetails = new ArrayList<DisplayErrorMessageVO>();
        DisplayErrorMessageVO displayErrorMessageVO = null;      
        int count=0;
        String prefix="",postfix="";
        if(startIndex!=0 && lastIndex!=0){
            prefix="SELECT * from( SELECT rownum as ID1,contextid, MODIFY_DATE, ERROR_MESSAGE FROM ( SELECT ";
            postfix=")) WHERE ID1 BETWEEN "+startIndex+" AND "+lastIndex;                
        }else{
            prefix="SELECT ";
            postfix="";                    
        }
        String datasourceName = "";
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        ResultSet rs1 = null;
        try {
            String query = "";
            String countQuery = "";
            String originatingSystem = "";
            String contextDetails = "";
            int noDays = Integer.parseInt(timeduration);

            if ("crmToTrustAcc".equals(context)) {
                String xpath =
                    "(xmltype(payload).extract('//eaiHeader','xmlns:local=\"http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish\" xmlns=\"http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish\"')).extract('//messageHistory/text()','xmlns:gcap-cmt=\"http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes\" xmlns=\"http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes\"').getStringVal()";
                if (contextId.length() > 0) {
                    query =
                            prefix + "distinct(reference_id) contextid,to_char(LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE, " +
                            xpath +
                            " as ERROR_MESSAGE FROM SOA_EAIOWNER.INTERFACE_BUFFER where INTERFACE_ID ='SFDCAM' and reference_id like '%" +
                            contextId + "%' and LAST_UPDATED > (sysdate-" +
                            noDays +
                            ") and STATE in ('E','R') order by MODIFY_DATE desc"+
                            postfix;
                } else {
                    query =
                            prefix + "distinct(reference_id) contextid, to_char(LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE, " +
                            xpath +
                            " as ERROR_MESSAGE FROM SOA_EAIOWNER.INTERFACE_BUFFER where INTERFACE_ID ='SFDCAM' and LAST_UPDATED > (sysdate-" +
                            noDays +
                            ") and STATE in ('E','R') order by MODIFY_DATE desc" +
                            postfix;

                }
                originatingSystem = "Siebel";
                contextDetails = "Siebel - TRUST Account Publish";
                datasourceName = "eai/ds/EAIReference";

            }
            if ("crmToTrustOpty".equals(context)) {
                String xpath =
                    "regexp_replace((xmltype(payload).extract('//eaiHeader','xmlns:xsdLocal=\"http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement\" xmlns=\"http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement\"')).extract('//messageHistory/text()','xmlns:gcap-cmt=\"http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes\" xmlns=\"http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes\"').getStringVal()";
                if (contextId.length() > 0) {
                     query = prefix + "regexp_replace(reference_id,' ;SF-OP-XRef Fault'||'$','') contextid, to_char(LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE," +
                            xpath +
                             ",'EAI;'||'$','The AccountId used for this opportunity does not exist in the xRef table. Please make sure that the Account " +
                             "exists in both Seibel and TRUST')  ERROR_MESSAGE FROM SOA_EAIOWNER.INTERFACE_BUFFER where INTERFACE_ID='SFDCOP' and LAST_UPDATED > (sysdate-" +
                                 noDays +
                                     ") and reference_id like '%" + contextId + "%'  and STATE in ('E','R' ) order by LAST_UPDATED desc" +
                                postfix;
                } else {
                    query =
                            prefix + "regexp_replace(reference_id,' ;SF-OP-XRef Fault'||'$','') contextid, to_char(LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE," +
                            xpath +
                            ",'EAI;'||'$','The AccountId used for this opportunity does not exist in the xRef table. Please make sure that the Account exists in both Seibel and TRUST')  ERROR_MESSAGE FROM SOA_EAIOWNER.INTERFACE_BUFFER where INTERFACE_ID='SFDCOP' and LAST_UPDATED > (sysdate-" +
                            noDays +
                            ") and STATE in ('E','R' ) order by LAST_UPDATED desc" +
                            postfix;

                }
                originatingSystem = "Siebel";
                contextDetails = "Siebel - TRUST Opportunity Publish";
                datasourceName = "eai/ds/EAIReference";
            }
            if ("trustToCrmAcc".equals(context)) {
                if (contextId.length() > 0) {
                    query =
                            prefix + "replace(regexp_replace(C2.TITLE,' ;SBL-AP-Flt'||'$',''),'SFDCID: ')" +
                            "contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, BVSV.varchar2_value as ERROR_MESSAGE " +
                            "FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 WHERE CI.COMPONENT_NAME = 'CCRMAM_PropagateTRUSTAccount' " +
                            "AND C2.title like '%" + contextId + "%'" +
                            "AND CI.CIKEY = BVSV.INSTANCE_KEY  AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate'and C2.id=ci.cmpst_id AND CI.MODIFY_DATE > (sysdate-" +
                            noDays + ") order by CI.MODIFY_DATE desc" + postfix;
                                  } else {

                    query =
                            prefix + "replace(regexp_replace(C2.TITLE,' ;SBL-AP-Flt'||'$',''),'SFDCID: ') " +
                            "contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, " +
                            "BVSV.varchar2_value as ERROR_MESSAGE FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 \n" +
                            "WHERE CI.COMPONENT_NAME = 'CCRMAM_PropagateTRUSTAccount'  \n" +
                            "AND regexp_like(C2.TITLE,'SBL-AP-Flt'||'$') \n" +
                            "AND CI.CIKEY = BVSV.INSTANCE_KEY  \n" +
                            "AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate' and C2.id=ci.cmpst_id \n" +
                            "AND CI.MODIFY_DATE > (sysdate-" + noDays +
                            ") order by CI.MODIFY_DATE desc" + postfix;
                              }
                originatingSystem = "TRUST";
                contextDetails = "TRUST - Siebel Account Publish";
                datasourceName = "eai/ds/EAIXRef";
            }
            
          if ("crmToTrustContact".equals(context)) {
              if (contextId.length() > 0) {
                  query =
                prefix + "ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as contextid, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE,ib.error_message,ib.state,ib.updated_by \n" +
                "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='SFDCCM' \n" + 
                "and ib.state  in ('E','R','W') and ib.LAST_UPDATED > (sysdate-" +
                noDays +") and ib.REFERENCE_ID like '%" + contextId + "%'   order by ib.LAST_UPDATED desc\n"+ postfix;
                         
              } else {

                  query =
                            prefix + "ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as contextid, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE,ib.error_message,ib.state,ib.updated_by \n" +
                            "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='SFDCCM' \n" + 
                            "and ib.state  in ('E','R','W') and ib.LAST_UPDATED > (sysdate-" +
                            noDays +") order by ib.LAST_UPDATED desc\n"+postfix;

              }
           System.out.println(query);
            originatingSystem = "Siebel";
            contextDetails = "Siebel - Trust Contact Publish";
            datasourceName = "eai/ds/EAIReference";
          }  
          if ("trustToCrmContact".equals(context)) {
              if (contextId.length() > 0) {
                  query =
                          
                                          prefix + "substr(C2.TITLE,6,instr(C2.TITLE,';')-6)\n" +
                                          "contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, BVSV.varchar2_value as ERROR_MESSAGE " +
                                          "FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 WHERE CI.COMPONENT_NAME = 'SFDCCM_ContactPublishUpdate' " +
                                          "AND C2.title like '%" + contextId + "%'" +
                                          "AND CI.CIKEY = BVSV.INSTANCE_KEY  AND BVSV.SENSOR_NAME = 'InpSensorErrorVar'and C2.id=ci.cmpst_id and BVSV.varchar2_value is not null  AND CI.MODIFY_DATE > (sysdate-" +
                                          noDays + ") order by CI.MODIFY_DATE desc" + postfix;
              } else {

                  query =
                          prefix + "substr(C2.TITLE,6,instr(C2.TITLE,';')-6)\n" +
                          "contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, " +
                          "BVSV.varchar2_value as ERROR_MESSAGE FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 \n" +
                          "WHERE CI.COMPONENT_NAME = 'SFDCCM_ContactPublishUpdate'  \n" +
                          "AND CI.CIKEY = BVSV.INSTANCE_KEY  \n" +
                          "AND BVSV.SENSOR_NAME = 'InpSensorErrorVar' and C2.id=ci.cmpst_id and BVSV.varchar2_value is not null \n" +
                          "AND CI.MODIFY_DATE > (sysdate-" + noDays +
                          ") order by CI.MODIFY_DATE desc" + postfix;

              }
              originatingSystem = "TRUST";
              contextDetails = "TRUST - Siebel Contact Publish";
              datasourceName = "eai/ds/EAIXRef";
          }
            if ("trustToCrmOpty".equals(context)) {
                if (contextId.length() > 0) {
                    query =
                            prefix + "replace(regexp_replace(C2.TITLE,' ;SBL-OP-Flt'||'$',''),'SFDCOptyID: ') " +
							"contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, "+
							"BVSV.varchar2_value as ERROR_MESSAGE FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 \n" +
							"WHERE CI.COMPONENT_NAME = 'CCRMOP_SubmitOpportunity'  AND C2.title like '%" +
                            contextId +
                            "%' AND CI.CIKEY = BVSV.INSTANCE_KEY AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTOpportunityUpdate'and C2.id=ci.cmpst_id AND CI.MODIFY_DATE > (sysdate-" +
                            noDays + ") order by CI.MODIFY_DATE desc" + postfix;
                } else {
                    query =
                             prefix + "replace(regexp_replace(C2.TITLE,' ;SBL-OP-Flt'||'$',''),'SFDCOptyID: ') " +
							              "contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, " +
						              	"BVSV.varchar2_value as ERROR_MESSAGE FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2  \n" +
                            "WHERE CI.COMPONENT_NAME = 'CCRMOP_SubmitOpportunity' \n" +
                            "AND regexp_like(C2.TITLE,'SBL-OP-Flt' ||'$') \n" +
                            "AND CI.CIKEY = BVSV.INSTANCE_KEY \n" +
                            "AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTOpportunityUpdate' and C2.id=ci.cmpst_id \n" +
                            "AND CI.MODIFY_DATE > (sysdate-" + noDays +
                            ") order by CI.MODIFY_DATE desc" + postfix;

                    //System.out.println("In trustToCrmOpty, else !=null");
                }
                originatingSystem = "TRUST";
                contextDetails = "TRUST - Siebel Opportunity Publish";
                datasourceName = "eai/ds/EAIXRef";
            }
            System.out.println("Query :" +query);
            
            globalQuery = query.toString();
          

            conn = DBDatasource.getConnection(datasourceName);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);


            while (rs.next()) {
                displayErrorMessageVO = new DisplayErrorMessageVO();
                displayErrorMessageVO.setContextId(rs.getString("contextid"));
                displayErrorMessageVO.setContext(contextDetails);
                displayErrorMessageVO.setOriginatingSystem(originatingSystem);
                displayErrorMessageVO.setResolvingSystem(originatingSystem);

		  // ErrorMessage was displaying null, hence changed the below code

                String errorMessage = rs.getString("ERROR_MESSAGE");
                if(rs.wasNull()){
                    displayErrorMessageVO.setErrorMessage("");
                }
                else {
                    displayErrorMessageVO.setErrorMessage(rs.getString("ERROR_MESSAGE"));
                }


           //     displayErrorMessageVO.setErrorMessage(rs.getString("ERROR_MESSAGE"));


                displayErrorMessageVO.setLastModifiedDate(rs.getString("MODIFY_DATE"));
                errorDetails.add(displayErrorMessageVO);
                count++;
            }


        } catch (Exception e) {
            System.out.println("Exception in DisplayErrorMessage.loadErrorDetails() : " +
                               e.getMessage());
            e.printStackTrace();
        }
        finally {
            try
            {
              
                if(rs!=null) {
                    rs.close();
                }
                
            }catch(Exception e) {
                e.printStackTrace();
            }
        }


        return errorDetails;

        //        totalRecords=count;
        //        currPage=1;
        //        int reminder=count%numRecordsPerPage;
        //        if(reminder==0)
        //            totalPages=count/numRecordsPerPage;
        //        else
        //            totalPages=count/numRecordsPerPage+1;
        //        int numrecordsInFirstPage=0;
        //        if(count/numRecordsPerPage==0)
        //            numrecordsInFirstPage=reminder;
        //        else
        //            numrecordsInFirstPage=numRecordsPerPage;
        //
        //        ArrayList<DisplayErrorMessageVO> firstPage=new ArrayList<DisplayErrorMessageVO>();
        //        for(int i=0;i<numrecordsInFirstPage;i++){
        //            firstPage.add(errorDetails.get(i));
        //        }
        //        return firstPage;
    }


   // CR - 22314 - Based on the total Records Enabling NEXT button. This menthod returns the total Count.

    public int getTotalRecordCount(String contextId, String context,
                                   String timeduration) {

        int recordCount = 0;

        String datasourceName = "";
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs1 = null;
        
        String prefix = null;
        String postfix = null;
        
     
        try {

            String countQuery = "";

            int noDays = Integer.parseInt(timeduration);

			prefix = "SELECT MAX(rownum)  as count from ( SELECT ";
			postfix = ")";

            if ("crmToTrustAcc".equals(context)) {
               String xpath =
                    "(xmltype(payload).extract('//eaiHeader','xmlns:local=\"http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish\" xmlns=\"http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish\"')).extract('//messageHistory/text()','xmlns:gcap-cmt=\"http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes\" xmlns=\"http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes\"').getStringVal()";
                if (contextId.length() > 0) {
                    countQuery =
                            prefix + "distinct(reference_id) contextid,to_char(LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE, " +
                            xpath +
                            " as ERROR_MESSAGE FROM SOA_EAIOWNER.INTERFACE_BUFFER where INTERFACE_ID ='SFDCAM' and reference_id like '%" +
                            contextId + "%' and LAST_UPDATED > (sysdate-" +
                            noDays +
                            ") and STATE in ('E','R') order by MODIFY_DATE desc"+
                            postfix;
                } else {
                    countQuery =
                            prefix + "distinct(reference_id) contextid, to_char(LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE, " +
                            xpath +
                            " as ERROR_MESSAGE FROM SOA_EAIOWNER.INTERFACE_BUFFER where INTERFACE_ID ='SFDCAM' and LAST_UPDATED > (sysdate-" +
                            noDays +
                            ") and STATE in ('E','R') order by MODIFY_DATE desc" +
                            postfix;

                }
          
               
				datasourceName = "eai/ds/EAIReference";
            }
            if ("crmToTrustOpty".equals(context)) {

                String xpath =
                    "regexp_replace((xmltype(payload).extract('//eaiHeader','xmlns:xsdLocal=\"http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement\" xmlns=\"http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement\"')).extract('//messageHistory/text()','xmlns:gcap-cmt=\"http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes\" xmlns=\"http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes\"').getStringVal()";
                if (contextId.length() > 0) {
                     countQuery = prefix + "regexp_replace(reference_id,' ;SF-OP-XRef Fault'||'$','') contextid, to_char(LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE," +
                            xpath +
                             ",'EAI;'||'$','The AccountId used for this opportunity does not exist in the xRef table. Please make sure that the Account " +
                             "exists in both Seibel and TRUST')  ERROR_MESSAGE FROM SOA_EAIOWNER.INTERFACE_BUFFER where INTERFACE_ID='SFDCOP' and LAST_UPDATED > (sysdate-" +
                                 noDays +
                                     ") and reference_id like '%" + contextId + "%'  and STATE in ('E','R' ) order by LAST_UPDATED desc" +
                                postfix;
                } else {
                    countQuery =
                            prefix + "regexp_replace(reference_id,' ;SF-OP-XRef Fault'||'$','') contextid, to_char(LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE," +
                            xpath +
                            ",'EAI;'||'$','The AccountId used for this opportunity does not exist in the xRef table. Please make sure that the Account exists in both Seibel and TRUST')  ERROR_MESSAGE FROM SOA_EAIOWNER.INTERFACE_BUFFER where INTERFACE_ID='SFDCOP' and LAST_UPDATED > (sysdate-" +
                            noDays +
                            ") and STATE in ('E','R' ) order by LAST_UPDATED desc" +
                            postfix;

                }
              datasourceName = "eai/ds/EAIReference";
                  }
            
          if ("crmToTrustContact".equals(context)) {
              if (contextId.length() > 0) {
                  countQuery =
                prefix + "ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as contextid, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') MODIFY_DATE,ib.error_message,ib.state,ib.updated_by \n" +
                "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='SFDCCM' \n" + 
                "and ib.state  in ('E','R','W') and ib.LAST_UPDATED > (sysdate-" +
                noDays +") and ib.REFERENCE_ID like '%" + contextId + "%'   order by ib.LAST_UPDATED desc\n"+ postfix;
                         
              } else {

                  countQuery =
                            prefix + "ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as contextid, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  MODIFY_DATE,ib.error_message,ib.state,ib.updated_by \n" +
                            "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='SFDCCM' \n" + 
                            "and ib.state  in ('E','R','W') and ib.LAST_UPDATED > (sysdate-" +
                            noDays +") order by ib.LAST_UPDATED desc\n"+postfix;

              }
          
          datasourceName = "eai/ds/EAIReference";
          }
                  if ("trustToCrmContact".equals(context)) {
                      if (contextId.length() > 0) {
                          countQuery =
                        prefix + "substr(C2.TITLE,6,instr(C2.TITLE,';')-6)\n" +
                        "contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, BVSV.varchar2_value as ERROR_MESSAGE " +
                        "FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 WHERE CI.COMPONENT_NAME = 'SFDCCM_ContactPublishUpdate' " +
                        "AND C2.title like '%" + contextId + "%'" +
                        "AND CI.CIKEY = BVSV.INSTANCE_KEY  AND BVSV.SENSOR_NAME = 'InpSensorErrorVar'and C2.id=ci.cmpst_id and BVSV.varchar2_value is not null  AND CI.MODIFY_DATE > (sysdate-" +
                        noDays + ") order by CI.MODIFY_DATE desc" + postfix;
                                 
                      } else {

                          countQuery =
                                    prefix + "substr(C2.TITLE,6,instr(C2.TITLE,';')-6)\n" +
                                    "contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, " +
                                    "BVSV.varchar2_value as ERROR_MESSAGE FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 \n" +
                                    "WHERE CI.COMPONENT_NAME = 'SFDCCM_ContactPublishUpdate'  \n" +
                                    "AND CI.CIKEY = BVSV.INSTANCE_KEY  \n" +
                                    "AND BVSV.SENSOR_NAME = 'InpSensorErrorVar' and C2.id=ci.cmpst_id and BVSV.varchar2_value is not null \n" +
                                    "AND CI.MODIFY_DATE > (sysdate-" + noDays +
                                    ") order by CI.MODIFY_DATE desc" + postfix;

                      }
              
				datasourceName = "eai/ds/EAIReference";
            }
            
     
            if ("trustToCrmAcc".equals(context)) {
                if (contextId.length() > 0) {
                    countQuery =
                            prefix + "replace(regexp_replace(C2.TITLE,' ;SBL-AP-Flt'||'$',''),'SFDCID: ')" +
                            "contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, BVSV.varchar2_value as ERROR_MESSAGE " +
                            "FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 WHERE CI.COMPONENT_NAME = 'CCRMAM_PropagateTRUSTAccount' " +
                            "AND C2.title like '%" + contextId + "%'" +
                            "AND CI.CIKEY = BVSV.INSTANCE_KEY  AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate'and C2.id=ci.cmpst_id AND CI.MODIFY_DATE > (sysdate-" +
                            noDays + ") order by CI.MODIFY_DATE desc" + postfix;
                } else {

                    countQuery =
                            prefix + "replace(regexp_replace(C2.TITLE,' ;SBL-AP-Flt'||'$',''),'SFDCID: ') " +
                            "contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, " +
                            "BVSV.varchar2_value as ERROR_MESSAGE FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 \n" +
                            "WHERE CI.COMPONENT_NAME = 'CCRMAM_PropagateTRUSTAccount'  \n" +
                            "AND regexp_like(C2.TITLE,'SBL-AP-Flt'||'$') \n" +
                            "AND CI.CIKEY = BVSV.INSTANCE_KEY  \n" +
                            "AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate'and C2.id=ci.cmpst_id \n" +
                            "AND CI.MODIFY_DATE > (sysdate-" + noDays +
                            ") order by CI.MODIFY_DATE desc" + postfix;

                }
               
                
				datasourceName = "eai/ds/EAIXRef";
            }
            if ("trustToCrmOpty".equals(context)) {
                if (contextId.length() > 0) {
                    countQuery =
                            prefix + "replace(regexp_replace(C2.TITLE,' ;SBL-OP-Flt'||'$',''),'SFDCOptyID: ') " +
							"contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, "+
							"BVSV.varchar2_value as ERROR_MESSAGE FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 \n" +
							"WHERE CI.COMPONENT_NAME = 'CCRMOP_SubmitOpportunity'  AND C2.title like '%" +
                            contextId +
                            "%' AND CI.CIKEY = BVSV.INSTANCE_KEY AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTOpportunityUpdate' and C2.id=ci.cmpst_id AND CI.MODIFY_DATE > (sysdate-" +
                            noDays + ") order by CI.MODIFY_DATE desc" + postfix;
                } else {
                    countQuery =
                            prefix + "replace(regexp_replace(C2.TITLE,' ;SBL-OP-Flt'||'$',''),'SFDCOptyID: ') " +
							"contextid,to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') as MODIFY_DATE, " +
							"BVSV.varchar2_value as ERROR_MESSAGE FROM SOA_SOAINFRA.CUBE_INSTANCE CI, SOA_SOAINFRA.BPEL_VARIABLE_SENSOR_VALUES BVSV,SOA_SOAINFRA.composite_instance C2 \n" +
                            "WHERE CI.COMPONENT_NAME = 'CCRMOP_SubmitOpportunity' \n" +
                            "AND regexp_like(C2.TITLE,'SBL-OP-Flt' ||'$') \n" +
                            "AND CI.CIKEY = BVSV.INSTANCE_KEY \n" +
                            "AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTOpportunityUpdate' and C2.id=ci.cmpst_id \n" +
                            "AND CI.MODIFY_DATE > (sysdate-" + noDays +
                            ") order by CI.MODIFY_DATE desc" + postfix;
                }
               
                
				datasourceName = "eai/ds/EAIXRef";
            }

            System.out.println("countQuery :" +countQuery);
            conn = DBDatasource.getConnection(datasourceName);
            stmt = conn.createStatement();
            rs1 = stmt.executeQuery(countQuery);
            if (rs1.next()) {
                recordCount = rs1.getInt("count");
                return recordCount;
            }


        } catch (Exception e) {
            System.out.println("Exception in DisplayErrorMessage.loadErrorDetails() : " +
                               e.getMessage());
            e.printStackTrace();
        }
		
	        finally {
                    try
                    {
                      
                        if(rs1!=null) {
                            rs1.close();
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

        return recordCount;


    }

    /* public static void main(String[] args){
        DisplayErrorMessage displayErrorMessage = new DisplayErrorMessage();
            ArrayList errorDetails = null;
            String noDataMessage = "";
            DisplayErrorMessageVO displayErrorMessageVO = null;
            //String contextId = request.getParameter("crmToTrustAcc");
            //String context = request.getParameter("context");
            String myContext="trustToCrmAcc";
            String myContextId=null;
        displayErrorMessage.loadErrorDetails(myContextId, myContext);

            }*/
}
