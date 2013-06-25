 /*************************************************************************
  * Module                CRM6.1  (Sprint 9) 
  *                       Account Contact List Management (Core Suite)
  * File                  ParseCSAccountContactPublishStatus.java
  * Type                  Java File
  * Description           Receives an Input from CoreSuite in Fixed Length Format 
  *                       and Builds Response in XML Format 
  *
  * Base Document                CRM 6.1 EAI - Core Suite Interface Development BTM.doc
  *
  * Change History
  * Version      Date            Author                         Description Of Change
  * ========     ========        ======================         ===============================
  *      1.0     19/05/08        Hemamalini.T.S                 Initial Version
  *      1.1     21/05/08        Hemamalini.T.S                 Re-created for XSD changes
  * ========     ========        ======================         ===============================
  ***************************************************************************/

  package com.reuters.eai.cs.acm;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import java.util.ResourceBundle;

import javax.naming.Context;
import javax.naming.InitialContext;

import javax.sql.DataSource;


public class DBDataSource {

	
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
