
/*************************************************************************
* Module                EAIMoniotrUI 
*                       
* File                  StruckAccountsDetails.java
* Type                  Java File
* Description           List outs the accounts Stuck when sent from seibel to end systems.
*
* Change History
* Version	Date		Author              Description Of Change
* ========	========	===========         ===============================
*  0.01		04/03/11	Raghu Vasireddy      Added Siebel to SAP flow of AM
* ========	========	===========	    ===============================
* 
*************************************************************************/

package com.struckaccounts;

import com.database.DBDatasource;

import com.lockingsessions.LockingSessionsBean;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;

public class StruckAccountsDetails {
    public StruckAccountsDetails() {
    }
    
  public ArrayList<StruckAccountsSiebelToTrustBean>  getStruckAccountsSiebelToTrust(String referenceId) {
        ArrayList<StruckAccountsSiebelToTrustBean> struckAccountsSiebelToTrustBeanList = new ArrayList<StruckAccountsSiebelToTrustBean>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        String queryString="";
        try {
        
            String originatingSystem="Siebel";
            conn = DBDatasource.getConnection("eai/ds/EAIReference");
            if(referenceId==null){
            queryString = 
                "SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by \n" + 
                "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='SFDCAM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15\n" + 
                " ORDER BY to_char(ib.LAST_UPDATED ,'dd-Mon-yy hh24:mi:ss') DESC\n";
            }
            else{
                queryString = 
                "SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by\n" + 
                    "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='SFDCAM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15 and ib.REFERENCE_ID='"+referenceId+"' ORDER BY to_char(ib.LAST_UPDATED ,'dd-Mon-yy hh24:mi:ss') DESC";  
            }
            stmt = conn.createStatement();
            rset = stmt.executeQuery(queryString);
            String errorMessage="";
            while (rset.next()) {
                StruckAccountsSiebelToTrustBean struckAccountsSiebelToTrustBean = new StruckAccountsSiebelToTrustBean();
                struckAccountsSiebelToTrustBean.setInterfaceId(rset.getString(1));
                struckAccountsSiebelToTrustBean.setCreatedBy(rset.getString(2));
                struckAccountsSiebelToTrustBean.setSiebelAccounts(rset.getString(3));
                struckAccountsSiebelToTrustBean.setLastModified(rset.getString(4));
                //struckAccountsSiebelToTrustBean.setErrorMessage(rset.getString(5));     
                 if(rset.getString(5)==null)
                 {
                     struckAccountsSiebelToTrustBean.setErrorMessage(errorMessage);
                 }
                 else {
                     struckAccountsSiebelToTrustBean.setErrorMessage(rset.getString(5));
                 }
                struckAccountsSiebelToTrustBean.setOriginatingSystem(originatingSystem);
                struckAccountsSiebelToTrustBean.setResolvingSystem(originatingSystem);
                struckAccountsSiebelToTrustBeanList.add(struckAccountsSiebelToTrustBean);
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
        return struckAccountsSiebelToTrustBeanList;

    }
  
  
   
  public ArrayList<StruckAccountsTrustToSiebelBean>   getStruckAccountsTrustToSiebel(String trustAccount) {
        ArrayList<StruckAccountsTrustToSiebelBean> struckAccountsTrustToSiebelBeanList=new ArrayList<StruckAccountsTrustToSiebelBean>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        String queryString="";
        try {
            String originatingSystem="TRUST";
            conn = DBDatasource.getConnection("eai/DS/EAIXRef");
            if(trustAccount==null){
            queryString = "SELECT CI.COMPONENT_NAME as PROCESS_NAME, CI.CIKEY as instance_id, substr(title , instr(title, ':',1,1)+2,\n" + 
                                "(instr(title,';',1,1)-(instr(title, ':',1,1)+2)))  as TRUST_ACCOUNT, to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss')  as MODIFY_DATE \n" + 
                                 ", BVSV.varchar2_value as ERROR_MESSAGE FROM soa_soainfra.CUBE_INSTANCE CI , soa_soainfra.VARIABLE_SENSOR_VALUES BVSV \n" + 
                                "WHERE CI.COMPONENT_NAME = 'CCRMAM_PropagateTRUSTAccount' AND CI.STATE = 5 \n" + 
                                "AND regexp_like(CI.TITLE,'SBL-AP-Flt'||'$') AND CI.CIKEY = BVSV.process_instance_id \n" + 
                                "and CI.modify_date>sysdate-15 AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate' order by to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') DESC\n";
            }
            else{
                queryString = "SELECT CI.COMPONENT_NAME as PROCESS_NAME, CI.CIKEY as instance_id, substr(title , instr(title, ':',1,1)+2,\n" + 
                                    "(instr(title,';',1,1)-(instr(title, ':',1,1)+2)))  as TRUST_ACCOUNT, to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss')  as MODIFY_DATE \n" + 
                                     ", BVSV.varchar2_value as ERROR_MESSAGE FROM soa_soainfra.CUBE_INSTANCE CI , soa_soainfra.VARIABLE_SENSOR_VALUES BVSV \n" + 
                                    "WHERE CI.COMPONENT_NAME = 'CCRMAM_PropagateTRUSTAccount' AND CI.STATE = 5 \n" + 
                                    "AND regexp_like(CI.TITLE,'SBL-AP-Flt'||'$') AND CI.CIKEY = BVSV.process_instance_id \n" + 
                                    "and CI.modify_date>sysdate-15 AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate' and substr(title , instr(title, ':',1,1)+2,(instr(title,';',1,1)-(instr(title, ':',1,1)+2)))='"+trustAccount+"' order by to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') DESC\n";
            }

            stmt = conn.createStatement();
            rset = stmt.executeQuery(queryString);
            String errorMessage="";
            while (rset.next()) {
                StruckAccountsTrustToSiebelBean struckAccountsTrustToSiebelBean = new StruckAccountsTrustToSiebelBean();
                struckAccountsTrustToSiebelBean.setProcessName(rset.getString(1));
                struckAccountsTrustToSiebelBean.setInstanceId(rset.getString(2));
                struckAccountsTrustToSiebelBean.setTrustAccount(rset.getString(3));
                struckAccountsTrustToSiebelBean.setModifiedDate(rset.getString(4));    
                //struckAccountsTrustToSiebelBean.setErrorMessage(rset.getString(5));
                 if(rset.getString(5)==null)
                 {
                     struckAccountsTrustToSiebelBean.setErrorMessage(errorMessage);
                 }
                 else {
                     struckAccountsTrustToSiebelBean.setErrorMessage(rset.getString(5));
                 }
                struckAccountsTrustToSiebelBean.setOriginatingSystem(originatingSystem);
                struckAccountsTrustToSiebelBean.setResolvingSystem(originatingSystem);
                struckAccountsTrustToSiebelBeanList.add(struckAccountsTrustToSiebelBean);
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
        return struckAccountsTrustToSiebelBeanList;
    }
    
    
    public ArrayList<StruckAccountsSiebelToTOMBean>  getStruckAccountsSiebelToTOM(String referenceId) {
          ArrayList<StruckAccountsSiebelToTOMBean> struckAccountsSiebelToTOMBeanList = new ArrayList<StruckAccountsSiebelToTOMBean>();
          Connection conn = null;
          Statement stmt = null;
          ResultSet rset = null;
          String queryString="";
          try {
              String originatingSystem="Siebel";
              conn = DBDatasource.getConnection("eai/ds/EAIReference");
              if(referenceId==null){
              queryString ="SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                  "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='TOMAM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15\n" + 
                  " ORDER BY  to_char( ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  DESC\n";
              }
              else{
                  queryString ="SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                      "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='TOMAM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15 and ib.REFERENCE_ID='"+referenceId+"' ORDER BY  to_char( ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  DESC";
              }

              stmt = conn.createStatement();
              rset = stmt.executeQuery(queryString);
              String errorMessage="";
              while (rset.next()) {
                  StruckAccountsSiebelToTOMBean struckAccountsSiebelToTOMBean = new StruckAccountsSiebelToTOMBean();
                  struckAccountsSiebelToTOMBean.setInterfaceId(rset.getString(1));
                  struckAccountsSiebelToTOMBean.setCreatedBy(rset.getString(2));
                  struckAccountsSiebelToTOMBean.setSiebelAccounts(rset.getString(3));
                  struckAccountsSiebelToTOMBean.setLastModified(rset.getString(4));
                  //struckAccountsSiebelToTOMBean.setErrorMessage(rset.getString(5));
                  if(rset.getString(5)==null)
                  {
                      struckAccountsSiebelToTOMBean.setErrorMessage(errorMessage);
                  }
                  else {
                      struckAccountsSiebelToTOMBean.setErrorMessage(rset.getString(5));
                  }
                  struckAccountsSiebelToTOMBean.setOriginatingSystem(originatingSystem);
                  struckAccountsSiebelToTOMBean.setResolvingSystem(originatingSystem);
                  struckAccountsSiebelToTOMBeanList.add(struckAccountsSiebelToTOMBean);
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
          return struckAccountsSiebelToTOMBeanList;

      }
      
      
    public ArrayList<StruckAccountsSiebelToCPFGBean>  getStruckAccountsSiebelToCPFG(String referenceId) {
          ArrayList<StruckAccountsSiebelToCPFGBean> struckAccountsSiebelToCPFGBeanList = new ArrayList<StruckAccountsSiebelToCPFGBean>();
          Connection conn = null;
          Statement stmt = null;
          ResultSet rset = null;
          String queryString="";
          try {
              String originatingSystem="Siebel";
              conn = DBDatasource.getConnection("eai/ds/EAIReference");
              if(referenceId==null){
              queryString ="Select ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                  "FROM SOA_EAIOWNER.Interface_buffer ib  where ib.INTERFACE_ID ='CPFGAM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 ORDER BY  to_char( ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  DESC";
              }
              else{
                  queryString ="Select ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                      "FROM SOA_EAIOWNER.Interface_buffer ib  where ib.INTERFACE_ID ='CPFGAM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 and ib.REFERENCE_ID='"+referenceId+"' ORDER BY  to_char( ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  DESC";
              }

              stmt = conn.createStatement();
              rset = stmt.executeQuery(queryString);
              String errorMessage="";
              while (rset.next()) {
                  StruckAccountsSiebelToCPFGBean struckAccountsSiebelToCPFGBean = new StruckAccountsSiebelToCPFGBean();
                  struckAccountsSiebelToCPFGBean.setInterfaceId(rset.getString(1));
                  struckAccountsSiebelToCPFGBean.setCreatedBy(rset.getString(2));
                  struckAccountsSiebelToCPFGBean.setSiebelAccounts(rset.getString(3));
                  struckAccountsSiebelToCPFGBean.setLastModified(rset.getString(4));
                  //struckAccountsSiebelToCPFGBean.setErrorMessage(rset.getString(5));
                   if(rset.getString(5)==null)
                   {
                       struckAccountsSiebelToCPFGBean.setErrorMessage(errorMessage);
                   }
                   else {
                       struckAccountsSiebelToCPFGBean.setErrorMessage(rset.getString(5));
                   }
                  struckAccountsSiebelToCPFGBean.setOriginatingSystem(originatingSystem);
                  struckAccountsSiebelToCPFGBean.setResolvingSystem(originatingSystem);
                  struckAccountsSiebelToCPFGBeanList.add(struckAccountsSiebelToCPFGBean);
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
          return struckAccountsSiebelToCPFGBeanList;

      }
      
      
    public ArrayList<StruckAccountsTOMToSiebelBean>   getStruckAccountsTOMToSiebel() {
          ArrayList<StruckAccountsTOMToSiebelBean> struckAccountsTOMToSiebelBeanList=new ArrayList<StruckAccountsTOMToSiebelBean>();
          Connection conn = null;
          Statement stmt = null;
          ResultSet rset = null;
          try {
              String originatingSystem="TOM";
              conn = DBDatasource.getConnection("eai/DS/EAIXRef");
              String queryString = "SELECT CI.COMPONENT_NAME as PROCESS_NAME, CI.CIKEY as instance_id, substr(title , instr(title, ':',1,1)+2,\n" + 
                                  "(instr(title,';',1,1)-(instr(title, ':',1,1)+2)))  as TRUST_ACCOUNT, to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss')  as MODIFY_DATE \n" + 
                                   ", BVSV.varchar2_value as ERROR_MESSAGE FROM soa_soainfra.CUBE_INSTANCE CI , soa_soainfra.VARIABLE_SENSOR_VALUES BVSV \n" + 
                                  "WHERE CI.COMPONENT_NAME = 'CCRMAM_PropagateTRUSTAccount' AND CI.STATE = 5 \n" + 
                                  "AND regexp_like(CI.TITLE,'SBL-AP-Flt'||'$') AND CI.CIKEY = BVSV.process_instance_id \n" + 
                                  "and CI.modify_date>sysdate-15 AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate' ORDER BY  to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') DESC\n";

              stmt = conn.createStatement();
              rset = stmt.executeQuery(queryString);
              String errorMessage="";
              while (rset.next()) {
                  StruckAccountsTOMToSiebelBean struckAccountsTOMToSiebelBean = new StruckAccountsTOMToSiebelBean();
                  struckAccountsTOMToSiebelBean.setProcessName(rset.getString(1));
                  struckAccountsTOMToSiebelBean.setInstanceId(rset.getString(2));
                  struckAccountsTOMToSiebelBean.setTrustAccount(rset.getString(3));
                  struckAccountsTOMToSiebelBean.setModifiedDate(rset.getString(4));    
                  //struckAccountsTOMToSiebelBean.setErrorMessage(rset.getString(5));
                   if(rset.getString(5)==null)
                   {
                       struckAccountsTOMToSiebelBean.setErrorMessage(errorMessage);
                   }
                   else {
                       struckAccountsTOMToSiebelBean.setErrorMessage(rset.getString(5));
                   }
                  struckAccountsTOMToSiebelBean.setOriginatingSystem(originatingSystem);
                  struckAccountsTOMToSiebelBean.setResolvingSystem(originatingSystem);
                  struckAccountsTOMToSiebelBeanList.add(struckAccountsTOMToSiebelBean);
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
          return struckAccountsTOMToSiebelBeanList;
      }
      
      
    public ArrayList<StruckAccountsCPFGToSiebelBean>   getStruckAccountsCPFGToSiebel() {
          ArrayList<StruckAccountsCPFGToSiebelBean> struckAccountsCPFGToSiebelBeanList=new ArrayList<StruckAccountsCPFGToSiebelBean>();
          Connection conn = null;
          Statement stmt = null;
          ResultSet rset = null;
          try {
              String originatingSystem="CPFG";
              conn = DBDatasource.getConnection("eai/DS/EAIXRef");
              String queryString = "SELECT CI.COMPONENT_NAME as PROCESS_NAME, CI.CIKEY as instance_id, substr(title , instr(title, ':',1,1)+2,\n" + 
                                  "(instr(title,';',1,1)-(instr(title, ':',1,1)+2)))  as TRUST_ACCOUNT, to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss')  as MODIFY_DATE \n" + 
                                   ", BVSV.varchar2_value as ERROR_MESSAGE FROM soa_soainfra.CUBE_INSTANCE CI , soa_soainfra.VARIABLE_SENSOR_VALUES BVSV \n" + 
                                  "WHERE CI.COMPONENT_NAME = 'CCRMAM_PropagateTRUSTAccount' AND CI.STATE = 5 \n" + 
                                  "AND regexp_like(CI.TITLE,'SBL-AP-Flt'||'$') AND CI.CIKEY = BVSV.process_instance_id \n" + 
                                  "and CI.modify_date>sysdate-15 AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate' ORDER BY  to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') DESC\n";

              stmt = conn.createStatement();
              rset = stmt.executeQuery(queryString);
              String errorMessage="";
              while (rset.next()) {
                  StruckAccountsCPFGToSiebelBean struckAccountsCPFGToSiebelBean = new StruckAccountsCPFGToSiebelBean();
                  struckAccountsCPFGToSiebelBean.setProcessName(rset.getString(1));
                  struckAccountsCPFGToSiebelBean.setInstanceId(rset.getString(2));
                  struckAccountsCPFGToSiebelBean.setTrustAccount(rset.getString(3));
                  struckAccountsCPFGToSiebelBean.setModifiedDate(rset.getString(4));    
                  //struckAccountsCPFGToSiebelBean.setErrorMessage(rset.getString(5));
                   if(rset.getString(5)==null)
                   {
                       struckAccountsCPFGToSiebelBean.setErrorMessage(errorMessage);
                   }
                   else {
                       struckAccountsCPFGToSiebelBean.setErrorMessage(rset.getString(5));
                   }
                  struckAccountsCPFGToSiebelBean.setOriginatingSystem(originatingSystem);
                  struckAccountsCPFGToSiebelBean.setResolvingSystem(originatingSystem);
                  struckAccountsCPFGToSiebelBeanList.add(struckAccountsCPFGToSiebelBean);
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
          return struckAccountsCPFGToSiebelBeanList;
      }
	/*SAP*/
	public ArrayList<StruckAccountsSiebelToSAPBean>  getStruckAccountsSiebelToSAP(String referenceId) {
          ArrayList<StruckAccountsSiebelToSAPBean> struckAccountsSiebelToSAPBeanList = new ArrayList<StruckAccountsSiebelToSAPBean>();
          Connection conn = null;
          Statement stmt = null;
          ResultSet rset = null;
          String queryString="";
          try {
              String originatingSystem="Siebel";
              conn = DBDatasource.getConnection("eai/ds/EAIReference");
              if(referenceId==null){
              queryString ="Select ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                  "FROM SOA_EAIOWNER.Interface_buffer ib  where ib.INTERFACE_ID ='SAPAM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 ORDER BY  to_char( ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  DESC";
              }
              else{
                  queryString ="Select ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                      "FROM SOA_EAIOWNER.Interface_buffer ib  where ib.INTERFACE_ID ='SAPAM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 and ib.REFERENCE_ID='"+referenceId+"' ORDER BY  to_char( ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss')  DESC";
              }

              stmt = conn.createStatement();
              rset = stmt.executeQuery(queryString);
              String errorMessage="";
              while (rset.next()) {
                  StruckAccountsSiebelToSAPBean struckAccountsSiebelToSAPBean = new StruckAccountsSiebelToSAPBean();
                  struckAccountsSiebelToSAPBean.setInterfaceId(rset.getString(1));
                  struckAccountsSiebelToSAPBean.setCreatedBy(rset.getString(2));
                  struckAccountsSiebelToSAPBean.setSiebelAccounts(rset.getString(3));
                  struckAccountsSiebelToSAPBean.setLastModified(rset.getString(4));
                  //struckAccountsSiebelToSAPBean.setErrorMessage(null);
                  //struckAccountsSiebelToSAPBean.setErrorMessage(rset.getString(5));
                   if(rset.getString(5)==null)
                   {
                       struckAccountsSiebelToSAPBean.setErrorMessage(errorMessage);
                   }
                   else {
                       struckAccountsSiebelToSAPBean.setErrorMessage(rset.getString(5));
                   }
                  struckAccountsSiebelToSAPBean.setOriginatingSystem(originatingSystem);
                  struckAccountsSiebelToSAPBean.setResolvingSystem(originatingSystem);
                  struckAccountsSiebelToSAPBeanList.add(struckAccountsSiebelToSAPBean);
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
          return struckAccountsSiebelToSAPBeanList;

      }
  public ArrayList<StruckAccountsSiebelToELMBean>  getStruckAccountsSiebelToELM(String referenceId) {
        ArrayList<StruckAccountsSiebelToELMBean> struckAccountsSiebelToELMBeanList = new ArrayList<StruckAccountsSiebelToELMBean>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        String queryString="";
        try {
        
            String originatingSystem="Siebel";
            conn = DBDatasource.getConnection("eai/ds/EAIReference");
            if(referenceId==null){
            queryString = 
                "SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by \n" + 
                "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='ELMAM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15\n" + 
                " ORDER BY to_char(ib.LAST_UPDATED ,'dd-Mon-yy hh24:mi:ss') DESC\n";
            }
            else{
                queryString = 
                "SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by\n" + 
                    "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='ELMAM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15 and ib.REFERENCE_ID='"+referenceId+"' ORDER BY to_char(ib.LAST_UPDATED ,'dd-Mon-yy hh24:mi:ss') DESC";  
            }
            stmt = conn.createStatement();
            rset = stmt.executeQuery(queryString);
            String errorMessage="";
            while (rset.next()) {
                StruckAccountsSiebelToELMBean struckAccountsSiebelToELMBean = new StruckAccountsSiebelToELMBean();
                struckAccountsSiebelToELMBean.setInterfaceId(rset.getString(1));
                struckAccountsSiebelToELMBean.setCreatedBy(rset.getString(2));
                struckAccountsSiebelToELMBean.setSiebelAccounts(rset.getString(3));
                struckAccountsSiebelToELMBean.setLastModified(rset.getString(4));
                if(rset.getString(5)==null)
                 {
                     struckAccountsSiebelToELMBean.setErrorMessage(errorMessage);
                 }
                 else {
                     struckAccountsSiebelToELMBean.setErrorMessage(rset.getString(5));
                 }
                struckAccountsSiebelToELMBean.setOriginatingSystem(originatingSystem);
                struckAccountsSiebelToELMBean.setResolvingSystem(originatingSystem);
                struckAccountsSiebelToELMBean.setState(rset.getString(6));
                struckAccountsSiebelToELMBean.setUpdatedBy(rset.getString(7));
                struckAccountsSiebelToELMBeanList.add(struckAccountsSiebelToELMBean);
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
        return struckAccountsSiebelToELMBeanList;

    }
}
