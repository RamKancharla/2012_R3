package com.tr.eai.console.sif;


import org.apache.axiom.om.OMElement;
import org.apache.axis2.AxisFault;
import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.client.Options;
import org.apache.axis2.client.ServiceClient;
import org.apache.axis2.util.XMLUtils;

import org.w3c.dom.Document;

import com.tr.eai.console.utils.XMLUtil;

import com.tr.eai.console.vo.InputObject;
import com.tr.eai.console.vo.WebservicesVO;


public class CompositeServiceInvocation implements ServiceInvoke {

 
  public Object getService(InputObject input,
                           WebservicesVO webserviceVO,Object obj) throws Exception {
    Document doc=null;
    Document ReturnXML = null;
    OMElement method=null;
    Options options = new Options();
    String xml = input.getInputPayload();
    doc = XMLUtil.convertToDOM(xml);
     method =XMLUtils.toOM(doc.getDocumentElement());
    options.setAction(input.getSOprName());
    //Getting the service end-point to parse the WSDL
    EndpointReference ep = new EndpointReference(input.getSServiceEndPoint());
    //Specifying the operation name that is to get executed
    // set where the web service request should be sent
    options.setTo(ep);
    options.setSoapVersionURI("http://schemas.xmlsoap.org/soap/envelope/");
    ServiceClient serviceClient = null;
    try {
      serviceClient = new ServiceClient();
    } catch (AxisFault e) {
     
    }
    serviceClient.setOptions(options);
    OMElement result = null;
    //Sending the input for invoking the webservice
    if (!webserviceVO.isBOutput()) {
      try {
        serviceClient.sendRobust(method);        
      } catch (AxisFault e) {
       
        
      }
   } else {
      try {
        result = (serviceClient.sendReceive(method));       
     } catch (AxisFault e) {
       
      }
      
      String s =result.toString();      
    }
    return obj;
  }
  

}
