package com.tr.eai.sequencereleaser;

public class SequenceReleaserBean {
    public SequenceReleaserBean() {
    }


    private String sequenceId ;
    private String messageType ;
    private String recontextId;
    private String correlationId ;
    private String context ;
    private String process ;
    private String status ;
    private String lastUpdatedDate ;
    private String checkerInstanceId ;
    private String releaserInstanceId;
    private String nsInstacneId;

    public void setSequenceId(String sequenceId) {
        this.sequenceId = sequenceId;
    }

    public String getSequenceId() {
        return sequenceId;
    }

    public void setMessageType(String messageType) {
        this.messageType = messageType;
    }

    public String getMessageType() {
        return messageType;
    }

    public void setRecontextId(String recontextId) {
        this.recontextId = recontextId;
    }

    public String getRecontextId() {
        return recontextId;
    }

    public void setCorrelationId(String correlationId) {
        this.correlationId = correlationId;
    }

    public String getCorrelationId() {
        return correlationId;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getContext() {
        return context;
    }

    public void setProcess(String process) {
        this.process = process;
    }

    public String getProcess() {
        return process;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setLastUpdatedDate(String lastUpdatedDate) {
        this.lastUpdatedDate = lastUpdatedDate;
    }

    public String getLastUpdatedDate() {
        return lastUpdatedDate;
    }
    public void setCheckerInstanceId(String checkerInstanceId) {
        this.checkerInstanceId = checkerInstanceId;
    }

    public String getCheckerInstanceId() {
        return checkerInstanceId;
    }
    public void setReleaserInstanceId(String releaserInstanceId) {
        this.releaserInstanceId = releaserInstanceId;
    }

    public String getReleaserInstanceId() {
        return releaserInstanceId;
    }
    public void setNSInstacneId(String nsInstacneId) {
        this.nsInstacneId = nsInstacneId;
    }

    public String getNSInstacneId() {
        return nsInstacneId;
    }
}
