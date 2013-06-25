package com.tr.eai.console.sif;

import com.tr.eai.console.vo.InputObject;
import com.tr.eai.console.vo.WebservicesVO;


public interface ServiceInvoke {

    /**
     * Create a new getService. There must be exactly one
     * service in this service invocation. For 
     * @param input the parameters needed for getting service and the webVO the value object
     * @return Object
     * @exception Exception if something goes wrong
     */

    public Object getService(InputObject input,WebservicesVO webVO,Object obj) throws Exception ;
}