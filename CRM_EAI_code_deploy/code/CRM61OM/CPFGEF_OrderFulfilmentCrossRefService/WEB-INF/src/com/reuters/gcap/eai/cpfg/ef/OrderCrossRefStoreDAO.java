/*************************************************************************
* Module            CRM6.2  (Sprint 8)
*                   CPfG Electronic Fulfilment
* File              OrderCrossRefStoreDAO.java
* Type              Java File
* Description       Data Access Object Class
*
* Change History
* Version	Date		Author              Description Of Change
* ========	========	===========         ===============================
*  0.01		15/04/08	anvv sharma         Initial Version
*  0.02         18/04/08        Rob Billington      Added logging
*  0.03         19/05/08        Rob Billington      Modified to treat electropnic fulfilment request ID as
*                                                   a number in the database. 
* ========	========	===========	    ===============================
*
*************************************************************************/


package


com.reuters.gcap.eai.cpfg.ef;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.ResourceBundle;
import java.util.Set;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.naming.Context;
import javax.naming.InitialContext;

import javax.sql.DataSource;

import oracle.jdbc.OracleTypes;

import oracle.sql.ARRAY;
import oracle.sql.ArrayDescriptor;
import oracle.sql.STRUCT;
import oracle.sql.StructDescriptor;

/**
 * Data Access object for storing and retrieving order line details to/from
 * a persistent datastore.
 */
public class OrderCrossRefStoreDAO implements IOrderCrossRefStore {

     //11G Migration
    private static String DATASOURCE_NAME_STRING_ID = "DSName";  
    //private static Logger logger = Logger.getLogger( this.getClass().getName() );
    private static Logger logger = Logger.getLogger( Thread.currentThread().getClass().getName());
    //private static Logger logger = Logger.getLogger( new OrderCrossRefStoreDAO().getClass().getName());
    private static ResourceBundle resourceBundle = ResourceBundle.getBundle("ApplicationResources");
    
    
    
    public OrderCrossRefStoreDAO() {    
      

    }

    /**
     * Stores a set of order lines in the datasource and assigns them an
     * electronic fulfilment request ID.
     * @param orderLines the order lines to store
     * @return the fulfilment request ID or null if the input set was empty
     */
     public String storeOrderLines(Set<OrderLine> orderLines) {

         logger.log(Level.FINEST,"storeOrderLines() called for: " + orderLines.toString() );

         if (null == orderLines) {
             logger.log(Level.SEVERE,"null argument)");
             throw new NullPointerException("null argument");
         } else if (0 == orderLines.size()) {
             logger.log(Level.INFO,"No order lines!)");
             return null;
         }
         
         Connection conn = null;
         String strEleFulfil_Req_Id = "";
         CallableStatement callableStatement = null;

             try {
                 conn = getDataSourceConnection();
                 
                 StructDescriptor descOrderDetails = StructDescriptor.createDescriptor("ORDER_DETAILS",conn);
                 oracle.sql.STRUCT[] orderDetailsArray = new oracle.sql.STRUCT[orderLines.size()];
                 logger.log(Level.INFO, "\n orderDetailsArray: size " + orderLines.size() );   
                 int i =0;
                 for (OrderLine o: orderLines){
                              Object userObjArray[] = new Object[6];

                      
                              userObjArray[0] = o.getOrderId();
                              userObjArray[1] = o.getOrderLineId();
                     logger.log(Level.INFO, "\nuserObjArray: OrderID " + userObjArray[0].toString() );  
                              userObjArray[2] = o.getSiebelContactUserId();
                              userObjArray[3] = o.getSiebelContactRowId();
                     logger.log(Level.INFO, "\nuserObjArray: Other  " + userObjArray[3].toString() );           
                              userObjArray[4] = o.getBusinessCase();
                              userObjArray[5] = " ";
                     logger.log(Level.INFO, "\nuserObjArray: BusinessCase " + userObjArray[4].toString() );               
                     
                     oracle.sql.STRUCT userStruct = new STRUCT(descOrderDetails, conn, userObjArray);
                    
                     orderDetailsArray[i] = userStruct;
                 i++;
                 }

                 ArrayDescriptor desc = ArrayDescriptor.createDescriptor("ORDER_DETAILS_ARRAY", conn);
                 oracle.sql.ARRAY inputArray = new oracle.sql.ARRAY(desc,conn,orderDetailsArray);
                
                 logger.log(Level.INFO, "\n inputArray Length" + inputArray.length() );   

                 callableStatement = 
                         conn.prepareCall("{ call PROC_INSERT_ORDERFULFILMENT(?, ?)}");

                 callableStatement.setArray(1, inputArray);       
                 callableStatement.registerOutParameter(2, OracleTypes.NUMBER);
                 
                 logger.log(Level.INFO,"before Execute PROC_INSERT_ORDERFULFILMENT ");
                 callableStatement.execute();
                 logger.log(Level.INFO,"before Execute PROC_INSERT_ORDERFULFILMENT");
                 
                 strEleFulfil_Req_Id = String.valueOf( callableStatement.getInt(2) );

             } catch (Exception e) {
                 logger.log(Level.INFO, ">>> THE OrderLines: " + orderLines.toString() + " threw " + e );
             } finally {
             
             if (callableStatement != null) {
                 try {
                     callableStatement.close();
                 } catch (SQLException e) {
                     logger.log(Level.WARNING, e.getMessage() );
                 }
             }
             if (conn != null) {
                 try {
                     conn.close();
                 } catch (SQLException e) {
                     logger.log(Level.WARNING, e.getMessage() );
                 }
             }
            
         }
         logger.log(Level.FINEST,">>> THE Electronic Fulfilment Request ID = " + strEleFulfil_Req_Id);
         return strEleFulfil_Req_Id;
     }

