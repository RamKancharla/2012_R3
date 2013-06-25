package com.tr.eai.console.sif;


import com.tr.eai.console.utils.StaxParser;
import com.tr.eai.console.vo.InputObject;

import com.tr.eai.console.vo.WebservicesVO;

import java.io.IOException;



public class ServiceInvoker {

  InputObject oInputObj;

  private static ServiceInvoker _instance;


  public static ServiceInvoker getInstance() {
    if (_instance == null) {
      synchronized (ServiceInvoker.class) {
        if (_instance == null)
          _instance = new ServiceInvoker();
      }
    }
    return _instance;
  }


  public ServiceInvoker() {
    oInputObj = new InputObject();
  
  }

  public void setOInputObj(InputObject oInputObj) {
    this.oInputObj = oInputObj;
  }

  public InputObject getOInputObj() {
    return oInputObj;
  }


  /**
   * method invokeService
   * @param oInputObj
   * @return Object
   * @throws WSIFException
   * @description  FACTORY METHOD FOR SERVICE CLASS INVOCATION
   *
   */
  public Object invokeService(InputObject oInputObj,Object oOutput) throws IOException,
                                                            Exception {
    
    ServiceInvoke service = null;
    WebservicesVO webserviceVO = StaxParser.wsdlParsing(oInputObj);
   
    System.out.println("webservice vo="+webserviceVO);
   
      service = new CompositeServiceInvocation();
   
    return service.getService(oInputObj, webserviceVO,oOutput);
  }
}
