package com.tr.eai.console.vo;

public class WebservicesVO {

    public void setSTargetNameSpace(String targetNameSpace) {
        this.sTargetNameSpace = targetNameSpace;
    }

    public String getSTargetNameSpace() {
        return sTargetNameSpace;
    }

    public void setSPortType(String portType) {
        this.sPortType = portType;
    }

    public String getSPortType() {
        return sPortType;
    }
    
    public String toString(){
        return "WebservicesVO[targetNameSpace ="+sTargetNameSpace+"," +
        "portType="+sPortType+", "+
        "WSIFPortName = "+sWsifPortName+", " +
        "SOAPPortName = "+sSoapPortName+", " +
        "oprOutput = "+bOutput+", " +
        "outputObjectName = "+sOutputObjectName+", " +
        "serviceName = "+sServiceName+", " +
        "bpel = "+isBpel+", " +
        "xsdTargetNameSpace = "+xsdTargetNameSPace+"]";
    }
    
    protected String sTargetNameSpace;
    protected String sPortType;
    protected String sWsifPortName;
    protected String sSoapPortName;
    protected boolean bOutput;
    protected boolean bWsifAddress;
    protected String sOutputObjectName;
    protected String sServiceName;
    protected String sSchemaLocation;
    protected String sXsdNameSpace;
    protected String sResponseElementName;
    protected boolean isBpel;
    protected String xsdTargetNameSPace;
    

    public void setSWsifPortName(String wsifPortName) {
        this.sWsifPortName = wsifPortName;
    }

    public String getSWsifPortName() {
        return sWsifPortName;
    }
    
    public void setBOutput(boolean oprOutput) {
        this.bOutput = oprOutput;
    }

    public boolean isBOutput() {
        return bOutput;
    }

    public void setSOutputObjectName(String outputObjectName) {
        this.sOutputObjectName = outputObjectName;
    }

    public String getSOutputObjectName() {
        return sOutputObjectName;
    }

    public void setSServiceName(String serviceName) {
        this.sServiceName = serviceName;
    }

    public String getSServiceName() {
        return sServiceName;
    }

    public void setSSoapPortName(String soapPortName) {
        this.sSoapPortName = soapPortName;
    }

    public String getSSoapPortName() {
        return sSoapPortName;
    }

    public void setSSchemaLocation(String schemaLocation) {
        this.sSchemaLocation = schemaLocation;
    }

    public String getSSchemaLocation() {
        return sSchemaLocation;
    }

    public void setBWsifAddress(boolean wsifAddress) {
        this.bWsifAddress = wsifAddress;
    }

    public boolean isBWsifAddress() {
        return bWsifAddress;
    }

    public void setSXsdNameSpace(String xsdNameSpace) {
        this.sXsdNameSpace = xsdNameSpace;
    }

    public String getSXsdNameSpace() {
        return sXsdNameSpace;
    }

    public void setSResponseElementName(String responseElementName) {
        this.sResponseElementName = responseElementName;
    }

    public String getSResponseElementName() {
        return sResponseElementName;
    }


  public final void setIsBpel(boolean isBpel) {
    this.isBpel = isBpel;
  }

  public final boolean isIsBpel() {
    return isBpel;
  }

  public final void setXsdTargetNameSPace(String xsdTargetNameSPace) {
    this.xsdTargetNameSPace = xsdTargetNameSPace;
  }

  public final String getXsdTargetNameSPace() {
    return xsdTargetNameSPace;
  }
}
