package com.tr.eai.console.search;


import com.database.DBDatasource;

import com.eaidashboard.EaiDashBoardBean;

import com.tr.eai.console.bean.CompositeInstanceBean;
import com.tr.eai.console.logger.ConsoleLogger;
import com.tr.eai.console.utils.PropertyReader;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.Statement;

import java.text.SimpleDateFormat;

import java.util.ArrayList;
import java.util.List;


public class SearchInstance {
    List<CompositeInstanceBean> compositeInstanceList;

    //String title = null;

    boolean instanceTableVisible = false;
    boolean reinitiateVisible = false;
  


    public void setCompositeInstanceList(List<CompositeInstanceBean> compositeInstanceList) {
        this.compositeInstanceList = compositeInstanceList;
    }

    public List<CompositeInstanceBean> getCompositeInstanceList() {
       return compositeInstanceList;
   }

    public ArrayList<CompositeInstanceBean> searchInstance(String title,int startRow) {
    
        ArrayList<CompositeInstanceBean> compositeInstanceList = new ArrayList<CompositeInstanceBean>();    
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        setReinitiateVisible(false);
        setInstanceTableVisible(false);
        //compositeInstanceList = new ArrayList<CompositeInstanceBean>();  
        try {            
              if (title != null && !title.trim().equals("")) {               
                String searchQuery =
                    PropertyReader.getProperty("SEARCH_QUERY", "Message");    
                 conn = DBDatasource.getConnection("eai/ds/EAIXRef");
                 //pstmt = conn.prepareStatement("select COMPOSITE_NAME, ID,composite_dn,source_action_name,cube_instance.STATE,COMPOSITE_INSTANCE.TITLE,cube FROM cube_instance,COMPOSITE_INSTANCE  WHERE COMPOSITE_INSTANCE.TITLE like ? and COMPOSITE_INSTANCE.id=cube_instance.cmpst_id order by creation_date");
                 pstmt = conn.prepareStatement("select * from (select t.*,rownum as RNO from (select /*+ index(cube_instance cube_instance_cust01) */ nvl(ci.COMPOSITE_NAME,'') COMPOSITE_NAME, nvl(COMPOSITE_INSTANCE.ID,'') ID,nvl(COMPOSITE_INSTANCE.composite_dn,'') composite_dn, nvl(COMPOSITE_INSTANCE.source_action_name,'') source_action_name, DECODE(ci.STATE,  " + 
                 "                                                  0, 'STATE_INITIATED'," + 
                 "                                                  1, 'STATE_OPEN_RUNNING'," +  
                 "                                                  2, 'STATE_OPEN_SUSPENDED'," + 
                 "                                                  3, 'STATE_OPEN_FAULTED'," + 
                 "                                                  4, 'STATE_CLOSED_PENDING_CANCEL'," + 
                 "                                                  5, 'STATE_CLOSED_COMPLETED'," + 
                 "                                                  6, 'STATE_CLOSED_FAULTED'," + 
                 "                                                  7, 'STATE_CLOSED_CANCELLED'," + 
                 "                                                  8, 'STATE_CLOSED_ABORTED'," + 
                 "                                                  9, 'STATE_CLOSED_STALE'," + 
                 "                                                  10,'STATE_CLOSED_ROLLED_BACK','unknown'" +
                 "                                                  ) STATE,nvl(COMPOSITE_INSTANCE.TITLE,'') TITLE, nvl(ci.modify_date,sysdate) modify_date,COMPOSITE_INSTANCE.ECID,nvl(ci.CIKEY,'') CIKEY FROM soa_soainfra.cube_instance ci,COMPOSITE_INSTANCE  WHERE regexp_replace(COMPOSITE_INSTANCE.TITLE,'^([^:]*:)?[[:space:]]*','') like trim('%' from :1)||'%' and COMPOSITE_INSTANCE.id=to_number(ci.cmpst_id) order by modify_date DESC) t) where RNO > :2 and RNO <= :3");
                 pstmt.setString(1, "%" + title + "%");
                 pstmt.setInt(2, startRow);    
				 int iStartRow = startRow + 25;
				 pstmt.setInt(3, iStartRow);       
                rs = pstmt.executeQuery();                
                while (rs.next()) {
                    CompositeInstanceBean instanceBean;
                    instanceBean = new CompositeInstanceBean();
                    instanceBean.setCompositeName(rs.getString(1));
                    instanceBean.setId(rs.getString(2));
                    instanceBean.setCompositeDN(rs.getString(3));
                    instanceBean.setTitle(rs.getString(6));
                    instanceBean.setSourceActionName(rs.getString(4));
                    instanceBean.setState(rs.getString(5));
                    instanceBean.setModifyDate(new SimpleDateFormat("dd/MM/yyyy hh:mm:ss").format(rs.getTimestamp(7)));
                      instanceBean.setEcid(rs.getString(8));
                    instanceBean.setCikey(rs.getString(9));


                    int faultIndex;
                    faultIndex = instanceBean.getTitle().indexOf("Fault");
                    int reinitiateIndex =
                        instanceBean.getTitle().indexOf("- Reinitiated");
                    if ((faultIndex >= 0) && (reinitiateIndex < 0)) {
                        setReinitiateVisible(true);
                        instanceBean.setFaulted(true);
                    }
                    compositeInstanceList.add(instanceBean);
                    setInstanceTableVisible(true);
                }
              
                if (compositeInstanceList.size() == 0) {                    
                    String errorMessage =
                        PropertyReader.getProperty("No_INSTANCE", "Message");
                    //JSFUtils.addFacesErrorMessage(errorMessage);
                }
              
            } else {               
                 String errorMessage = PropertyReader.getProperty("ENTER_INSTANCE_TITLE", "Message");
                //JSFUtils.addFacesErrorMessage(errorMessage);
            }

        } catch (Exception e) {
        e.printStackTrace();
            ConsoleLogger.getLogger().error(e.getMessage(),e);
            String errorMessage =
                PropertyReader.getProperty("INTERNAL_SERVER_ERROR", "Message");
            //JSFUtils.addFacesErrorMessage(errorMessage);

        } finally {
            try {
                rs.close();
                pstmt.close();
                conn.close();
            } catch (Exception e) {
              ConsoleLogger.getLogger().error(e.getMessage(),e);
            }
        }
              
        return compositeInstanceList;
    }