     /**
     * Fetches zero or more order lines from the datasource where the 
     * electronic fulfilment request ID matches the specified value.
     * 
     * @param electronicFulfilmentId the electronic fulfilment request ID to match
     * @return the order lines
     */
     public Set<OrderLine> getOrderLinesByFulfilmentId(String electronicFulfilmentId,String permissioningStatus) {

        logger.log(Level.FINEST,"electronicFulfilmentId= " + electronicFulfilmentId );

        Connection connection = null;
        ArrayList arrOrderElements = new ArrayList();
        OrderCrossRefStoreBean crossRefStoreBean = null;
        PreparedStatement pstmt = null;
        ResultSet resultset = null;
        Set<OrderLine> orderLines = new HashSet<OrderLine>();
        CallableStatement callableStatement = null;
        String strSQL = "SELECT ORDER_ID, ORDER_LINE_ID FROM ORDERFULFILMENT WHERE ELECTRONICFULFIL_REQ_ID = ?";

        try {

            try {
                connection = getDataSourceConnection();

                pstmt = connection.prepareStatement(strSQL);
                pstmt.setInt(1, Integer.parseInt( electronicFulfilmentId ));
                resultset = pstmt.executeQuery();
                
            
                
                callableStatement = connection.prepareCall("{ call PROC_UPDATE_ORDERDETAIL(?,?)}");
                callableStatement.setString(1,electronicFulfilmentId);       
                callableStatement.setString(2,permissioningStatus);     
               
                logger.log(Level.INFO,"\n before Execute PROC_UPDATE_ORDERDETAIL ");
                callableStatement.execute();
                logger.log(Level.INFO,"\n after Execute PROC_UPDATE_ORDERDETAIL");
                
        

            } catch (Exception e) {
                logger.log(Level.WARNING, "call for electronicFulfilmentId: " + electronicFulfilmentId + " threw " + e );
            }

            while (resultset.next()) {
                crossRefStoreBean = new OrderCrossRefStoreBean();
                crossRefStoreBean.setStrOrderID(resultset.getString("ORDER_ID"));
                crossRefStoreBean.setStrOrderLineID(resultset.getString("ORDER_LINE_ID"));
                arrOrderElements.add(crossRefStoreBean);
            }

        }

        catch (SQLException e) {
            logger.log(Level.WARNING, "Call for electronicFulfilmentId= " + electronicFulfilmentId + " threw " + e );
        }
//11 G Migration. following the order for closing resources thinking from child to parent. So here, resultset first, and pstmt second and connection last:
finally {
            try {
  	 if (resultset != null)
                    resultset.close();
	 if (pstmt != null)
                    pstmt.close();
	 if (callableStatement != null)
                   callableStatement .close();
                if (connection != null)
                    connection.close();   
            } catch (Exception e) {
                logger.log(Level.WARNING, "Call for electronicFulfilmentId= " + electronicFulfilmentId + " threw " + e );
            }
        }

        for (Object o: arrOrderElements) {
            OrderCrossRefStoreBean b = (OrderCrossRefStoreBean)o;
            orderLines.add(new OrderLine(b.getStrOrderID(), 
                                         b.getStrOrderLineID(),null,null,null));
        }
        return orderLines;
     }

    /**
     * Helper method to retrieve connection to configured datasource as named
     * in the resouce bundle for this application
     * @return the connection
     */
     
     public Connection getDataSourceConnection() {

        String DSName = resourceBundle.getString(DATASOURCE_NAME_STRING_ID);
        DataSource ds = null;
         Connection conn = null;
         try {
             Context ctx = new InitialContext();
             logger.log(Level.INFO,"Context >>> " + ctx );
             ds = (DataSource)ctx.lookup(DSName);
             logger.log(Level.INFO,"DataSource >>> " + ds );
             conn = ds.getConnection();
         } catch (Exception e) {
             logger.log(Level.SEVERE, e.getMessage() );
             throw new RuntimeException(e);
         }
         return conn;
     }
     
     
  /* 
   * //--- for home JVM---
   * public Connection getDataSourceConnection() {

       /// String DSName = resourceBundle.getString(DATASOURCE_NAME_STRING_ID);
       // DataSource ds = null;
        Connection conn = null;
        try {
        
             conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@eaidev2:1521:EAIDEV2", "eaiowner", "reuters");
            
            if(conn != null){
                logger.log(Level.WARNING, "\n >>> DriverManager getConnection: is :" + conn  );
            }
            
            
        } catch (Exception e) {
            logger.log(Level.SEVERE, e.getMessage() );
            throw new RuntimeException(e);
        }
        return conn;
    } */

}
