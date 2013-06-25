package com.database;

import java.io.IOException;

import java.sql.Connection;
import java.sql.SQLException;

import java.util.Hashtable;

import javax.sql.ConnectionPoolDataSource;

import javax.naming.Context;
import javax.naming.InitialContext;

import javax.sql.DataSource;
import javax.sql.PooledConnection;

public class DBDatasource {
    public DBDatasource() {
    }
    
    //Method for get the connection with DataSource
    public static Connection getConnection(String dataSource) throws  IOException{
                        DataSource ds           =   null;
                        //ConnectionPoolDataSource ds=null;
                        Connection conn         =   null;
                            PooledConnection pooledCon=null;
                        try{
                            Context ctx = new InitialContext();
                            System.out.println(ctx);
                            ds = (DataSource)ctx.lookup(dataSource);
                            System.out.println(ds);
                            conn = ds.getConnection();
                   
                            
                        }catch(SQLException e){
                        System.out.println("SQLException: " + e.getMessage());
                        while((e = e.getNextException()) != null)
                                System.out.println(e.getMessage());
                }
                catch (Exception e) {
                    System.out.println(" Error is "+ e.getMessage());
                }
        return conn;          
    }
    
  public static Connection getConnectionByJNDI() throws IOException {
      Connection conn = null;
      try {
          Hashtable ht = new Hashtable();
          ht.put(Context.INITIAL_CONTEXT_FACTORY,
                 "weblogic.jndi.WLInitialContextFactory");
          ht.put(Context.PROVIDER_URL, "t3://localhost:7001");
          Context ctx = new InitialContext(ht);
          javax.sql.DataSource ds =
              (javax.sql.DataSource)ctx.lookup("jdbc/SOADataSource");
          conn = ds.getConnection();

      } catch (Exception e) {
          e.printStackTrace();
      }
      return conn;
  }
}

