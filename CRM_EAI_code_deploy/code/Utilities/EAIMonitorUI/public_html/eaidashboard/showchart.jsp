<%@ page import="com.eaidashboard.chart.*,org.jfree.chart.*,java.io.*,java.net.URL" %>

<%

response.reset(); 
//response.setContentType("image/jpeg");
   String ChartNameVal = request.getParameter("ChartName");

  String CrmTrustSuccAccCount = request.getParameter("SuccVAl");

  String CrmTrustFailAccCount = request.getParameter("FailVal");
  

  String TrustCrmSuccAccCount = request.getParameter("SuccVAl");

  String TrustCrmFailAccCount = request.getParameter("FailVal");
 

  String CrmTrustSuccOpptCount = request.getParameter("SuccVAl");

  String CrmTrustFailOpptCount = request.getParameter("FailVal");

 

  String TrustCrmSuccOpptCount = request.getParameter("SuccVAl");

  String TrustCrmFailOpptCount = request.getParameter("FailVal");

 

 

if( ChartNameVal.equalsIgnoreCase("CRMtoTrustAcc"))

{

  AccountsSiebelToTRUST accountsSiebelToTRUST= new AccountsSiebelToTRUST("CrmtrustAcc");

  JFreeChart chart1=accountsSiebelToTRUST.getAccountValues(CrmTrustSuccAccCount,CrmTrustFailAccCount);

   ChartUtilities.writeChartAsJPEG(response.getOutputStream(),chart1,500,350);

}

 

if( ChartNameVal.equalsIgnoreCase("TrusttoCRMAcc"))

{

    AccountsTRUSTToSiebel accountsTRUSTToSiebel= new AccountsTRUSTToSiebel("TrustCrmAcc");

  JFreeChart chart2=accountsTRUSTToSiebel.getAccountValues(TrustCrmSuccAccCount,TrustCrmFailAccCount);

  ChartUtilities.writeChartAsJPEG(response.getOutputStream(),chart2,500,350);

}

 

if( ChartNameVal.equalsIgnoreCase("CRMtoTrustOpty"))

{

    OpptiesSiebelToTRUST opptiesSiebelToTRUST= new OpptiesSiebelToTRUST("CrmtrustOppt");

  JFreeChart chart3=opptiesSiebelToTRUST.getOpptyValues(CrmTrustSuccOpptCount,CrmTrustFailOpptCount);

   ChartUtilities.writeChartAsJPEG(response.getOutputStream(),chart3,500,350);

}

 

if( ChartNameVal.equalsIgnoreCase("TrusttoCRMOpty"))

{

   OpptiesTRUSTToSiebel opptiesTRUSTToSiebel= new OpptiesTRUSTToSiebel("TrustCrmOppt");

  JFreeChart chart4=opptiesTRUSTToSiebel.getOpptyValues(TrustCrmSuccOpptCount,TrustCrmFailOpptCount);

   ChartUtilities.writeChartAsJPEG(response.getOutputStream(),chart4,500,350);

}

       

      

        out.close();

  %>