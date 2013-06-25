package com.eaidashboard;
import com.database.DBDatasource;





import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;

import java.text.DateFormat;

import java.text.SimpleDateFormat;

import java.util.ArrayList;
import java.util.Date;

public class EaiDashBoard {

    public EaiDashBoard() {
    }

    public ArrayList<EaiDashBoardBean>  geteaiDashBoardDetails(String fromDate,String todate,String interfaceName) {
              ArrayList<EaiDashBoardBean> eaiDashBoardBeanList = new ArrayList<EaiDashBoardBean>();
              Connection conn = null;
              Statement stmt = null;
              ResultSet rset = null;
              String queryString="";


              try {

                  conn = DBDatasource.getConnection("eai/ds/EAIReference");
                 if(interfaceName.equalsIgnoreCase("Orders"))
                 {
                      queryString =
                          "SELECT TRUNC(A.dateval) AS dateval,Sap_succ_ordmsg_count,Sap_fail_ordmsg_count,CS_flown_ordmsg_count,CPFG_succ_ordmsg_count,CPFG_fail_ordmsg_count,\n" +
                          "Tom_succ_ordmsg_count,Tom_fail_ordmsg_count,Elm_succ_ordmsg_count,Elm_fail_ordmsg_count\n" +
                          "FROM\n" +
                          "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Sap_succ_ordmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_SAP_SUCC'))A, \n" +
                          "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Sap_fail_ordmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_SAP_FAIL'))B, \n" +
                          "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS CS_flown_ordmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_CS_SUCC'))C,\n" +
                          "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS CPFG_succ_ordmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_CPFG_SUCC'))D, \n" +
                          "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS CPFG_fail_ordmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_CPFG_FAIL'))E, \n" +
                          "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Tom_succ_ordmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_TOM_SUCC'))F,\n" +
                          "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Tom_fail_ordmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_TOM_FAIL'))G, \n" +
                          "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Elm_succ_ordmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_CRM_TO_ELM_SUCC'))H, \n" +
                          "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Elm_fail_ordmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_CRM_TO_ELM_FAIL'))I \n" +
                          "WHERE A.dateval=B.dateval \n" +
                          "AND C.dateval=B.dateval\n" +
                          "AND D.dateval=C.dateval\n" +
                          "AND E.dateval=D.dateval\n" +
                          "AND F.dateval=E.dateval\n" +
                          "AND G.dateval=F.dateval\n" +
                          "AND H.dateval(+)=G.dateval\n" +
                          "AND I.dateval(+)=H.dateval\n" +
                          "AND TRUNC(A.dateval) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n"+
                          "AND TO_DATE('"+todate+"','mm/dd/yyyy') ORDER BY A.dateval";
                          
                          

                      stmt = conn.createStatement();
                      rset = stmt.executeQuery(queryString);

                      //String pattern = "dd/MM/yyyy";
                      //SimpleDateFormat format = new SimpleDateFormat(pattern);

                      while (rset.next()) {
                          EaiDashBoardBean eaiDashBoardBean = new EaiDashBoardBean();
                          eaiDashBoardBean.setOrdDate(rset.getDate(1));
                          eaiDashBoardBean.setSapsuccordcount(rset.getString(2));
                          eaiDashBoardBean.setSapsfailordcount(rset.getString(3));
                          eaiDashBoardBean.setCsflownordcount(rset.getString(4));
                          eaiDashBoardBean.setCpfgsuccordcount(rset.getString(5));
                          eaiDashBoardBean.setCpfgfailordcount(rset.getString(6));
                          eaiDashBoardBean.setTomsuccordcount(rset.getString(7));
                          eaiDashBoardBean.setTomfailordcount(rset.getString(8));
                        if(rset.getString(9)==null )
                        {
                            eaiDashBoardBean.setElmSuccOrdCount("0");
                        }
                        else
                        {
                          eaiDashBoardBean.setElmSuccOrdCount(rset.getString(9));
                        }
                        if(rset.getString(10)==null )
                        {
                            eaiDashBoardBean.setElmFailOrdCount("0");
                        }
                        else
                        {
                          eaiDashBoardBean.setElmFailOrdCount(rset.getString(10));
                        }
                                                   
                          eaiDashBoardBeanList.add(eaiDashBoardBean);

                      }

                      queryString =
                          "SELECT Sap_succ_ordmsg_Sum,Sap_fail_ordmsg_Sum,CS_flown_ordmsg_Sum,CPFG_succ_ordmsg_Sum,CPFG_fail_ordmsg_Sum,\n" +
                          "Tom_succ_ordmsg_Sum,Tom_fail_ordmsg_Sum,Elm_succ_ordmsg_Sum,Elm_fail_ordmsg_Sum\n" +
                          "FROM\n" +
                          "(SELECT SUM(MESSAGE_COUNT) AS Sap_succ_ordmsg_Sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_SAP_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                          "AND TO_DATE('"+todate+"','mm/dd/yyyy'))A, \n" +
                          "(SELECT SUM(MESSAGE_COUNT) AS Sap_fail_ordmsg_Sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_SAP_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                          "AND TO_DATE('"+todate+"','mm/dd/yyyy'))B, \n" +
                          "(SELECT SUM(MESSAGE_COUNT) AS CS_flown_ordmsg_Sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_CS_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                          "AND TO_DATE('"+todate+"','mm/dd/yyyy'))C,\n" +
                          "(SELECT SUM(MESSAGE_COUNT) AS CPFG_succ_ordmsg_Sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_CPFG_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                          "AND TO_DATE('"+todate+"','mm/dd/yyyy'))D, \n" +
                          "(SELECT SUM(MESSAGE_COUNT) AS CPFG_fail_ordmsg_Sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_CPFG_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                          "AND TO_DATE('"+todate+"','mm/dd/yyyy'))E, \n" +
                          "(SELECT SUM(MESSAGE_COUNT) AS Tom_succ_ordmsg_Sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_TOM_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                          "AND TO_DATE('"+todate+"','mm/dd/yyyy'))F,\n" +
                          "(SELECT SUM(MESSAGE_COUNT) AS Tom_fail_ordmsg_Sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_TOM_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                          "AND TO_DATE('"+todate+"','mm/dd/yyyy'))G, \n" +
                          "(SELECT SUM(MESSAGE_COUNT) AS Elm_succ_ordmsg_Sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_CRM_TO_ELM_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                          "AND TO_DATE('"+todate+"','mm/dd/yyyy'))H, \n" +
                          "(SELECT SUM(MESSAGE_COUNT) AS Elm_fail_ordmsg_Sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ORD_CRM_TO_ELM_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                          "AND TO_DATE('"+todate+"','mm/dd/yyyy'))I \n";

                      stmt = conn.createStatement();
                      rset = stmt.executeQuery(queryString);

                      while (rset.next()) {
                          EaiDashBoardBean eaiDashBoardBean = new EaiDashBoardBean();
                          //eaiDashBoardBean.setOrdDate(DateFormat.getDateInstance( ).format(rset.getString(1)));
                        if(rset.getString(1)==null )
                        {
                            eaiDashBoardBean.setSapsuccordcountSum("0");
                        }
                        else
                        {
                            eaiDashBoardBean.setSapsuccordcountSum(rset.getString(1));
                        }
                          if(rset.getString(2)==null )
                          {
                              eaiDashBoardBean.setSapsfailordcountSum("0");
                          }
                          else
                          {
                              eaiDashBoardBean.setSapsfailordcountSum(rset.getString(2));
                          }
                          if(rset.getString(3)==null )
                          {
                              eaiDashBoardBean.setCsflownordcountSum("0");
                          }
                          else
                          {
                              eaiDashBoardBean.setCsflownordcountSum(rset.getString(3));
                          }
                          if(rset.getString(4)==null )
                          {
                              eaiDashBoardBean.setCpfgsuccordcountSum("0");
                          }
                          else
                          {
                              eaiDashBoardBean.setCpfgsuccordcountSum(rset.getString(4));
                          }
                          if(rset.getString(5)==null )
                          {
                              eaiDashBoardBean.setCpfgfailordcountSum("0");
                          }
                          else
                          {
                              eaiDashBoardBean.setCpfgfailordcountSum(rset.getString(5));
                          }
                          if(rset.getString(6)==null )
                          {
                              eaiDashBoardBean.setTomsuccordcountSum("0");
                          }
                          else
                          {
                              eaiDashBoardBean.setTomsuccordcountSum(rset.getString(6));
                          }
                          if(rset.getString(7)==null )
                          {
                              eaiDashBoardBean.setTomfailordcountSum("0");
                          }
                          else
                          {
                              eaiDashBoardBean.setTomfailordcountSum(rset.getString(7));
                          }
                          if(rset.getString(8)==null )
						  {
						    eaiDashBoardBean.setElmSuccOrdCountSum("0");
						  }
						  else
						  {
						     eaiDashBoardBean.setElmSuccOrdCountSum(rset.getString(8));
                          }
                          if(rset.getString(9)==null )
						  {
						  	eaiDashBoardBean.setElmFailOrdCountSum("0");
						  }
						  else
						  {
						  	eaiDashBoardBean.setElmFailOrdCountSum(rset.getString(9));
                          }

                          eaiDashBoardBeanList.add(eaiDashBoardBean);

                      }
                  }

                  if(interfaceName.equalsIgnoreCase("Quotes"))
                  {
                       queryString =
                           "SELECT TRUNC(A.dateval) AS dateval,CS_Quotes_Flown_Count\n" +
                           "FROM\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS CS_Quotes_Flown_Count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='QUOTES_SUCC'))A \n" +
                           "WHERE TRUNC(A.dateval) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy') ORDER BY A.dateval";

                       stmt = conn.createStatement();
                       rset = stmt.executeQuery(queryString);
                       while (rset.next()) {
                           EaiDashBoardBean eaiDashBoardBean = new EaiDashBoardBean();
                           eaiDashBoardBean.setQuotesDate(rset.getDate(1));
                           eaiDashBoardBean.setCsflownordcount(rset.getString(2));
                           eaiDashBoardBeanList.add(eaiDashBoardBean);

                       }

                       queryString =
                           "SELECT CS_Quotes_Flown_Sum\n" +
                           "FROM\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS CS_Quotes_Flown_Sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='QUOTES_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))";

                       stmt = conn.createStatement();
                       rset = stmt.executeQuery(queryString);
                       while (rset.next()) {
                           EaiDashBoardBean eaiDashBoardBean = new EaiDashBoardBean();
                           if(rset.getString(1)==null )
                           {
                               eaiDashBoardBean.setCsflownordcountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setCsflownordcountSum(rset.getString(1));
                           }
                           eaiDashBoardBeanList.add(eaiDashBoardBean);

                       }

                   }


                  if(interfaceName.equalsIgnoreCase("Accounts"))
                  {

                       queryString =
                           "SELECT TRUNC(A.dateval) AS dateval,Sap_succ_accmsg_count,Sap_fail_accmsg_count,CS_flown_accmsg_count,CPFG_succ_accmsg_count,CPFG_fail_accmsg_count,\n" +
                           "Tom_succ_accmsg_count,Tom_fail_accmsg_count,crm_trust_succ_accmsg_count,crm_trust_fail_accmsg_count,trust_crm_succ_accmsg_count,trust_crm_fail_accmsg_count,Elm_succ_accmsg_count,Elm_fail_accmsg_count\n" +
                           "FROM\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Sap_succ_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_SAP_SUCC'))A, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Sap_fail_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_SAP_FAIL'))B, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS CS_flown_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_CS_SUCC'))C,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS CPFG_succ_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_CPFG_SUCC'))D, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS CPFG_fail_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_CPFG_FAIL'))E, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Tom_succ_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_TOM_SUCC'))F,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Tom_fail_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_TOM_FAIL'))G, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS crm_trust_succ_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_TRUST_SUCC'))H, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS crm_trust_fail_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_TRUST_FAIL'))I, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS trust_crm_succ_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_TRUST_TO_CRM_SUCC'))J,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS trust_crm_fail_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_TRUST_TO_CRM_FAIL'))K,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Elm_succ_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_ELM_SUCC'))L,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS Elm_fail_accmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_ELM_FAIL'))M\n" +
                           "WHERE A.dateval=B.dateval \n" +
                           "AND C.dateval=B.dateval\n" +
                           "AND D.dateval=C.dateval\n" +
                           "AND E.dateval=D.dateval\n" +
                           "AND F.dateval=E.dateval\n" +
                           "AND G.dateval=F.dateval\n" +
                           "AND H.dateval=G.dateval\n" +
                           "AND I.dateval=H.dateval\n" +
                           "AND J.dateval=I.dateval\n" +
                           "AND K.dateval=J.dateval\n" +
                           "AND L.dateval(+)=K.dateval\n" +
                           "AND M.dateval(+)=L.dateval\n" +
                           "AND TRUNC(A.dateval) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy') ORDER BY A.dateval";

                       stmt = conn.createStatement();
                       rset = stmt.executeQuery(queryString);

                       while (rset.next()) {
                           EaiDashBoardBean eaiDashBoardBean = new EaiDashBoardBean();
                           eaiDashBoardBean.setAccdate(rset.getDate(1));
                           eaiDashBoardBean.setSapSuccAccCount(rset.getString(2));
                           eaiDashBoardBean.setSapFailAccCount(rset.getString(3));
                           eaiDashBoardBean.setCsFlownAccCount(rset.getString(4));
                           eaiDashBoardBean.setCpfgSuccAccCount(rset.getString(5));
                           eaiDashBoardBean.setCpfgFailAccCount(rset.getString(6));
                           eaiDashBoardBean.setTomSuccAccCount(rset.getString(7));
                           eaiDashBoardBean.setTomFailAccCount(rset.getString(8));
                           eaiDashBoardBean.setCrmTrustSuccAccCount(rset.getString(9));
                           eaiDashBoardBean.setCrmTrustFailAccCount(rset.getString(10));
                           eaiDashBoardBean.setTrustCrmSuccAccCount(rset.getString(11));
                           eaiDashBoardBean.setTrustCrmFailAccCount(rset.getString(12));    
                           
                         if(rset.getString(13)==null )
                         {
                             eaiDashBoardBean.setElmSuccAccCount("0");
                         }
                         else
                         {
                           eaiDashBoardBean.setElmSuccAccCount(rset.getString(13));
                         }
                         if(rset.getString(14)==null )
                         {
                             eaiDashBoardBean.setElmFailAccCount("0");
                         }
                         else
                         {
                           eaiDashBoardBean.setElmFailAccCount(rset.getString(14));
                         }
                           
                           eaiDashBoardBeanList.add(eaiDashBoardBean);
                       }

                      queryString =
                           "SELECT Sap_succ_accmsg_countSum,Sap_fail_accmsg_countSum,CS_flown_accmsg_countSum,CPFG_succ_accmsg_countSum,CPFG_fail_accmsg_countSum,\n" +
                           "Tom_succ_accmsg_countSum,Tom_fail_accmsg_countSum,crm_trust_succ_accmsg_countSum,crm_trust_fail_accmsg_countSum,trust_crm_succ_accmsg_countSum,trust_crm_fail_accmsg_countSum,Elm_succ_accmsg_countSum,Elm_fail_accmsg_countSum\n" +
                           "FROM\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS Sap_succ_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_SAP_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))A, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS Sap_fail_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_SAP_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))B, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS CS_flown_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_CS_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))C,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS CPFG_succ_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_CPFG_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))D, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS CPFG_fail_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_CPFG_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))E, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS Tom_succ_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_TOM_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))F,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS Tom_fail_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_TOM_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))G, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS crm_trust_succ_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_TRUST_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))H, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS crm_trust_fail_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_TRUST_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))I, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS trust_crm_succ_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_TRUST_TO_CRM_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))J,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS trust_crm_fail_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_TRUST_TO_CRM_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))K,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS Elm_succ_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_ELM_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))L,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS Elm_fail_accmsg_countSum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='ACC_CRM_TO_ELM_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))M\n";

                       stmt = conn.createStatement();
                       rset = stmt.executeQuery(queryString);

                       while (rset.next()) {
                           EaiDashBoardBean eaiDashBoardBean = new EaiDashBoardBean();
                           if(rset.getString(1)==null )
                           {
                               eaiDashBoardBean.setSapSuccAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setSapSuccAccCountSum(rset.getString(1));
                           }
                           if(rset.getString(2)==null )
                           {
                               eaiDashBoardBean.setSapFailAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setSapFailAccCountSum(rset.getString(2));
                           }
                           if(rset.getString(3)==null )
                           {
                               eaiDashBoardBean.setCsFlownAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setCsFlownAccCountSum(rset.getString(3));
                           }
                           if(rset.getString(4)==null )
                           {
                               eaiDashBoardBean.setCpfgSuccAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setCpfgSuccAccCountSum(rset.getString(4));
                           }
                           if(rset.getString(5)==null )
                           {
                               eaiDashBoardBean.setCpfgFailAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setCpfgFailAccCountSum(rset.getString(5));
                           }
                           if(rset.getString(6)==null )
                           {
                               eaiDashBoardBean.setTomSuccAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setTomSuccAccCountSum(rset.getString(6));
                           }
                           if(rset.getString(7)==null )
                           {
                               eaiDashBoardBean.setTomFailAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setTomFailAccCountSum(rset.getString(7));
                           }
                           if(rset.getString(8)==null )
                           {
                               eaiDashBoardBean.setCrmTrustSuccAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setCrmTrustSuccAccCountSum(rset.getString(8));
                           }
                           if(rset.getString(9)==null )
                           {
                               eaiDashBoardBean.setCrmTrustFailAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setCrmTrustFailAccCountSum(rset.getString(9));
                           }
                           if(rset.getString(10)==null )
                           {
                               eaiDashBoardBean.setTrustCrmSuccAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setTrustCrmSuccAccCountSum(rset.getString(10));
                           }
                           if(rset.getString(11)==null )
                           {
                               eaiDashBoardBean.setTrustCrmFailAccCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setTrustCrmFailAccCountSum(rset.getString(11));
                           }

                           if(rset.getString(12)==null )
						   {
						   	eaiDashBoardBean.setElmSuccAccCountSum("0");
						   }
						   else
						   {
						   	eaiDashBoardBean.setElmSuccAccCountSum(rset.getString(12));
                           }

                           if(rset.getString(13)==null )
						   {
						   	eaiDashBoardBean.setElmFailAccCountSum("0");
						   }
						   else
						   {
						   	eaiDashBoardBean.setElmFailAccCountSum(rset.getString(13));
                           }
                           eaiDashBoardBean.setSapSuccAccCountTotal("Total");
                           eaiDashBoardBeanList.add(eaiDashBoardBean);

                       }

                   }


                  if(interfaceName.equalsIgnoreCase("Opportunities"))
                  {

                       queryString =
                           "SELECT TRUNC(A.dateval) AS dateval,crm_trust_succ_optymsg_count,crm_trust_fail_optymsg_count,trust_crm_succ_optymsg_count,trust_crm_fail_optymsg_count\n" +
                           "FROM\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS crm_trust_succ_optymsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='OPTY_CRM_TRUST_SUCC'))A, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS crm_trust_fail_optymsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='OPTY_CRM_TRUST_FAIL'))B, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS trust_crm_succ_optymsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='OPTY_TRUST_CRM_SUCC'))C,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS trust_crm_fail_optymsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='OPTY_TRUST_CRM_FAIL'))D\n" +
                           "WHERE A.dateval=B.dateval \n" +
                           "AND C.dateval=B.dateval\n" +
                           "AND D.dateval=C.dateval\n" +
                           "AND TRUNC(A.dateval) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy') ORDER BY A.dateval";

                       stmt = conn.createStatement();
                       rset = stmt.executeQuery(queryString);
                       while (rset.next()) {
                           EaiDashBoardBean eaiDashBoardBean = new EaiDashBoardBean();
                           eaiDashBoardBean.setOptyDate(rset.getDate(1));
                           eaiDashBoardBean.setCrmTrustSuccOptyCount(rset.getString(2));
                           eaiDashBoardBean.setCrmTrustFailOptyCount(rset.getString(3));
                           eaiDashBoardBean.setTrustCrmSuccOptyCount(rset.getString(4));
                           eaiDashBoardBean.setTrustCrmFailOptyCount(rset.getString(5));
                           eaiDashBoardBeanList.add(eaiDashBoardBean);

                       }

                       queryString =
                           "SELECT crm_trust_succ_optymsg_sum,crm_trust_fail_optymsg_sum,trust_crm_succ_optymsg_sum,trust_crm_fail_optymsg_sum\n" +
                           "FROM\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS crm_trust_succ_optymsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='OPTY_CRM_TRUST_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))A, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS crm_trust_fail_optymsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='OPTY_CRM_TRUST_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))B, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS trust_crm_succ_optymsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='OPTY_TRUST_CRM_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))C,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS trust_crm_fail_optymsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='OPTY_TRUST_CRM_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))D";

                       stmt = conn.createStatement();
                       rset = stmt.executeQuery(queryString);
                       while (rset.next()) {
                           EaiDashBoardBean eaiDashBoardBean = new EaiDashBoardBean();
                           if(rset.getString(1)==null )
                           {
                               eaiDashBoardBean.setCrmTrustSuccOptyCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setCrmTrustSuccOptyCountSum(rset.getString(1));
                           }
                           if(rset.getString(2)==null )
                           {
                               eaiDashBoardBean.setCrmTrustFailOptyCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setCrmTrustFailOptyCountSum(rset.getString(2));
                           }
                           if(rset.getString(3)==null )
                           {
                               eaiDashBoardBean.setTrustCrmSuccOptyCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setTrustCrmSuccOptyCountSum(rset.getString(3));
                           }
                           if(rset.getString(4)==null )
                           {
                               eaiDashBoardBean.setTrustCrmFailOptyCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setTrustCrmFailOptyCountSum(rset.getString(4));
                           }
                           eaiDashBoardBeanList.add(eaiDashBoardBean);

                       }


                   }

                  if(interfaceName.equalsIgnoreCase("Contacts"))
                  {

                       queryString =
                           "SELECT TRUNC(A.dateval) AS dateval,sap_succ_contctmsg_count,sap_fail_contctmsg_count,cpfg_succ_contctmsg_count,cpfg_fail_contctmsg_count,\n" +
                           "tom_succ_contctmsg_count,tom_fail_contctmsg_count,crm_trust_succ_contctmsg_count,crm_trust_fail_contctmsg_count,trust_crm_succ_contctmsg_count,trust_crm_fail_contctmsg_count\n" +
                           "FROM\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS sap_succ_contctmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_SAP_SUCC'))A, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS sap_fail_contctmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_SAP_FAIL'))B, \n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS cpfg_succ_contctmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_CPFG_SUCC'))C,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS cpfg_fail_contctmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_CPFG_FAIL'))D,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS tom_succ_contctmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_TOM_SUCC'))E,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS tom_fail_contctmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_TOM_FAIL'))F,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS crm_trust_succ_contctmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_TO_TRUST_SUCC'))G,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS crm_trust_fail_contctmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_TO_TRUST_FAIL'))H,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS trust_crm_succ_contctmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_TRUST_TO_CRM_SUCC'))I,\n" +
                           "(SELECT INTERFACE_ID,TRUNC(MESSAGE_DATE) AS dateval,MESSAGE_COUNT AS trust_crm_fail_contctmsg_count FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_TRUST_TO_CRM_FAIL'))J \n" +
                           "WHERE A.dateval=B.dateval \n" +
                           "AND C.dateval=B.dateval\n" +
                           "AND D.dateval=C.dateval\n" +
                           "AND E.dateval=D.dateval\n" +
                           "AND F.dateval=E.dateval\n" +
                           "AND G.dateval(+)=F.dateval\n" +
                           "AND H.dateval(+)=G.dateval\n" +
                           "AND I.dateval(+)=H.dateval\n" +
                           "AND J.dateval(+)=I.dateval\n" +
                           "AND TRUNC(A.dateval) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy') ORDER BY A.dateval";

                       stmt = conn.createStatement();
                       rset = stmt.executeQuery(queryString);
                       while (rset.next()) {
                           EaiDashBoardBean eaiDashBoardBean = new EaiDashBoardBean();
                           eaiDashBoardBean.setContactDate(rset.getDate(1));
                           eaiDashBoardBean.setSapSuccContactCount(rset.getString(2));
                           eaiDashBoardBean.setSapFailContactCount(rset.getString(3));
                           eaiDashBoardBean.setCpfgSuccContactCount(rset.getString(4));
                           eaiDashBoardBean.setCpfgFailContactCount(rset.getString(5));
                           eaiDashBoardBean.setTomSuccContactCount(rset.getString(6));
                           eaiDashBoardBean.setTomFailContactCount(rset.getString(7));                         
                
                         if(rset.getString(8)==null )
                         {
                             eaiDashBoardBean.setCrmTrustSuccContactCount("0");
                         }
                         else
                         {
                           eaiDashBoardBean.setCrmTrustSuccContactCount(rset.getString(8));
                         }
                         if(rset.getString(9)==null )
                         {
                             eaiDashBoardBean.setCrmTrustFailContactCount("0");
                         }
                         else
                         {
                           eaiDashBoardBean.setCrmTrustFailContactCount(rset.getString(9));
                         }
                         if(rset.getString(10)==null )
                         {
                             eaiDashBoardBean.setTrustCrmSuccContactCount("0");
                         }
                         else
                         {
                           eaiDashBoardBean.setTrustCrmSuccContactCount(rset.getString(10));
                         }
                         if(rset.getString(11)==null )
                         {
                             eaiDashBoardBean.setTrustCrmFailContactCount("0");
                         }
                         else
                         {
                           eaiDashBoardBean.setTrustCrmFailContactCount(rset.getString(11));
                         }                         
                           eaiDashBoardBeanList.add(eaiDashBoardBean);

                       }
              
                       queryString =
                           "SELECT sap_succ_contctmsg_sum,sap_fail_contctmsg_sum,cpfg_succ_contctmsg_sum,cpfg_fail_contctmsg_sum,\n" +
                           "tom_succ_contctmsg_sum,tom_fail_contctmsg_sum,crm_trust_succ_contctmsg_sum,crm_trust_fail_contctmsg_sum,trust_crm_succ_contctmsg_sum,trust_crm_fail_contctmsg_sum\n" +
                           "FROM\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS sap_succ_contctmsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_SAP_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))A, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS sap_fail_contctmsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_SAP_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))B, \n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS cpfg_succ_contctmsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_CPFG_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))C,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS cpfg_fail_contctmsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_CPFG_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))D,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS tom_succ_contctmsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_TOM_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy') )E,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS tom_fail_contctmsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_TOM_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy'))F,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS crm_trust_succ_contctmsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_TO_TRUST_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy') )G,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS crm_trust_fail_contctmsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_CRM_TO_TRUST_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy') )H,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS trust_crm_succ_contctmsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_TRUST_TO_CRM_SUCC') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy') )I,\n" +
                           "(SELECT SUM(MESSAGE_COUNT) AS trust_crm_fail_contctmsg_sum FROM EAI_DASHBOARD WHERE INTERFACE_ID in (SELECT INTERFACE_ID FROM SOA_EAIOWNER.EAI_INTERFACE_IDS WHERE INTERFACE_NAME='CONT_TRUST_TO_CRM_FAIL') AND TRUNC(MESSAGE_DATE) BETWEEN  TO_DATE('"+fromDate+"','mm/dd/yyyy')\n" +
                           "AND TO_DATE('"+todate+"','mm/dd/yyyy') )J";
                       
                       stmt = conn.createStatement();
                       rset = stmt.executeQuery(queryString);
                       while (rset.next()) {
                           EaiDashBoardBean eaiDashBoardBean = new EaiDashBoardBean();
                           if(rset.getString(1)==null )
                           {
                               eaiDashBoardBean.setSapSuccContactCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setSapSuccContactCountSum(rset.getString(1));
                           }
                           if(rset.getString(2)==null )
                           {
                               eaiDashBoardBean.setSapFailContactCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setSapFailContactCountSum(rset.getString(2));
                           }
                           if(rset.getString(3)==null )
                           {
                               eaiDashBoardBean.setCpfgSuccContactCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setCpfgSuccContactCountSum(rset.getString(3));
                           }
                           if(rset.getString(4)==null )
                           {
                               eaiDashBoardBean.setCpfgFailContactCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setCpfgFailContactCountSum(rset.getString(4));
                           }
                           if(rset.getString(5)==null )
                           {
                               eaiDashBoardBean.setTomSuccContactCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setTomSuccContactCountSum(rset.getString(5));
                           }
                           if(rset.getString(6)==null )
                           {
                               eaiDashBoardBean.setTomFailContactCountSum("0");
                           }
                           else
                           {
                           eaiDashBoardBean.setTomFailContactCountSum(rset.getString(6));
                           }
                         if(rset.getString(7)==null )
                         {
                             eaiDashBoardBean.setCrmTrustSuccContactCountSum("0");
                         }
                         else
                         {
                         eaiDashBoardBean.setCrmTrustSuccContactCountSum(rset.getString(7));
                         }
                         if(rset.getString(8)==null )
                         {
                           eaiDashBoardBean.setCrmTrustFailContactCountSum("0");
                         }
                         else
                         {
                         eaiDashBoardBean.setCrmTrustFailContactCountSum(rset.getString(8));
                         }
                         if(rset.getString(9)==null )
                         {
                           eaiDashBoardBean.setTrustCrmSuccContactCountSum("0");
                         }
                         else
                         {
                         eaiDashBoardBean.setTrustCrmSuccContactCountSum(rset.getString(9));
                         }
                         if(rset.getString(10)==null )
                         {
                           eaiDashBoardBean.setTrustCrmFailContactCountSum("0");
                         }
                         else
                         {
                         eaiDashBoardBean.setTrustCrmFailContactCountSum(rset.getString(10));
                         }
                           
                           eaiDashBoardBeanList.add(eaiDashBoardBean);

                       }
                       

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
              return eaiDashBoardBeanList;
        }
}
