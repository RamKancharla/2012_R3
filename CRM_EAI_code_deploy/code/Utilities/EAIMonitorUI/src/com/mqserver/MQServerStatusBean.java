package com.mqserver;

import java.util.Date;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;

import java.util.Formatter;

public class MQServerStatusBean {
    public MQServerStatusBean() {
    }
    private String system;
    private String status;
    private Object lastUpdatedDate;

    public void setSystem(String system) {
        this.system = system;
    }

    public String getSystem() {
        return system;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setLastUpdatedDate(Object lastUpdatedDate) {
        this.lastUpdatedDate = lastUpdatedDate;
    }

    public Object getLastUpdatedDate() {
        return lastUpdatedDate;
    }
    public String getFormatedLastUpdatedDate(){
        return formatDate(lastUpdatedDate);
    }
    public String formatDate(Object date){        
        Format formatter;
        formatter= new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");       
        String s=formatter.format(date);        
        return s;        
    }
}
