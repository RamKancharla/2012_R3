<%@page import= "java.util.*" %>
<%@page import= "com.struckcontacts.*" %>


<html>
  <head>    
     <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" > 
  </head>
  <body>
  
  <%
  StruckContactsDetails struckContactsDetails = new StruckContactsDetails();
  ArrayList<StruckContactsCPFGToSiebelBean> struckContactsDetailsCPFGToSiebel = new ArrayList<StruckContactsCPFGToSiebelBean>();
  struckContactsDetailsCPFGToSiebel=struckContactsDetails.getStruckContactsCPFGToSiebel();
  %>
          
 <table width="100%" >           
            <tr>
             <td height="31">
                 <center> <h3>  CPFG to Siebel -Contacts</h3></center>
                </td>
            </tr>
        </table>
        
        <%
            if(struckContactsDetailsCPFGToSiebel.size()>0)
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
                           for(int i=0;i<struckContactsDetailsCPFGToSiebel.size();i++)
                           {
                           StruckContactsCPFGToSiebelBean struckContactsCPFGToSiebelBean=new StruckContactsCPFGToSiebelBean();
                           struckContactsCPFGToSiebelBean=(StruckContactsCPFGToSiebelBean)struckContactsDetailsCPFGToSiebel.get(i);
                      %>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsCPFGToSiebelBean.getProcessName()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsCPFGToSiebelBean.getInstanceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsCPFGToSiebelBean.getTrustAccount()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsCPFGToSiebelBean.getModifiedDate()%></td>                                     
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsCPFGToSiebelBean.getErrorMessage()%></td>                                    
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsCPFGToSiebelBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsCPFGToSiebelBean.getResolvingSystem()%></td>
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
