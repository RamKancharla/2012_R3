package com.lockingsessions;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
import java.util.ArrayList;
import java.io.FileInputStream;
public class LockingSessionMonitor {
    public LockingSessionMonitor() {
    }
    
    private int iCurrPage=1;

    public ArrayList<LockingSessionsBean> getLockingSessions() {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
        ArrayList<LockingSessionsBean> lockList = 
            new ArrayList<LockingSessionsBean>();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Properties props = new Properties();
            FileInputStream fin = new FileInputStream("Context.properties");
            props.load(fin);
            String url=props.getProperty("url");
            String userName=props.getProperty("username");
            String password=props.getProperty("password");
            fin.close();
            conn =DriverManager.getConnection(url,userName,password);
            stmt = conn.createStatement();
            rset =stmt.executeQuery("SELECT s.inst_id,s.sid,s.username,p.spid,l.type, \n" + 
            "decode(l.lmode,0, 'None',1, 'Null',2, 'Row-S [SS]',3, 'Row-X [SX]',4, 'Share',5,'S/Row-X [SSX]',6, 'Exclusive',to_char(l.lmode)) mode_held,\n" + 
            "decode(l.type,'TM', o.OWNER||'.'||o.OBJECT_NAME||'['||o.OBJECT_TYPE||']',null) object\n" + 
            "FROM gv$lock l,gv$session s,gv$process p,dba_objects o\n" + 
            "WHERE l.id1 IN (SELECT ll.id1  FROM gv$lock ll  WHERE request > 0 ) AND s.sid = l.sid AND s.inst_id = l.inst_id  AND p.addr = s.paddr AND p.inst_id = s.inst_id \n" + 
            "and l.lmode > 0 and o.object_id (+) = l.id1 ORDER BY s.inst_id, l.id1,l.request ");
            while (rset.next()) {
                LockingSessionsBean lockingSessionsBean =new LockingSessionsBean();
                lockingSessionsBean.setInstanceId(rset.getString(1));
                lockingSessionsBean.setSid(rset.getString(2));
                lockingSessionsBean.setUserName(rset.getString(3));
                lockingSessionsBean.setSpid(rset.getString(4));
                lockingSessionsBean.setType(rset.getString(5));
                lockingSessionsBean.setMode(rset.getString(6));
                lockingSessionsBean.setObject(rset.getString(7));
                lockList.add(lockingSessionsBean);
            }
           
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rset != null) {
                    rset.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        return lockList;
    }

    public void setICurrPage(int iCurrPage) {
        this.iCurrPage = iCurrPage;
    }

    public int getICurrPage() {
        return iCurrPage;
    }
}
