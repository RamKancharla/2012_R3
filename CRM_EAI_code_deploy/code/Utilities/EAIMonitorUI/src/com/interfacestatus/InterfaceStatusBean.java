package com.interfacestatus;

public class InterfaceStatusBean {
    public InterfaceStatusBean() {
    }
    private String Interface;
    private String State;
    private String IsAvailable;

    public void setInterface(String i) {
        this.Interface = i;
    }

    public String getInterface() {
        return Interface;
    }

    public void setState(String state) {
        this.State = state;
    }

    public String getState() {
        return State;
    }

    public void setIsAvailable(String isAvailable) {
        this.IsAvailable = isAvailable;
    }

    public String getIsAvailable() {
        return IsAvailable;
    }
}
