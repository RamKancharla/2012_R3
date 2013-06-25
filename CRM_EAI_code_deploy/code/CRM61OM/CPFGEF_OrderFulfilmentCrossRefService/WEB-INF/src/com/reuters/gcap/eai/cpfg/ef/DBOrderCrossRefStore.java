/*************************************************************************
* Module            CRM6.1  (Sprint 8)
*                   Pricing Management (Core Suite)
* File              DBOrderCrossRefStore.java
* Type              Java File
* Description       Creates a DataSource and Returns a Connectin Object From Database
*
* Change History
* Version	Date		Author              Description Of Change
* ========	========	===========         ===============================
*  0.01		15/04/08	anvv sharma         Initial Version
* ========	========	===========	    ===============================
*
*************************************************************************/

package com.reuters.gcap.eai.cpfg.ef;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import javax.sql.DataSource;


public class DBOrderCrossRefStore {
    public DBOrderCrossRefStore() {
    }
    
    public static Connection getDataSource() throws SQLException {
            
            ResourceBundle ResBun   =   ResourceBundle.getBundle("ApplicationResources");
            String DSName           =   ResBun.getString("DSName");
            DataSource ds           =   null;
            Connection conn         =   null;
            try{
                Context ctx = new InitialContext();
                System.out.println(ctx);
                ds = (DataSource)ctx.lookup(DSName);
                System.out.println(ds);
                conn = ds.getConnection();
            }catch(javax.naming.NamingException e) {
                    System.out.println("Naming Service = "+e.getMessage());
            }
            return conn;
            }
    
}
