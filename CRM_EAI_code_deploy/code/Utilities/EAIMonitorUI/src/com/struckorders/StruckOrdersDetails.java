/*************************************************************************
* Module                EAIMoniotrUI 
*                       
* File                  StruckOrdersDetails.java
* Type                  Java File
* Description           List outs the Orders Stuck when sent from seibel to end systems.
*
* Change History
* Version	Date		Author              Description Of Change
* ========	========	===========         ===============================
*  0.01		04/03/11	Raghu Vasireddy      Added Siebel to SAP & SEA flow of OM
* ========	========	===========	    ===============================
* 
*************************************************************************/
package com.struckorders;

import com.database.DBDatasource;

import com.struckcontacts.StruckContactsCPFGToSiebelBean;
import com.struckcontacts.StruckContactsTOMToSiebelBean;

import com.struckoppties.StruckOpptiesTrustToSiebelBean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;

public class StruckOrdersDetails {
    public StruckOrdersDetails() {
    }
    
   public ArrayList<StruckOrdersSiebelToTOMBean> getStruckOrdersSiebelToTOM(String referenceId) {
   
        ArrayList<StruckOrdersSiebelToTOMBean> struckOrdersSiebelToTOMBeanList=new ArrayList<StruckOrdersSiebelToTOMBean>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        String queryString="";
        try {
            String originatingSystem="Siebel";
            conn = DBDatasource.getConnection("eai/ds/EAIReference");
            if(referenceId==null){
            queryString="SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='TOMOM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15 order by ib.LAST_UPDATED DESC";
            }
            else{
                queryString="SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                "FROM SOA_EAIOWNER.Interface_buffer ib  where ib.INTERFACE_ID ='TOMOM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15 and ib.REFERENCE_ID='"+referenceId+"' order by ib.LAST_UPDATED DESC";
            }
            stmt = conn.createStatement();
            rset = stmt.executeQuery(queryString);
            String errorMessage="";
            while (rset.next()) {
                StruckOrdersSiebelToTOMBean struckOrdersSiebelToTOMBean = new StruckOrdersSiebelToTOMBean();
                struckOrdersSiebelToTOMBean.setInterfaceId(rset.getString(1));
                struckOrdersSiebelToTOMBean.setCreatedBy(rset.getString(2));
                struckOrdersSiebelToTOMBean.setSiebelOrders(rset.getString(3));
                struckOrdersSiebelToTOMBean.setLastModified(rset.getString(4));
                //struckOrdersSiebelToTOMBean.setErrorMessage(rset.getString(5));   
                 if(rset.getString(5)==null)
                 {
                     struckOrdersSiebelToTOMBean.setErrorMessage(errorMessage);
                 }
                 else {
                     struckOrdersSiebelToTOMBean.setErrorMessage(rset.getString(5));
                 }
                struckOrdersSiebelToTOMBean.setOriginatingSystem(originatingSystem);  
                struckOrdersSiebelToTOMBean.setResolvingSystem(originatingSystem); 
                struckOrdersSiebelToTOMBeanList.add(struckOrdersSiebelToTOMBean);
            }


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
        
        return struckOrdersSiebelToTOMBeanList;
        
    }
    
    public ArrayList<StruckOrdersSiebelToCPFGBean> getStruckOrdersSiebelToCPFG(String referenceId) {
    
         ArrayList<StruckOrdersSiebelToCPFGBean> struckOrdersSiebelToCPFGBeanList=new ArrayList<StruckOrdersSiebelToCPFGBean>();
         Connection conn = null;
         Statement stmt = null;
         ResultSet rset = null;
         String queryString="";
         try {
             String originatingSystem="Siebel";
             conn = DBDatasource.getConnection("eai/ds/EAIReference");
             if(referenceId==null){
             //queryString="SELECT ib.id INTERFACE_ID ,ofl.order_line_id,ofl.permissioning_status,\n" + 
             //"ofl.siebelcontactrowid as Siebel_Contact,ib.reference_id as EFR_ID, ib.error_message,ib.state,\n" + 
             //"ib.created_by,ofl.reqt_first_update_date,ib.updated_by,ofl.resp_last_modified_date FROM \n" + 
             //"SOA_EAIOWNER.orderfulfilment ofl , SOA_EAIOWNER.interface_buffer ib\n" + 
             //"WHERE ib.interface_id='CPFGEF' and ofl.resp_last_modified_date > sysdate-3 \n" + 
             //"and ofl.electronicfulfil_req_id = ib.reference_id order by ib.updated_by DESC";
             }
             else{
                 queryString="SELECT ib.id INTERFACE_ID ,ofl.order_line_id,ofl.order_id,ofl.permissioning_status,\n" + 
             "ofl.siebelcontactrowid as Siebel_Contact,ib.reference_id as EFR_ID, ib.error_message,ib.state,\n" + 
             "ib.created_by,ofl.reqt_first_update_date,ib.updated_by,ofl.resp_last_modified_date FROM \n" + 
             "SOA_EAIOWNER.orderfulfilment ofl , SOA_EAIOWNER.interface_buffer ib\n" + 
             "WHERE ib.interface_id='CPFGEF' and ofl.order_id='" +referenceId+"' and ofl.electronicfulfil_req_id = ib.reference_id order by ib.updated_by DESC";
             }

             stmt = conn.createStatement();
             rset = stmt.executeQuery(queryString);
             String errorMessage="";
             while (rset.next()) {
                 StruckOrdersSiebelToCPFGBean struckOrdersSiebelToCPFGBean = new StruckOrdersSiebelToCPFGBean();
                 struckOrdersSiebelToCPFGBean.setInterfaceId(rset.getString(1));
                 struckOrdersSiebelToCPFGBean.setOrderNumber(rset.getString(3));
                 struckOrdersSiebelToCPFGBean.setOrderlineid(rset.getString(2));
                 struckOrdersSiebelToCPFGBean.setPermissioningstatus(rset.getString(4));
                 struckOrdersSiebelToCPFGBean.setSiebelContact(rset.getString(5));
                 struckOrdersSiebelToCPFGBean.setEfrId(rset.getString(6));
                 //struckOrdersSiebelToCPFGBean.setErrorMessage(rset.getString(7));  
                  if(rset.getString(7)==null)
                  {
                      struckOrdersSiebelToCPFGBean.setErrorMessage(errorMessage);
                  }
                  else {
                      struckOrdersSiebelToCPFGBean.setErrorMessage(rset.getString(7));
                  }
                 struckOrdersSiebelToCPFGBean.setOriginatingSystem(originatingSystem);  
                 struckOrdersSiebelToCPFGBean.setResolvingSystem(originatingSystem); 
                 struckOrdersSiebelToCPFGBean.setState(rset.getString(8));
                 struckOrdersSiebelToCPFGBean.setCreatedBy(rset.getString(9));
                 struckOrdersSiebelToCPFGBean.setReqfirstupdate(rset.getString(10));
                 struckOrdersSiebelToCPFGBean.setUpdatedBy(rset.getString(11));
                 struckOrdersSiebelToCPFGBean.setLastModified(rset.getString(12));
                 struckOrdersSiebelToCPFGBeanList.add(struckOrdersSiebelToCPFGBean);
             }


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
         
         return struckOrdersSiebelToCPFGBeanList;
         
     }
    public ArrayList<StruckOrdersTOMToSiebelBean>   getStruckOrdersTOMToSiebel() {
          ArrayList<StruckOrdersTOMToSiebelBean> struckOrdersTOMToSiebelBeanList=new ArrayList<StruckOrdersTOMToSiebelBean>();
          Connection conn = null;
          Statement stmt = null;
          ResultSet rset = null;
          try {
              String originatingSystem="TOM";
              conn = DBDatasource.getConnection("eai/DS/EAIXRef");
              String queryString = "SELECT CI.COMPONENT_NAME as PROCESS_NAME, CI.CIKEY as instance_id, substr(title , instr(title, ':',1,1)+2,\n" + 
                                  "(instr(title,';',1,1)-(instr(title, ':',1,1)+2)))  as TRUST_ACCOUNT, to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss')  as MODIFY_DATE \n" + 
                                   ", BVSV.varchar2_value as ERROR_MESSAGE FROM soa_soainfra.CUBE_INSTANCE CI , soa_soainfra.VARIABLE_SENSOR_VALUES BVSV \n" + 
                                  "WHERE CI.COMPONENT_NAME = 'CCRMAM_PropagateTRUSTAccount'  AND CI.STATE = 5 \n" + 
                                  "AND regexp_like(CI.TITLE,'SBL-AP-Flt'||'$') AND CI.CIKEY = BVSV.process_instance_id \n" + 
                                  "and CI.modify_date>sysdate-15 AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate' order by to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') DESC\n";

              stmt = conn.createStatement();
              rset = stmt.executeQuery(queryString);
              String errorMessage="";
              while (rset.next()) {
                  StruckOrdersTOMToSiebelBean struckOrdersTOMToSiebelBean = new StruckOrdersTOMToSiebelBean();
                  struckOrdersTOMToSiebelBean.setProcessName(rset.getString(1));
                  struckOrdersTOMToSiebelBean.setInstanceId(rset.getString(2));
                  struckOrdersTOMToSiebelBean.setTrustAccount(rset.getString(3));
                  struckOrdersTOMToSiebelBean.setModifiedDate(rset.getString(4));    
                  //struckOrdersTOMToSiebelBean.setErrorMessage(rset.getString(5));
                   if(rset.getString(5)==null)
                   {
                       struckOrdersTOMToSiebelBean.setErrorMessage(errorMessage);
                   }
                   else {
                       struckOrdersTOMToSiebelBean.setErrorMessage(rset.getString(5));
                   }
                  struckOrdersTOMToSiebelBean.setOriginatingSystem(originatingSystem);
                  struckOrdersTOMToSiebelBean.setResolvingSystem(originatingSystem);
                  struckOrdersTOMToSiebelBeanList.add(struckOrdersTOMToSiebelBean);
              }


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
          return struckOrdersTOMToSiebelBeanList;
      }
    public ArrayList<StruckOrdersCPFGToSiebelBean>   getStruckOrdersCPFGToSiebel() {
          ArrayList<StruckOrdersCPFGToSiebelBean> struckOrdersCPFGToSiebelBeannList=new ArrayList<StruckOrdersCPFGToSiebelBean>();
          Connection conn = null;
          Statement stmt = null;
          ResultSet rset = null;
          try {
              String originatingSystem="CPFG";
              conn = DBDatasource.getConnection("eai/DS/EAIXRef");
              String queryString = "SELECT CI.COMPONENT_NAME as PROCESS_NAME, CI.CIKEY as instance_id, substr(title , instr(title, ':',1,1)+2,\n" + 
                                  "(instr(title,';',1,1)-(instr(title, ':',1,1)+2)))  as TRUST_ACCOUNT, to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss')  as MODIFY_DATE \n" + 
                                   ", BVSV.varchar2_value as ERROR_MESSAGE FROM soa_soainfra.CUBE_INSTANCE CI , soa_soainfra.VARIABLE_SENSOR_VALUES BVSV \n" + 
                                  "WHERE CI.COMPONENT_NAME = 'CCRMAM_PropagateTRUSTAccount'  AND CI.STATE = 5 \n" + 
                                  "AND regexp_like(CI.TITLE,'SBL-AP-Flt'||'$') AND CI.CIKEY = BVSV.process_instance_id \n" + 
                                  "and CI.modify_date>sysdate-15 AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate' order by to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') DESC\n";

              stmt = conn.createStatement();
              rset = stmt.executeQuery(queryString);
              String errorMessage="";
              while (rset.next()) {
                  StruckOrdersCPFGToSiebelBean struckOrdersCPFGToSiebelBean = new StruckOrdersCPFGToSiebelBean();
                  struckOrdersCPFGToSiebelBean.setProcessName(rset.getString(1));
                  struckOrdersCPFGToSiebelBean.setInstanceId(rset.getString(2));
                  struckOrdersCPFGToSiebelBean.setTrustAccount(rset.getString(3));
                  struckOrdersCPFGToSiebelBean.setModifiedDate(rset.getString(4));    
                  //struckOrdersCPFGToSiebelBean.setErrorMessage(rset.getString(5));
                   if(rset.getString(5)==null)
                   {
                       struckOrdersCPFGToSiebelBean.setErrorMessage(errorMessage);
                   }
                   else {
                       struckOrdersCPFGToSiebelBean.setErrorMessage(rset.getString(5));
                   }
                  struckOrdersCPFGToSiebelBean.setOriginatingSystem(originatingSystem);
                  struckOrdersCPFGToSiebelBean.setResolvingSystem(originatingSystem);
                  struckOrdersCPFGToSiebelBeannList.add(struckOrdersCPFGToSiebelBean);
              }


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
          return struckOrdersCPFGToSiebelBeannList;
      }
	  /*SAP*/
	public ArrayList<StruckOrdersSiebelToSAPBean> getStruckOrdersSiebelToSAP(String referenceId) {
    
         ArrayList<StruckOrdersSiebelToSAPBean> struckOrdersSiebelToSAPBeanList=new ArrayList<StruckOrdersSiebelToSAPBean>();
         Connection conn = null;
         Statement stmt = null;
         ResultSet rset = null;
         String queryString="";
         try {
             String originatingSystem="Siebel";
             conn = DBDatasource.getConnection("eai/ds/EAIReference");
             if(referenceId==null){
             //queryString="SELECT ib.id INTERFACE_ID ,ofl.order_line_id,ofl.permissioning_status,\n" + 
             //"ofl.siebelcontactrowid as Siebel_Contact,ib.reference_id as EFR_ID, ib.error_message,ib.state,\n" + 
             //"ib.created_by,ofl.reqt_first_update_date,ib.updated_by,ofl.resp_last_modified_date FROM \n" + 
             //"SOA_EAIOWNER.orderfulfilment ofl , SOA_EAIOWNER.interface_buffer ib\n" + 
             //"WHERE ib.interface_id='SAPOM' and ofl.resp_last_modified_date > sysdate-3 \n" + 
             //"and ofl.electronicfulfil_req_id = ib.reference_id order by ib.updated_by DESC";
             }
             else{
              //   queryString="SELECT ib.id INTERFACE_ID ,ofl.order_line_id,ofl.order_id,ofl.permissioning_status,\n" + 
             //"ofl.siebelcontactrowid as Siebel_Contact,ib.reference_id as EFR_ID, ib.error_message,ib.state,\n" + 
             //"ib.created_by,ofl.reqt_first_update_date,ib.updated_by,ofl.resp_last_modified_date FROM \n" + 
             //"SOA_EAIOWNER.orderfulfilment ofl , SOA_EAIOWNER.interface_buffer ib\n" + 
             //"WHERE ib.interface_id='SAPOM' and ofl.order_id='" +referenceId+"' and ofl.electronicfulfil_req_id = ib.reference_id order by //ib.updated_by DESC";
			 
               queryString="Select ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
               "FROM SOA_EAIOWNER.Interface_buffer ib  where ib.INTERFACE_ID ='SAPOM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 and ib.REFERENCE_ID='"+referenceId+"' ORDER BY  to_char( ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  DESC";
             }

             stmt = conn.createStatement();
             rset = stmt.executeQuery(queryString);
             String errorMessage="";
             while (rset.next()) {
                 StruckOrdersSiebelToSAPBean struckOrdersSiebelToSAPBean = new StruckOrdersSiebelToSAPBean();
                 struckOrdersSiebelToSAPBean.setInterfaceId(rset.getString(1));
                 struckOrdersSiebelToSAPBean.setOrderNumber(rset.getString(3));
                 struckOrdersSiebelToSAPBean.setOrderlineid(rset.getString(2));
                 struckOrdersSiebelToSAPBean.setPermissioningstatus(rset.getString(4));
                 struckOrdersSiebelToSAPBean.setSiebelContact(rset.getString(5));
                 struckOrdersSiebelToSAPBean.setEfrId(rset.getString(6));
                 //struckOrdersSiebelToSAPBean.setErrorMessage(rset.getString(7));
                  if(rset.getString(7)==null)
                  {
                      struckOrdersSiebelToSAPBean.setErrorMessage(errorMessage);
                  }
                  else {
                      struckOrdersSiebelToSAPBean.setErrorMessage(rset.getString(7));
                  }
                 struckOrdersSiebelToSAPBean.setOriginatingSystem(originatingSystem);  
                 struckOrdersSiebelToSAPBean.setResolvingSystem(originatingSystem); 
                 struckOrdersSiebelToSAPBean.setState(rset.getString(8));
                 struckOrdersSiebelToSAPBean.setCreatedBy(rset.getString(9));
                 struckOrdersSiebelToSAPBean.setReqfirstupdate(rset.getString(10));
                 struckOrdersSiebelToSAPBean.setUpdatedBy(rset.getString(11));
                 struckOrdersSiebelToSAPBean.setLastModified(rset.getString(12));
                 struckOrdersSiebelToSAPBeanList.add(struckOrdersSiebelToSAPBean);
             }


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
         
         return struckOrdersSiebelToSAPBeanList;
         
     }
	   /*SEA*/
	public ArrayList<StruckOrdersSiebelToSEABean> getStruckOrdersSiebelToSEA(String referenceId) {
    
         ArrayList<StruckOrdersSiebelToSEABean> struckOrdersSiebelToSEABeanList=new ArrayList<StruckOrdersSiebelToSEABean>();
         Connection conn = null;
         Statement stmt = null;
         ResultSet rset = null;
         String queryString="";
         try {
             String originatingSystem="Siebel";
             conn = DBDatasource.getConnection("eai/ds/EAIReference");
             if(referenceId==null){
             //queryString="SELECT ib.id INTERFACE_ID ,ofl.order_line_id,ofl.permissioning_status,\n" + 
             //"ofl.siebelcontactrowid as Siebel_Contact,ib.reference_id as EFR_ID, ib.error_message,ib.state,\n" + 
             //"ib.created_by,ofl.reqt_first_update_date,ib.updated_by,ofl.resp_last_modified_date FROM \n" + 
             //"SOA_EAIOWNER.orderfulfilment ofl , SOA_EAIOWNER.interface_buffer ib\n" + 
             //"WHERE ib.interface_id='ATHOM' and ofl.resp_last_modified_date > sysdate-3 \n" + 
             //"and ofl.electronicfulfil_req_id = ib.reference_id order by ib.updated_by DESC";
             }
             else{
                 //queryString="SELECT ib.id INTERFACE_ID ,ofl.order_line_id,ofl.order_id,ofl.permissioning_status,\n" + 
             //"ofl.siebelcontactrowid as Siebel_Contact,ib.reference_id as EFR_ID, ib.error_message,ib.state,\n" + 
             //"ib.created_by,ofl.reqt_first_update_date,ib.updated_by,ofl.resp_last_modified_date FROM \n" + 
             //"SOA_EAIOWNER.orderfulfilment ofl , SOA_EAIOWNER.interface_buffer ib\n" + 
             //"WHERE ib.interface_id='ATHOM' and ofl.order_id='" +referenceId+"' and ofl.electronicfulfil_req_id = ib.reference_id order by //ib.updated_by DESC";
			 
			 queryString="Select ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                      "FROM SOA_EAIOWNER.Interface_buffer ib  where ib.INTERFACE_ID ='ATHOM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 and ib.REFERENCE_ID='"+referenceId+"' ORDER BY  to_char( ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  DESC";
             }

             stmt = conn.createStatement();
             rset = stmt.executeQuery(queryString);
             String errorMessage="";
             while (rset.next()) {
                 StruckOrdersSiebelToSEABean struckOrdersSiebelToSEABean = new StruckOrdersSiebelToSEABean();
                 struckOrdersSiebelToSEABean.setInterfaceId(rset.getString(1));
                 struckOrdersSiebelToSEABean.setOrderNumber(rset.getString(3));
                 struckOrdersSiebelToSEABean.setOrderlineid(rset.getString(2));
                 struckOrdersSiebelToSEABean.setPermissioningstatus(rset.getString(4));
                 struckOrdersSiebelToSEABean.setSiebelContact(rset.getString(5));
                 struckOrdersSiebelToSEABean.setEfrId(rset.getString(6));
                 //struckOrdersSiebelToSEABean.setErrorMessage(rset.getString(7)); 
                  if(rset.getString(7)==null)
                  {
                      struckOrdersSiebelToSEABean.setErrorMessage(errorMessage);
                  }
                  else {
                      struckOrdersSiebelToSEABean.setErrorMessage(rset.getString(7));
                  }
                 struckOrdersSiebelToSEABean.setOriginatingSystem(originatingSystem);  
                 struckOrdersSiebelToSEABean.setResolvingSystem(originatingSystem); 
                 struckOrdersSiebelToSEABean.setState(rset.getString(8));
                 struckOrdersSiebelToSEABean.setCreatedBy(rset.getString(9));
                 struckOrdersSiebelToSEABean.setReqfirstupdate(rset.getString(10));
                 struckOrdersSiebelToSEABean.setUpdatedBy(rset.getString(11));
                 struckOrdersSiebelToSEABean.setLastModified(rset.getString(12));
                 struckOrdersSiebelToSEABeanList.add(struckOrdersSiebelToSEABean);
             }


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
         
         return struckOrdersSiebelToSEABeanList;
         
     }
  public ArrayList<StruckOrdersSiebelToELMBean> getStruckOrdersSiebelToELM(String referenceId) {
    
         ArrayList<StruckOrdersSiebelToELMBean> struckOrdersSiebelToELMBeanList=new ArrayList<StruckOrdersSiebelToELMBean>();
         Connection conn = null;
         Statement stmt = null;
         ResultSet rset = null;
         String queryString="";
         try {
             String originatingSystem="Siebel";
             conn = DBDatasource.getConnection("eai/ds/EAIReference");
             if(referenceId==null){
             queryString="Select ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                                   "FROM SOA_EAIOWNER.Interface_buffer ib  where ib.INTERFACE_ID ='ELMOM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 ORDER BY  to_char( ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  DESC";
             }
             else{
                 
       
       queryString="Select ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                      "FROM SOA_EAIOWNER.Interface_buffer ib  where ib.INTERFACE_ID ='ELMOM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 and ib.REFERENCE_ID='"+referenceId+"' ORDER BY  to_char( ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  DESC";
             }

             stmt = conn.createStatement();
             rset = stmt.executeQuery(queryString);
             String errorMessage="";
             while (rset.next()) {
                 StruckOrdersSiebelToELMBean struckOrdersSiebelToELMBean = new StruckOrdersSiebelToELMBean();
                 struckOrdersSiebelToELMBean.setInterfaceId(rset.getString(1));
                 struckOrdersSiebelToELMBean.setCreatedBy(rset.getString(2));
                 struckOrdersSiebelToELMBean.setOrderNumber(rset.getString(3));
                 struckOrdersSiebelToELMBean.setLastModified(rset.getString(4));
                  if(rset.getString(5)==null)
                  {
                      struckOrdersSiebelToELMBean.setErrorMessage(errorMessage);
                  }
                  else {
                      struckOrdersSiebelToELMBean.setErrorMessage(rset.getString(5));
                  }
                 struckOrdersSiebelToELMBean.setState(rset.getString(6));
                 struckOrdersSiebelToELMBean.setUpdatedBy(rset.getString(7));
                 struckOrdersSiebelToELMBean.setOriginatingSystem(originatingSystem);  
                 struckOrdersSiebelToELMBean.setResolvingSystem(originatingSystem); 
                 struckOrdersSiebelToELMBeanList.add(struckOrdersSiebelToELMBean);
             }


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
         
         return struckOrdersSiebelToELMBeanList;
         
     }
}
