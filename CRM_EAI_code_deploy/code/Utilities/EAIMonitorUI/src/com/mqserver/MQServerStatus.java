package com.mqserver;

import com.database.DBDatasource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;

public class MQServerStatus {
    public MQServerStatus() {
    }
    
   public ArrayList<MQServerStatusBean> getMQServerStatus() {
   
        ArrayList<MQServerStatusBean> mQServerStatusBeanList=new ArrayList<MQServerStatusBean>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        String queryString="";
        try {
            conn = DBDatasource.getConnection("eai/ds/EAIReference");
            queryString="select SYSTEM,STATUS,TIME_STAMP from EAI_SERVICE_STATUS where system='MQ Interface'";
            stmt = conn.createStatement();
            rset = stmt.executeQuery(queryString);
            while (rset.next()) {
                MQServerStatusBean mQServerStatusBean= new MQServerStatusBean();
                mQServerStatusBean.setSystem(rset.getString(1));
                mQServerStatusBean.setStatus(rset.getString(2));               
                mQServerStatusBean.setLastUpdatedDate(rset.getObject(3));                
                mQServerStatusBeanList.add(mQServerStatusBean);
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
        
        return mQServerStatusBeanList;
        
    }
}
