/*************************************************************************
* Module            CRM6.1  (Sprint 2)
*                   Order Management (Core Suite)
* File              ResponseDAO.java
* Type              Java File
* Description       Data Access Object Class
*
* Change History
* Version	Date		Author              Description Of Change
* ========	========	===========         ===============================
*  0.01		06/07/07	anvv sharma         Initial Version
* ========	========	===========	    ===============================
*
*************************************************************************/

package com.reuters.eai.cs.oms;

import com.reuters.eai.cs.oms.DBDataSource;
import com.reuters.eai.cs.oms.ResponseBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;

import java.util.ResourceBundle;

import javax.naming.NamingException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ResponseDAO {

 //11G Migration
    
    private static Logger logger = Logger.getLogger( Thread.currentThread().getClass().getName());
    private static ResourceBundle resourceBundle = ResourceBundle.getBundle("ApplicationResources");


    public ResponseDAO() {
    }
    
    
    public static ArrayList getResponseCode(String respId) throws NamingException, SQLException {
        Connection              connection              = null;
        PreparedStatement       pstmt                   = null;
        ResultSet               resultset               = null;
        ArrayList               arrPubList              = new ArrayList();
        ResponseBean            RespBean                = null;
               
        String selectQuery =       resourceBundle.getString("selectQuery");
                
    try
        {
         
            try {
                connection  = DBDataSource.getDataSource();
                pstmt       = connection.prepareStatement(selectQuery);
                
                pstmt.setString(1, respId);
                resultset = pstmt.executeQuery();
            }
            catch(Exception e) {
                    logger.log(Level.SEVERE ,"------------ Database Error in getResponseCode(respId) ---------------\n" );                   
                    logger.log(Level.SEVERE , "Exception>>> " + e +"\n" );
                    arrPubList = null;
            }
            while(resultset.next()) {
                        RespBean  = new ResponseBean();
                        
                        RespBean.setStrRespId(resultset.getString("RESP_ID"));
                        RespBean.setStrRespCode(resultset.getString("RESP_CODE"));
                        RespBean.setStrRespMessage(resultset.getString("RESP_MESSAGE"));
                        arrPubList.add(RespBean);
                        
            }
        }

    catch(SQLException s) {
     	 logger.log(Level.SEVERE ,"------------ SQL Exception in getResponseCode(respId)  ---------------\n" );                   
       	 logger.log(Level.SEVERE , "Exception>>> " + s +"\n" );    
        
        arrPubList = null;
    } 
   //11 G Migration. following the order for closing resources thinking from child to parent. So here, resultset first, and pstmt second and connection last:
    finally {
         if(resultset!=null)
                resultset.close();
        if (pstmt!= null)
          pstmt.close();
       if(connection!=null)
                connection.close();
        }
    
    return arrPubList;
    }
}
