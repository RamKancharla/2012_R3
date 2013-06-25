package com.struckoppties;

import com.database.DBDatasource;

import com.struckaccounts.StruckAccountsTrustToSiebelBean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;

public class StruckOpptiesDetails {
    public StruckOpptiesDetails() {
    }
    
    //private int iCurrPage=0;
    
  public ArrayList<StruckOpptiesSiebelToTrustBean>  getStruckOpptiesSiebelToTrust(String referenceId) {
  
        ArrayList<StruckOpptiesSiebelToTrustBean> struckOpptiesSiebelToTrust=new ArrayList<StruckOpptiesSiebelToTrustBean>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        String queryString="";
        try {
            String originatingSystem="Siebel";
            conn = DBDatasource.getConnection("eai/ds/EAIReference");
            if(referenceId==null){
            queryString = "SELECT ib.interface_id INTERFACE_ID,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS, to_char(ib.LAST_UPDATED,'dd-Mon-yy hh24:mi:ss') LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by  \n" + 
                "FROM SOA_EAIOWNER.Interface_buffer ib WHERE ib.INTERFACE_ID ='SFDCOP'  and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15 ORDER BY ib.LAST_UPDATED DESC";
            }
            else{
                queryString = "SELECT ic.ID INTERFACE_ID,ic.is_available,ib.created_by,ib.REFERENCE_ID as SIEBEL_CONTACTS,ib.LAST_UPDATED LAST_MODIFIED,ib.error_message,ib.state,ib.updated_by \n" + 
                                     "FROM SOA_EAIOWNER.Interface_buffer ib WHERE ib.INTERFACE_ID ='SFDCOP' and ib.state  in ('E','R','W') and ib.LAST_UPDATED > sysdate-15 \n" + 
                                     "ORDER BY ib.LAST_UPDATED DESC\n and ib.REFERENCE_ID='"+referenceId+"' ORDER BY ib.LAST_UPDATED DESC";
            }

            stmt = conn.createStatement();
            rset = stmt.executeQuery(queryString);
            while (rset.next()) {
                StruckOpptiesSiebelToTrustBean struckOpptiesSiebelToTrustBean = new StruckOpptiesSiebelToTrustBean();
                struckOpptiesSiebelToTrustBean.setInterfaceId(rset.getString(1));            
                struckOpptiesSiebelToTrustBean.setCreatedBy(rset.getString(2));
                struckOpptiesSiebelToTrustBean.setSiebelOppty(rset.getString(3));
                struckOpptiesSiebelToTrustBean.setLastmodified(rset.getString(4));
                struckOpptiesSiebelToTrustBean.setErrorMessage(rset.getString(5));
                struckOpptiesSiebelToTrustBean.setOriginatingSystem(originatingSystem);
                struckOpptiesSiebelToTrustBean.setResolvingSystem(originatingSystem);
                struckOpptiesSiebelToTrust.add(struckOpptiesSiebelToTrustBean);
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
        return struckOpptiesSiebelToTrust;
    }
    
  public ArrayList<StruckOpptiesTrustToSiebelBean>  getStruckOptiesTrustToSiebel(String trustOppty) {
        ArrayList<StruckOpptiesTrustToSiebelBean> struckOpptiesTrustToSiebel=new ArrayList<StruckOpptiesTrustToSiebelBean>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        String queryString="";
        try {
            String originatingSystem="TRUST";
            conn = DBDatasource.getConnection("eai/DS/EAIXRef");
            if(trustOppty==null){
            queryString = "SELECT  CI.COMPONENT_NAME  as PROCESS_NAME, CI.CIKEY as instance_id, substr(title , instr(title, ':',1,1)+2,\n" + 
                                "(instr(title,';',1,1)-(instr(title, ':',1,1)+2)))   as TRUST_OPPTY, to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss')  as MODIFY_DATE \n" + 
                                 ", BVSV.varchar2_value as ERROR_MESSAGE FROM soa_soainfra.CUBE_INSTANCE CI , soa_soainfra.VARIABLE_SENSOR_VALUES BVSV \n" + 
                                "WHERE CI.COMPONENT_NAME = 'CCRMOP_SubmitOpportunity' AND CI.STATE = 5 AND regexp_like(CI.TITLE,'SBL-OP-Flt' ||'$')   \n" + 
                                "AND CI.CIKEY = BVSV.process_instance_id and CI.modify_date>sysdate-1 AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTOpportunityUpdate' order by to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') DESC\n";
            }
            else{
                queryString = "SELECT  CI.COMPONENT_NAME  as PROCESS_NAME, CI.CIKEY as instance_id, substr(title , instr(title, ':',1,1)+2,\n" + 
                                    "(instr(title,';',1,1)-(instr(title, ':',1,1)+2)))   as TRUST_OPPTY, to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss')  as MODIFY_DATE \n" + 
                                     ", BVSV.varchar2_value as ERROR_MESSAGE FROM soa_soainfra.CUBE_INSTANCE CI , soa_soainfra.VARIABLE_SENSOR_VALUES BVSV \n" + 
                                    "WHERE CI.COMPONENT_NAME = 'CCRMOP_SubmitOpportunity' AND CI.STATE = 5 AND regexp_like(CI.TITLE,'SBL-OP-Flt' ||'$')   \n" + 
                                    "AND CI.CIKEY = BVSV.process_instance_id and CI.modify_date>sysdate-1 AND BVSV.SENSOR_NAME = 'ActSenrcvTRUSTOpportunityUpdate' and substr(title , instr(title, ':',1,1)+2,(instr(title,';',1,1)-(instr(title, ':',1,1)+2)))='"+trustOppty+"' order by to_char(CI.MODIFY_DATE,'dd-Mon-yy hh24:mi:ss') DESC \n";
            }

            stmt = conn.createStatement();
            rset = stmt.executeQuery(queryString);
            while (rset.next()) {
                StruckOpptiesTrustToSiebelBean struckOpptiesTrustToSiebelBean = new StruckOpptiesTrustToSiebelBean();
                struckOpptiesTrustToSiebelBean.setProcessName(rset.getString(1));
                struckOpptiesTrustToSiebelBean.setInstanceId(rset.getString(2));
                struckOpptiesTrustToSiebelBean.setTrustoppty(rset.getString(3));
                struckOpptiesTrustToSiebelBean.setModifiedDate(rset.getString(4));    
                struckOpptiesTrustToSiebelBean.setErrorMessage(rset.getString(5));
                struckOpptiesTrustToSiebelBean.setOriginatingSystem(originatingSystem);
                struckOpptiesTrustToSiebelBean.setResolvingSystem(originatingSystem);
                struckOpptiesTrustToSiebel.add(struckOpptiesTrustToSiebelBean);
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
        
        return struckOpptiesTrustToSiebel;
    }

    /*public void setICurrPage(int iCurrPage) {
        this.iCurrPage = iCurrPage;
    }

    public int getICurrPage() {
        return iCurrPage;
    }*/
}
