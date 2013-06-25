package com.tr.eai.console.vo;
import java.util.Hashtable;
import java.util.Map;

public class InputObject {
    String sServiceEndPoint;
    String sOprName;
    String inputPayload;
    String sXsdName;

    public void setSServiceEndPoint(String sWsdlPath) {
        this.sServiceEndPoint = sWsdlPath;
    }

    public String getSServiceEndPoint() {
        return sServiceEndPoint;
    }

    public void setSOprName(String sOprName) {
        this.sOprName = sOprName;
    }

    public String getSOprName() {
        return sOprName;
    }


   
  public void setSXsdName(String xsdName) {
    this.sXsdName = xsdName;
  }

  public String getSXsdName() {
    return sXsdName;
  } 

    public void setInputPayload(String inputPayload) {
        this.inputPayload = inputPayload;
    }

    public String getInputPayload() {
        return inputPayload;
    }
}
