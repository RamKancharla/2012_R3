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
  ArrayList<StruckOrdersTOMToSiebelBean> struckOrdersDetailsTOMToSiebel = new ArrayList<StruckOrdersTOMToSiebelBean>();
  struckOrdersDetailsTOMToSiebel=struckOrdersDetails.getStruckOrdersTOMToSiebel();
  %>
          
 <table width="100%" >           
            <tr>
             <td height="31">
                 <center> <h3>  TOM to Siebel -Orders</h3></center>
                </td>
            </tr>
        </table>
        
        <%
            if(struckOrdersDetailsTOMToSiebel.size()>0)
            {
        %>
        
         <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold "  ><b>PROCESS NAME</b></th> 
                        <th class="bodytextbold "  ><b>INSTANCE ID</b></th>  
                        <th class="bodytextbold "  ><b>TRUST ACCOUNT</b></th> 
                        <th class="bodytextbold " ><b>MODIFY DATE</b></th> 
                        <th class="bodytextbold " ><b>ERROR MESSAGE</b></th>
                        <th class="bodytextbold " ><b>ORIGINATIN SYSTEM</b></th>
                        <th class="bodytextbold " ><b>RESOLVING SYSTEM</b></th>
                    </tr>					 
            </thead>
            <tbody>
                     <%
                                
                       try{
                           for(int i=0;i<struckOrdersDetailsTOMToSiebel.size();i++)
                           {
                           StruckOrdersTOMToSiebelBean struckOrdersTOMToSiebelBean=new StruckOrdersTOMToSiebelBean();
                           struckOrdersTOMToSiebelBean=(StruckOrdersTOMToSiebelBean)struckOrdersDetailsTOMToSiebel.get(i);
                      %>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersTOMToSiebelBean.getProcessName()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersTOMToSiebelBean.getInstanceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersTOMToSiebelBean.getTrustAccount()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersTOMToSiebelBean.getModifiedDate()%></td>                                       
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersTOMToSiebelBean.getErrorMessage()%></td>                                     
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersTOMToSiebelBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersTOMToSiebelBean.getResolvingSystem()%></td>
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
                        <th class="bodytextbold "  ><b>PROCESS NAME</b></th> 
                        <th class="bodytextbold "  ><b>INSTANCE ID</b></th>  
                        <th class="bodytextbold "  ><b>TRUST ACCOUNT</b></th> 
                        <th class="bodytextbold " ><b>MODIFY DATE</b></th> 
                        <th class="bodytextbold " ><b>ERROR MESSAGE</b></th>
                        <th class="bodytextbold " ><b>ORIGINATIN SYSTEM</b></th>
                        <th class="bodytextbold " ><b>RESOLVING SYSTEM</b></th>
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
