package com.strucksequence;

public class StruckSequenceBean {
    public StruckSequenceBean() {
    }
    private String correlationId;
    private String contextId;
    private String status;
    private String lastUpdateDate;


    public void setCorrelationId(String correlationId) {
        this.correlationId = correlationId;
    }

    public String getCorrelationId() {
        return correlationId;
    }

    public void setContextId(String contextId) {
        this.contextId = contextId;
    }

    public String getContextId() {
        return contextId;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setLastUpdateDate(String lastUpdateDate) {
        this.lastUpdateDate = lastUpdateDate;
    }

    public String getLastUpdateDate() {
        return lastUpdateDate;
    }


}
