<%@page contentType="text/xml;charset=windows-1252"%>
<%@page import= "java.util.*"%>
<%@page import= "com.tr.eai.console.search.*,com.tr.eai.console.bean.*,com.tr.eai.console.reinitiate.*, java.io.InputStream, java.net.URL"%>
<html>
  <body>
 
  <%  
   ReInitiateCompositeInstance reInitiateCompositeInstance = new ReInitiateCompositeInstance();    
   String ecid = request.getParameter("ecid");
   String instanceId = request.getParameter("instanceId");
   String compositeDN = request.getParameter("compositeDN");
   String payload= reInitiateCompositeInstance.getPayLoad(instanceId,ecid,compositeDN);
   out.println(payload);
 
  %>
  
  
   
 
  </body>
</html>
