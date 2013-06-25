package com.tr.eai.console.bean;
import java.util.Date;
import java.util.List;
import java.util.*;


public class CompositeInstanceBean {
   String compositeName;
   String id;
   String compositeDN;
   String sourceActionName;
   String cikey;
   String state;
   String title; 
   boolean faultReinitiated=false;
   boolean faulted=false;
   String modifyDate;;
   String ecid;


    public void setCompositeName(String compositeName) {
        this.compositeName = compositeName;
    }

    public String getCompositeName() {
        return compositeName;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getId() {
        return id;
    }


    public void setModifyDate(String modifyDate) {
          this.modifyDate = modifyDate;
      }

      public  String getModifyDate() {
          return modifyDate;
      }
    public void setSourceActionName(String sourceActionName) {
        this.sourceActionName = sourceActionName;
    }

    public String getSourceActionName() {
        return sourceActionName;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getState() {
        return state;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setCompositeDN(String compositeDN) {
        this.compositeDN = compositeDN;
    }

    public String getCompositeDN() {
        return compositeDN;
    }

    public void setFaultReinitiated(boolean faultReinitiated) {
        this.faultReinitiated = faultReinitiated;
    }

    public boolean isFaultReinitiated() {
        return faultReinitiated;
    }


    public void setFaulted(boolean faulted) {
        this.faulted = faulted;
    }

    public boolean isFaulted() {
        return faulted;
    }

    public void setEcid(String ecid) {
        this.ecid = ecid;
    }

    public String getEcid() {
        return ecid;
    }

  public void setCikey(String cikey) {
    this.cikey = cikey;
  }

  public String getCikey() {
    return cikey;
  }
}