  /*  public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }*/
    
    
    public int getCountofInstances(String title) {
      Connection conn = null;
      PreparedStatement prstmt = null;
      ResultSet rset = null;
      int instanceCount = 0;  
	  try
     {
		conn = DBDatasource.getConnection("eai/ds/EAIXRef");
		prstmt=conn.prepareStatement("SELECT count(*) as count FROM cube_instance,COMPOSITE_INSTANCE  WHERE regexp_replace(COMPOSITE_INSTANCE.TITLE,'^([^:]*:)?[[:space:]]*','') like trim('%' from :1)||'%' and COMPOSITE_INSTANCE.id=to_number(cube_instance.cmpst_id)");
		prstmt.setString(1, "%" + title + "%");
      		rset = prstmt.executeQuery();
       if (rset.next()) {
		
              instanceCount = rset.getInt("count");
                  }
     }catch(Exception e) {
       
     }finally {
            try {
                rset.close();
                prstmt.close();
                conn.close();
            } catch (Exception e) {
              ConsoleLogger.getLogger().error(e.getMessage(),e);
            }
        }
      return instanceCount;
    }


 public void setInstanceTableVisible(boolean instanceTableVisible) {
        this.instanceTableVisible = instanceTableVisible;
}

    public boolean getInstanceTableVisible() {
               return instanceTableVisible;
    }


    public void setReinitiateVisible(boolean reinitiateVisible) {
        this.reinitiateVisible = reinitiateVisible;
    }

    public boolean getReinitiateVisible() {
        return reinitiateVisible;
    }
}
