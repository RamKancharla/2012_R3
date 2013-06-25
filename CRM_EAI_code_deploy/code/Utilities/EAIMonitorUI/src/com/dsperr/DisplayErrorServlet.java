package com.dsperr;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Properties;
import javax.servlet.*;
import javax.servlet.http.*;

public class DisplayErrorServlet extends HttpServlet {
    private static final String CONTENT_TYPE = "text/html; charset=windows-1252";

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    public void doPost(HttpServletRequest request,
                      HttpServletResponse response) throws ServletException, IOException {response.setContentType(CONTENT_TYPE);

        HttpSession session = request.getSession(true);
        ServletContext servcontext = getServletContext();
        URL myURL=servcontext.getResource("/WEB-INF/EAIMonitorUI.properties");
        InputStream in = myURL.openStream();
        Properties p = new Properties();
        p.load(in);
        String trustURL=p.getProperty("trust");
        String siebeloppty=p.getProperty("siebeloppty");
        String siebelacct=p.getProperty("siebelacct");
        String type=request.getParameter("queryType");
        String contextId = request.getParameter("contextId");
        String context = request.getParameter("context");
        String StuckContacts=request.getParameter("StuckContacts");
		 //CR 22314 change
		contextId = contextId.trim();
        int totalRecordsCount = 0;
        //CR 22314 change

        String timeduration = request.getParameter("timeduration");
        int numrecords=Integer.parseInt(request.getParameter("norecords"));
        DisplayErrorMessage ed=new DisplayErrorMessage();
        ArrayList<DisplayErrorMessageVO> errors=null;
        if(session.getAttribute("numRecords")==null){
            session.setAttribute("numRecords",Integer.toString(numrecords));
        }
        if(session.getAttribute("currPage")==null){
            session.setAttribute("currPage","0");
        }

        String URL="";
        if(type.equalsIgnoreCase("csv")){
            PrintWriter out = response.getWriter();
            response.setContentType("text/csv");
            String disposition = "attachment; fileName=errors.csv";
            response.setHeader("Content-Disposition", disposition);
            errors=ed.loadErrorDetails(contextId,context,timeduration,0,0);
            totalRecordsCount = ed.getTotalRecordCount(contextId,context,timeduration);
            out.append("RecordID,Interface,Error Message,Originating System,Resolving System,Last Updated DateTime"+"\n");
            //out.append(request.getParameter("norecords")).append(contextId).append(",").append(context).append(",").append(timeduration).append("\n");
            Iterator it=errors.iterator();
                while(it.hasNext()){
                    DisplayErrorMessageVO errorVO=(DisplayErrorMessageVO)it.next();
                    if(context.equalsIgnoreCase("trustToCrmAcc") ||context.equalsIgnoreCase("trustToCrmContact")|| context.equalsIgnoreCase("trustToCrmOpty")){
                        URL=trustURL+errorVO.getContextId();
                    }
                    else if(context.equalsIgnoreCase("crmToTrustOpty")){
                        URL=siebeloppty+errorVO.getContextId();
                    }else if(context.equalsIgnoreCase("crmToTrustAcc")){
                        URL=siebelacct+errorVO.getContextId();
                    }else if(context.equalsIgnoreCase("crmToTrustContact")){
                        URL=StuckContacts+errorVO.getContextId();
                    }
                    String hyperlinkpre="\"=HYPERLINK(\"\""+URL+"\"\",\"\"";
                    String hyperlinkpost="\"\")\"";
                    out.append(hyperlinkpre);
                    out.append(errorVO.getContextId());
                    out.append(hyperlinkpost).append(",");
                    out.append(errorVO.getContext()).append(",");
                    String errorMessage=(errorVO.getErrorMessage()).replaceAll(",",":").replace("\n",";");
                    out.append(errorMessage).append(",");
                    out.append(errorVO.getOriginatingSystem()).append(",");
                    out.append(errorVO.getResolvingSystem()).append(",");
                    out.append(errorVO.getLastModifiedDate()).append(",");
                    out.append("\n");
                }
            out.flush();
            out.close();
        }
        else {
        if (type.equalsIgnoreCase("records")){
            errors=ed.loadErrorDetails(contextId,context,timeduration,1,numrecords);

            if(errors!=null){
                session.setAttribute("currPage","1");
                session.setAttribute("numRecords",Integer.toString(numrecords));
                session.setAttribute("EOR",Boolean.FALSE);
                session.setAttribute("EOL",Boolean.TRUE);

                totalRecordsCount = ed.getTotalRecordCount(contextId,context,timeduration);
				session.setAttribute("TotalRecords",totalRecordsCount);
				if(totalRecordsCount <= numrecords) {
					session.setAttribute("EOR", Boolean.TRUE);
				}
            }

        }
        else if (type.equalsIgnoreCase("next")){
//            if (session.getAttribute("EOR")!=null && ((String)session.getAttribute("EOR")).equalsIgnoreCase("true")){
//                errors=new ArrayList<DisplayErrorMessageVO>();
//            }
//            else if (session.getAttribute("EOL")!=null && ((String)session.getAttribute("EOL")).equalsIgnoreCase("true")){
//                errors=ed.loadErrorDetails(contextId,context,timeduration,1,numrecords);
//                session.setAttribute("EOL","false");
//            }
//            else{
                numrecords= Integer.parseInt((String)session.getAttribute("numRecords"));
                int currPage=Integer.parseInt((String)session.getAttribute("currPage"));
                int startIndex=currPage*numrecords+1;
                int lastIndex=startIndex+numrecords-1;
                errors=ed.loadErrorDetails(contextId,context,timeduration,startIndex,lastIndex);

                if(errors!=null && errors.size()!=0){
                    currPage++;
                    session.setAttribute("currPage",Integer.toString(currPage));
					session.setAttribute("EOL", Boolean.FALSE);

					session.setAttribute("EOR", Boolean.FALSE);
					totalRecordsCount = ed.getTotalRecordCount(contextId,context,timeduration);
					session.setAttribute("TotalRecords",totalRecordsCount);
					if(totalRecordsCount <= lastIndex) {
						session.setAttribute("EOR", Boolean.TRUE);
            		}
                }

        }
        else if (type.equalsIgnoreCase("prev")){
            numrecords= Integer.parseInt((String)session.getAttribute("numRecords"));
            int currPage=Integer.parseInt((String)session.getAttribute("currPage"));

  /*          if (session.getAttribute("EOL")!=null && ((Boolean)session.getAttribute("EOL")).equals(Boolean.TRUE)){
                errors=new ArrayList<DisplayErrorMessageVO>();
            }
            else if (session.getAttribute("EOR")!=null && ((Boolean)session.getAttribute("EOR")).equals(Boolean.TRUE)){
                errors=ed.loadErrorDetails(contextId,context,timeduration,(currPage-1)*numrecords,(currPage-1)*numrecords+numrecords);
                session.setAttribute("EOR",Boolean.FALSE);
            }
            else if(currPage==1){
                errors=new ArrayList<DisplayErrorMessageVO>();
                session.setAttribute("EOL",Boolean.TRUE);
            }
            else{ */

			// Commented by Ramesh K for CR 22314 

                int startIndex=(currPage-2)*numrecords+1;
                int lastIndex=startIndex+numrecords-1;
                errors=ed.loadErrorDetails(contextId,context,timeduration,startIndex,lastIndex);

                if(errors!=null && errors.size()!=0){
                    currPage--;
                    session.setAttribute("currPage",Integer.toString(currPage));
                    session.setAttribute("EOR", Boolean.FALSE);

					session.setAttribute("EOL", Boolean.FALSE);
					if(startIndex == 1) {
						session.setAttribute("EOL", Boolean.TRUE);
					}
                }
           // }
        }


        request.setAttribute("errorDetails",errors);
        RequestDispatcher rd=request.getRequestDispatcher("/accounts/displayErrorMessage.jsp");
        rd.forward(request,response);

        }
    }


}
