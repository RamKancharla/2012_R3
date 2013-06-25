package com.stuckcontactsupdates;

import com.database.DBDatasource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;

public class StuckContactsUpdates {
    public StuckContactsUpdates() {
    }
    
   public ArrayList<StuckContactsAAAUpdatesBean> getStuckContactsUpdates(String context) {
   
        ArrayList<StuckContactsAAAUpdatesBean> stuckContactsAAAUpdatesBeanList=new ArrayList<StuckContactsAAAUpdatesBean>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        String queryString="";
        try {
            conn = DBDatasource.getConnection("eai/ds/EAIReference");
            if(context==null)
            {
            queryString="select context_id,status,checker_instance_id,releaser_instance_id,n_s_instance_id,to_char(last_updated_date,'dd-MON-yy HH24:MI:SS')last_updated_date \n" +
            "from SOA_EAIOWNER.message_seq_inst where message_type='CPfG.UserProfileUpdateToSiebel' and context='CPfG.UserUUID'and last_updated_date > sysdate-3 and status in('S') order by last_updated_date desc";
            }
            else {
                queryString="select context_id,status,checker_instance_id,releaser_instance_id,n_s_instance_id,to_char(last_updated_date,'dd-MON-yy HH24:MI:SS')last_updated_date  from SOA_EAIOWNER.message_seq_inst where message_type='CPfG.UserProfileUpdateToSiebel' and context='CPfG.UserUUID' and status in('S') and last_updated_date > sysdate-3  and context_id='"+context+"' order by last_updated_date desc";
            }

            stmt = conn.createStatement();
            rset = stmt.executeQuery(queryString);
            while (rset.next()) {
                StuckContactsAAAUpdatesBean stuckContactsAAAUpdatesBean = new StuckContactsAAAUpdatesBean();
                stuckContactsAAAUpdatesBean.setContactRowId(rset.getString(1));
                stuckContactsAAAUpdatesBean.setStatus(rset.getString(2));
                stuckContactsAAAUpdatesBean.setCheckerInstanceId(rset.getString(3));
      

                String tempReleaseInstanceID = rset.getString(4);
                if(rset.wasNull()){
                stuckContactsAAAUpdatesBean.setReleaserInstanceId("");
                }
                else {
                stuckContactsAAAUpdatesBean.setReleaserInstanceId(rset.getString(4));
                }

                //fields  were displaying null
                //stuckContactsAAAUpdatesBean.setReleaserInstanceId(rset.getString(4));    
                
                 String tempNSInstanceId = rset.getString(5);
                 if(rset.wasNull()){
                 stuckContactsAAAUpdatesBean.setNSInstanceId("");
                 }
                 else {
                 stuckContactsAAAUpdatesBean.setNSInstanceId(rset.getString(5));
                 }
                 
                //stuckContactsAAAUpdatesBean.setNSInstanceId(rset.getString(5));  
  
                stuckContactsAAAUpdatesBean.setLastUpdatedDate(rset.getString(6)); 
                stuckContactsAAAUpdatesBeanList.add(stuckContactsAAAUpdatesBean);
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
        
        return stuckContactsAAAUpdatesBeanList;
        
    }
    
    
 /*   public ArrayList<StuckContactsAAAUpdatesBean> getStuckAccountUpdates(String context) {
    
         ArrayList<StuckContactsAAAUpdatesBean> stuckContactsAAAUpdatesBeanList=new ArrayList<StuckContactsAAAUpdatesBean>();
         Connection conn = null;
         Statement stmt = null;
         ResultSet rset = null;
         String queryString="";
         try {
             conn = DBDatasource.getConnection("eai/ds/EAIReference");
             if(context==null)
             {
             queryString="select context_id,status,checker_instance_id,releaser_instance_id,n_s_instance_id,to_char(last_updated_date,'YYYY-MM-DD HH24:MI:SS')last_updated_date \n" +
             "from SOA_EAIOWNER.message_seq_inst where message_type='CPfG.UserProfileUpdateToSiebel' and context='CPfG.UserUUID' and status in('S','N') order by last_updated_date desc";
             }
             else {
                 queryString="select context_id,status,checker_instance_id,releaser_instance_id,n_s_instance_id,to_char(last_updated_date,'YYYY-MM-DD HH24:MI:SS')last_updated_date from EAIOWNER.message_seq_inst where message_type='CPfG.UserProfileUpdateToSiebel' and context='CPfG.UserUUID' and status in('S','N') and context_id='"+context+"' order by last_updated_date desc";
             }

             stmt = conn.createStatement();
             rset = stmt.executeQuery(queryString);
             while (rset.next()) {
                 StuckContactsAAAUpdatesBean stuckContactsAAAUpdatesBean = new StuckContactsAAAUpdatesBean();
                 stuckContactsAAAUpdatesBean.setContactRowId(rset.getString(1));
                 stuckContactsAAAUpdatesBean.setStatus(rset.getString(2));
                 stuckContactsAAAUpdatesBean.setCheckerInstanceId(rset.getString(3));
                 stuckContactsAAAUpdatesBean.setReleaserInstanceId(rset.getString(4));    
                 stuckContactsAAAUpdatesBean.setNSInstanceId(rset.getString(5));  
                 stuckContactsAAAUpdatesBean.setLastUpdatedDate(rset.getString(6)); 
                 stuckContactsAAAUpdatesBeanList.add(stuckContactsAAAUpdatesBean);
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
         
         return stuckContactsAAAUpdatesBeanList;
         
     }
     
    public ArrayList<StuckContactsAAAUpdatesBean> getStuckOrdersUpdates(String context) {
    
         ArrayList<StuckContactsAAAUpdatesBean> stuckContactsAAAUpdatesBeanList=new ArrayList<StuckContactsAAAUpdatesBean>();
         Connection conn = null;
         Statement stmt = null;
         ResultSet rset = null;
         String queryString="";
         try {
             conn = DBDatasource.getConnection("eai/ds/EAIReference");
             if(context==null)
             {
             queryString="select context_id,status,checker_instance_id,releaser_instance_id,n_s_instance_id,to_char(last_updated_date,'YYYY-MM-DD HH24:MI:SS')last_updated_date \n" +
             "from SOA_EAIOWNER.message_seq_inst where message_type='CPfG.UserProfileUpdateToSiebel' and context='CPfG.UserUUID' and status in('S','N') order by last_updated_date desc";
             }
             else {
                 queryString="select context_id,status,checker_instance_id,releaser_instance_id,n_s_instance_id,to_char(last_updated_date,'YYYY-MM-DD HH24:MI:SS')last_updated_date from EAIOWNER.message_seq_inst where message_type='CPfG.UserProfileUpdateToSiebel' and context='CPfG.UserUUID' and status in('S','N') and context_id='"+context+"' order by last_updated_date desc";
             }

             stmt = conn.createStatement();
             rset = stmt.executeQuery(queryString);
             while (rset.next()) {
                 StuckContactsAAAUpdatesBean stuckContactsAAAUpdatesBean = new StuckContactsAAAUpdatesBean();
                 stuckContactsAAAUpdatesBean.setContactRowId(rset.getString(1));
                 stuckContactsAAAUpdatesBean.setStatus(rset.getString(2));
                 stuckContactsAAAUpdatesBean.setCheckerInstanceId(rset.getString(3));
                 stuckContactsAAAUpdatesBean.setReleaserInstanceId(rset.getString(4));    
                 stuckContactsAAAUpdatesBean.setNSInstanceId(rset.getString(5));  
                 stuckContactsAAAUpdatesBean.setLastUpdatedDate(rset.getString(6)); 
                 stuckContactsAAAUpdatesBeanList.add(stuckContactsAAAUpdatesBean);
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
         
         return stuckContactsAAAUpdatesBeanList;
         
     }*/
}
