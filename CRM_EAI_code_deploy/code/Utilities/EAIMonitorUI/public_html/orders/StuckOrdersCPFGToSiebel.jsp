<%@page import= "java.util.*" %>
<%@page import= "com.struckorders.*" %>


<html>
  <head>    
     <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" > 
  </head>
  <body>
  
  <%
  StruckOrdersDetails struckOrdersDetails = new StruckOrdersDetails();
  ArrayList<StruckOrdersCPFGToSiebelBean> struckOrdersDetailsCPFGToSiebel = new ArrayList<StruckOrdersCPFGToSiebelBean>();
  struckOrdersDetailsCPFGToSiebel=struckOrdersDetails.getStruckOrdersCPFGToSiebel();
  %>
          
 <table width="100%" >           
            <tr>
             <td height="31">
                 <center> <h3>  CPFG to Siebel -Orders</h3></center>
                </td>
            </tr>
        </table>
        
        <%
            if(struckOrdersDetailsCPFGToSiebel.size()>0)
            {
        %>
        
         <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold "  ><b>Process Name</b></th> 
                        <th class="bodytextbold "  ><b>Instance ID</b></th>  
                        <th class="bodytextbold "  ><b>TRUST Account</b></th> 
                        <th class="bodytextbold " ><b>Modify Date</b></th> 
                        <th class="bodytextbold " ><b>Error Message</b></th>
                        <th class="bodytextbold " ><b>Originating System</b></th>
                        <th class="bodytextbold " ><b>Resolving System</b></th>
                    </tr>					 
            </thead>
            <tbody>
                     <%
                                
                       try{
                           for(int i=0;i<struckOrdersDetailsCPFGToSiebel.size();i++)
                           {
                           StruckOrdersCPFGToSiebelBean struckOrdersCPFGToSiebelBean=new StruckOrdersCPFGToSiebelBean();
                           struckOrdersCPFGToSiebelBean=(StruckOrdersCPFGToSiebelBean)struckOrdersDetailsCPFGToSiebel.get(i);
                      %>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersCPFGToSiebelBean.getProcessName()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersCPFGToSiebelBean.getInstanceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersCPFGToSiebelBean.getTrustAccount()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersCPFGToSiebelBean.getModifiedDate()%></td>                                      
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersCPFGToSiebelBean.getErrorMessage()%></td>                                      
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersCPFGToSiebelBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersCPFGToSiebelBean.getResolvingSystem()%></td>
                                  </tr> 
                                    
                             <%  
                             }
                                    
                                }catch(Exception e){
                                }
                           %>
                        	  
                    </tbody>
            </table>
        
          <%  }else
            {
            %>
            
            <table  cellpadding="4"  class="tableborderNORow"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold "  ><b>Process Name</b></th> 
                        <th class="bodytextbold "  ><b>Instance ID</b></th>  
                        <th class="bodytextbold "  ><b>TRUST Account</b></th> 
                        <th class="bodytextbold " ><b>Modify Date</b></th> 
                        <th class="bodytextbold " ><b>Error Message</b></th>
                        <th class="bodytextbold " ><b>Originating System</b></th>
                        <th class="bodytextbold " ><b>Resolving System</b></th>
                    </tr>					 
            </thead>
            <tbody>
                <tr class="tableRowGrey">
                     <td align="left" >*No Rows Fetched</td>
                 </tr>   
            </tbody>
            
            </table>
            
         <%   }
            
        %>
        
        
       
            <br>     <br>     <br> 
    </body>
</html>
