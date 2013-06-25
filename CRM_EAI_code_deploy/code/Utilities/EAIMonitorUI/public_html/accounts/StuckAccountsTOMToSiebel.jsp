<%@page import= "java.util.*" %>
<%@page import= "com.struckaccounts.*" %>


<html>
  <head>    
     <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" > 
  </head>
  <body>
  
  <%
  StruckAccountsDetails struckAccountsDetails = new StruckAccountsDetails();
  ArrayList<StruckAccountsTOMToSiebelBean> struckAccountsDetailsTOMToSiebel = new ArrayList<StruckAccountsTOMToSiebelBean>();
  struckAccountsDetailsTOMToSiebel=struckAccountsDetails.getStruckAccountsTOMToSiebel();
  %>
          
 <table width="100%" >           
            <tr>
             <td height="31">
                 <center> <h3>  TOM to Siebel -Accounts</h3></center>
                </td>
            </tr>
        </table>
        
        <%
            if(struckAccountsDetailsTOMToSiebel.size()>0)
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
                           for(int i=0;i<struckAccountsDetailsTOMToSiebel.size();i++)
                           {
                           StruckAccountsTOMToSiebelBean struckAccountsTOMToSiebelBean=new StruckAccountsTOMToSiebelBean();
                           struckAccountsTOMToSiebelBean=(StruckAccountsTOMToSiebelBean)struckAccountsDetailsTOMToSiebel.get(i);
                      %>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsTOMToSiebelBean.getProcessName()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsTOMToSiebelBean.getInstanceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsTOMToSiebelBean.getTrustAccount()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsTOMToSiebelBean.getModifiedDate()%></td>                                       
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsTOMToSiebelBean.getErrorMessage()%></td>                                      
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsTOMToSiebelBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsTOMToSiebelBean.getResolvingSystem()%></td>
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
