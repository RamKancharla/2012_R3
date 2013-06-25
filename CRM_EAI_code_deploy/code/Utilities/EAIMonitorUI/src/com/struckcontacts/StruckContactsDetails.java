 /*************************************************************************
 * Module                EAIMoniotrUI 
 *                       
 * File                  StruckAContactsDetails.java
 * Type                  Java File
 * Description           List outs the Contacts Stuck when sent from seibel to end systems.
 *
 * Change History
 * Version Date    Author              Description Of Change
 * ========  ========  ===========         ===============================
 *  0.01   04/03/11  Raghu Vasireddy      Added Siebel to SAP flow of CM
 * ========  ========  ===========     ===============================
 * 
 *************************************************************************/

 package com.struckcontacts;

 import com.database.DBDatasource;

 import com.struckaccounts.StruckAccountsCPFGToSiebelBean;
 import com.struckaccounts.StruckAccountsTOMToSiebelBean;

 import com.struckoppties.StruckOpptiesTrustToSiebelBean;

 import java.sql.Connection;
 import java.sql.ResultSet;
 import java.sql.Statement;

 import java.util.ArrayList;

 public class StruckContactsDetails {
     public StruckContactsDetails() {
     }

    public ArrayList<StruckContactsSiebelToTOMBean> getStruckContactsSiebelToTOM(String referenceId) {

         ArrayList<StruckContactsSiebelToTOMBean> struckContactsSiebelToTOMBeanList=new ArrayList<StruckContactsSiebelToTOMBean>();
         Connection conn = null;
         Statement stmt = null;
         ResultSet rset = null;
         String queryString="";
         try {
             String originatingSystem="Siebel";
             conn = DBDatasource.getConnection("eai/ds/EAIReference");
             if(referenceId==null){
             queryString="SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
              "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE  ib.INTERFACE_ID ='TOMCM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15\n" + 
              "ORDER BY ib.LAST_UPDATED desc\n";
             }
             else{
                 queryString="SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by \n" + 
                  "FROM SOA_EAIOWNER.Interface_buffer ib   WHERE  ib.INTERFACE_ID ='TOMCM' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15 and ib.reference_id='"+referenceId+"' ORDER BY ib.LAST_UPDATED desc";
             }

             stmt = conn.createStatement();
             rset = stmt.executeQuery(queryString);
             String errorMessage="";
             while (rset.next()) {
                 StruckContactsSiebelToTOMBean struckContactsSiebelToTOMBean = new StruckContactsSiebelToTOMBean();
                 struckContactsSiebelToTOMBean.setInterfaceId(rset.getString(1));
                 struckContactsSiebelToTOMBean.setCreatedBy(rset.getString(2));
                 struckContactsSiebelToTOMBean.setSiebelContacts(rset.getString(3));
                 struckContactsSiebelToTOMBean.setLastModified(rset.getString(4));
                 //struckContactsSiebelToTOMBean.setErrorMessage(rset.getString(5));
                  if(rset.getString(5)==null)
                  {
                      struckContactsSiebelToTOMBean.setErrorMessage(errorMessage);
                  }
                  else {
                      struckContactsSiebelToTOMBean.setErrorMessage(rset.getString(5));
                  }
                 struckContactsSiebelToTOMBean.setOriginatingSystem(originatingSystem);
                 struckContactsSiebelToTOMBean.setResolvingSystem(originatingSystem);
                 struckContactsSiebelToTOMBean.setState(rset.getString(6));
                 struckContactsSiebelToTOMBean.setUpdatedBy(rset.getString(7));
                 struckContactsSiebelToTOMBeanList.add(struckContactsSiebelToTOMBean);
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

         return struckContactsSiebelToTOMBeanList;

     }

     public ArrayList<StruckContactsSiebelToCPFGBean> getStruckContactsSiebelToCPFG(String referenceId) {

          ArrayList<StruckContactsSiebelToCPFGBean> struckContactsSiebelToCPFGBeanList=new ArrayList<StruckContactsSiebelToCPFGBean>();
          Connection conn = null;
          Statement stmt = null;
          ResultSet rset = null;
          String queryString="";
          try {
              String originatingSystem="Siebel";
              conn = DBDatasource.getConnection("eai/ds/EAIReference");
              if(referenceId==null){
              queryString="SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
              "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='CPFGCM' \n" + 
              "and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 \n" + 
              "order by ib.LAST_UPDATED desc\n";
              }
              else{
                  queryString="SELECT ic.ID INTERFACE_ID,ic.is_available,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS,ib.LAST_UPDATED LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by \n" + 
                  "FROM SOA_EAIOWNER.Interface_buffer ib join SOA_EAIOWNER.interface_config ic on ic.id=ib.interface_id WHERE ib.INTERFACE_ID ='CPFGCM' \n" + 
                  "and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 \n" + 
                  " and ib.REFERENCE_ID='"+referenceId+"' order by ib.LAST_UPDATED desc\n";
              }

              stmt = conn.createStatement();
              rset = stmt.executeQuery(queryString);
              String errorMessage="";
              while (rset.next()) {
                  StruckContactsSiebelToCPFGBean struckContactsSiebelToCPFGBean = new StruckContactsSiebelToCPFGBean();
                  struckContactsSiebelToCPFGBean.setInterfaceId(rset.getString(1));
                  struckContactsSiebelToCPFGBean.setCreatedBy(rset.getString(2));
                  struckContactsSiebelToCPFGBean.setSiebelContacts(rset.getString(3));
                  struckContactsSiebelToCPFGBean.setLastModified(rset.getString(4));
                  //struckContactsSiebelToCPFGBean.setErrorMessage(rset.getString(5));
                   if(rset.getString(5)==null)
                   {
                       struckContactsSiebelToCPFGBean.setErrorMessage(errorMessage);
                   }
                   else {
                       struckContactsSiebelToCPFGBean.setErrorMessage(rset.getString(5));
                   }
                  struckContactsSiebelToCPFGBean.setOriginatingSystem(originatingSystem);
                  struckContactsSiebelToCPFGBean.setResolvingSystem(originatingSystem);
                  struckContactsSiebelToCPFGBean.setState(rset.getString(6));
                  struckContactsSiebelToCPFGBean.setUpdatedBy(rset.getString(7));
                  struckContactsSiebelToCPFGBeanList.add(struckContactsSiebelToCPFGBean);
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

          return struckContactsSiebelToCPFGBeanList;

      }
     public ArrayList<StruckContactsTOMToSiebelBean>   getStruckContactsTOMToSiebel() {
           ArrayList<StruckContactsTOMToSiebelBean> struckContactsTOMToSiebelBeanList=new ArrayList<StruckContactsTOMToSiebelBean>();
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
                                   "and CI.modify_date>sysdate-15 AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate' order by to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') DESC\n";

               stmt = conn.createStatement();
               rset = stmt.executeQuery(queryString);
               String errorMessage="";
               while (rset.next()) {
                   StruckContactsTOMToSiebelBean struckContactsTOMToSiebelBean = new StruckContactsTOMToSiebelBean();
                   struckContactsTOMToSiebelBean.setProcessName(rset.getString(1));
                   struckContactsTOMToSiebelBean.setInstanceId(rset.getString(2));
                   struckContactsTOMToSiebelBean.setTrustAccount(rset.getString(3));
                   struckContactsTOMToSiebelBean.setModifiedDate(rset.getString(4));
                   //struckContactsTOMToSiebelBean.setErrorMessage(rset.getString(5));
                    if(rset.getString(5)==null)
                    {
                        struckContactsTOMToSiebelBean.setErrorMessage(errorMessage);
                    }
                    else {
                        struckContactsTOMToSiebelBean.setErrorMessage(rset.getString(5));
                    }
                   struckContactsTOMToSiebelBean.setOriginatingSystem(originatingSystem);
                   struckContactsTOMToSiebelBean.setResolvingSystem(originatingSystem);
                   struckContactsTOMToSiebelBeanList.add(struckContactsTOMToSiebelBean);
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
           return struckContactsTOMToSiebelBeanList;
       }
     public ArrayList<StruckContactsCPFGToSiebelBean>   getStruckContactsCPFGToSiebel() {
           ArrayList<StruckContactsCPFGToSiebelBean> struckContactsCPFGToSiebelBeanList=new ArrayList<StruckContactsCPFGToSiebelBean>();
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
                                   "and CI.modify_date>sysdate-15 AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTAccountUpdate' ORDER BY to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') DESCs\n";

               stmt = conn.createStatement();
               rset = stmt.executeQuery(queryString);
               String errorMessage="";
               while (rset.next()) {
                   StruckContactsCPFGToSiebelBean struckContactsCPFGToSiebelBean = new StruckContactsCPFGToSiebelBean();
                   struckContactsCPFGToSiebelBean.setProcessName(rset.getString(1));
                   struckContactsCPFGToSiebelBean.setInstanceId(rset.getString(2));
                   struckContactsCPFGToSiebelBean.setTrustAccount(rset.getString(3));
                   struckContactsCPFGToSiebelBean.setModifiedDate(rset.getString(4));
                   //struckContactsCPFGToSiebelBean.setErrorMessage(rset.getString(5));
                    if(rset.getString(5)==null)
                    {
                        struckContactsCPFGToSiebelBean.setErrorMessage(errorMessage);
                    }
                    else {
                        struckContactsCPFGToSiebelBean.setErrorMessage(rset.getString(5));
                    }
                   struckContactsCPFGToSiebelBean.setOriginatingSystem(originatingSystem);
                   struckContactsCPFGToSiebelBean.setResolvingSystem(originatingSystem);
                   struckContactsCPFGToSiebelBeanList.add(struckContactsCPFGToSiebelBean);
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
           return struckContactsCPFGToSiebelBeanList;
       }
   
   /*SAP*/
   public ArrayList<StruckContactsSiebelToSAPBean> getStruckContactsSiebelToSAP(String referenceId) {

          ArrayList<StruckContactsSiebelToSAPBean> struckContactsSiebelToSAPBeanList=new ArrayList<StruckContactsSiebelToSAPBean>();
          Connection conn = null;
          Statement stmt = null;
          ResultSet rset = null;
          String queryString="";
          try {
              String originatingSystem="Siebel";
              conn = DBDatasource.getConnection("eai/ds/EAIReference");
              if(referenceId==null){
              queryString="SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
              "FROM SOA_EAIOWNER.Interface_buffer ib  WHERE ib.INTERFACE_ID ='SAPCM' \n" + 
              "and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 \n" + 
              "order by ib.LAST_UPDATED desc\n";
              }
              else{
                  queryString="SELECT ic.ID INTERFACE_ID,ic.is_available,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS,ib.LAST_UPDATED LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by \n" + 
                  "FROM SOA_EAIOWNER.Interface_buffer ib join SOA_EAIOWNER.interface_config ic on ic.id=ib.interface_id WHERE ib.INTERFACE_ID ='SAPCM' \n" + 
                  "and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-3 \n" + 
                  " and ib.REFERENCE_ID='"+referenceId+"' order by ib.LAST_UPDATED desc\n";
              }

              stmt = conn.createStatement();
              rset = stmt.executeQuery(queryString);
              String errorMessage="";
              while (rset.next()) {
                  StruckContactsSiebelToSAPBean struckContactsSiebelToSAPBean = new StruckContactsSiebelToSAPBean();
                  struckContactsSiebelToSAPBean.setInterfaceId(rset.getString(1));
                  struckContactsSiebelToSAPBean.setCreatedBy(rset.getString(2));
                  struckContactsSiebelToSAPBean.setSiebelContacts(rset.getString(3));
                  struckContactsSiebelToSAPBean.setLastModified(rset.getString(4));
                  //struckContactsSiebelToSAPBean.setErrorMessage(rset.getString(5));
                   if(rset.getString(5)==null)
                   {
                       struckContactsSiebelToSAPBean.setErrorMessage(errorMessage);
                   }
                   else {
                       struckContactsSiebelToSAPBean.setErrorMessage(rset.getString(5));
                   }
                  struckContactsSiebelToSAPBean.setOriginatingSystem(originatingSystem);
                  struckContactsSiebelToSAPBean.setResolvingSystem(originatingSystem);
                  struckContactsSiebelToSAPBean.setState(rset.getString(6));
                  struckContactsSiebelToSAPBean.setUpdatedBy(rset.getString(7));
                  struckContactsSiebelToSAPBeanList.add(struckContactsSiebelToSAPBean);
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

          return struckContactsSiebelToSAPBeanList;

      }

 
 }
