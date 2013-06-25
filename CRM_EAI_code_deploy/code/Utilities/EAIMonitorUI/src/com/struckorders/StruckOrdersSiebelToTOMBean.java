package com.struckorders;

public class StruckOrdersSiebelToTOMBean {
    public StruckOrdersSiebelToTOMBean() {
    }
    private String createdBy;
    private String siebelOrders;
    private String lastModified;
    private String errorMessage;
    private String originatingSystem;
    private String resolvingSystem;
    private String interfaceId;
    private String isAvailable;

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setSiebelOrders(String siebelOrders) {
        this.siebelOrders = siebelOrders;
    }

    public String getSiebelOrders() {
        return siebelOrders;
    }

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
    
    public void setInterfaceId(String interfaceId) {
        this.interfaceId = interfaceId;
    }

    public String getInterfaceId() {
        return interfaceId;
    }
    
    public void setIsAvailable(String isAvailable) {
        this.isAvailable = isAvailable;
    }

    public String getIsAvailable() {
        return isAvailable;
    }
}
