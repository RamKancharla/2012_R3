package com.interfacestatus;


import com.database.DBDatasource;



import com.interfacestatus.InterfaceStatusBean;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;

public class InterfaceStatus {
    public InterfaceStatus() {
    }
    
    public ArrayList<InterfaceStatusBean>  getInterfaceStatus() {
          ArrayList<InterfaceStatusBean> InterfaceStatusBeanList = new ArrayList<InterfaceStatusBean>();
          Connection conn = null;
          Statement stmt = null;
          ResultSet rset = null;
          String queryString="";
          try {
              
              conn = DBDatasource.getConnection("eai/ds/EAIReference");
             
              queryString = 
                  "SELECT ic.ID INTERFACE_ID,ic.state,ic.is_available FROM interface_config ic";
             
              
              stmt = conn.createStatement();
              rset = stmt.executeQuery(queryString);
              while (rset.next()) {
                  InterfaceStatusBean InterfaceStatusBean = new InterfaceStatusBean();
                  InterfaceStatusBean.setInterface(rset.getString(1));
                  InterfaceStatusBean.setState(rset.getString(2));
                  InterfaceStatusBean.setIsAvailable(rset.getString(3));                 
                  InterfaceStatusBeanList.add(InterfaceStatusBean);
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
          return InterfaceStatusBeanList;
    }
}
