package com.struckorders;

public class StruckOrdersSiebelToELMBean {
    public StruckOrdersSiebelToELMBean() {
    }
    private String interfaceId;
    private String lastModified;
    private String errorMessage;
    private String originatingSystem;
    private String resolvingSystem;
    private String state;
    private String createdBy;

    private String updatedBy;
    private String Lastmodifieddt;

    private String orderNumber;


    public void setLastModified(String lastModified) {
        this.lastModified = lastModified;
    }

    public String getLastModified() {
        return lastModified;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setOriginatingSystem(String originatingSystem) {
        this.originatingSystem = originatingSystem;
    }

    public String getOriginatingSystem() {
        return originatingSystem;
    }

    public void setResolvingSystem(String resolvingSystem) {
        this.resolvingSystem = resolvingSystem;
    }

    public String getResolvingSystem() {
        return resolvingSystem;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getState() {
        return state;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy;
    }

    public String getUpdatedBy() {
        return updatedBy;
    }

    public void setInterfaceId(String interfaceId) {
        this.interfaceId = interfaceId;
    }

    public String getInterfaceId() {
        return interfaceId;
    }


    public void setLastmodifieddt(String lastmodifieddt) {
        this.Lastmodifieddt = lastmodifieddt;
    }

    public String getLastmodifieddt() {
        return Lastmodifieddt;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getOrderNumber() {
        return orderNumber;
    }
}
