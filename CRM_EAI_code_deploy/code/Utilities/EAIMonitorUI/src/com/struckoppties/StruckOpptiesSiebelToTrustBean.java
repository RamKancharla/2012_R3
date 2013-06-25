package com.struckoppties;

public class StruckOpptiesSiebelToTrustBean {
    public StruckOpptiesSiebelToTrustBean() {
    }
    
    private String createdBy;
    private String siebelOppty;
    private String lastmodified;
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

    public void setSiebelOppty(String siebelOppty) {
        this.siebelOppty = siebelOppty;
    }

    public String getSiebelOppty() {
        return siebelOppty;
    }

    public void setLastmodified(String lastmodified) {
        this.lastmodified = lastmodified;
    }

    public String getLastmodified() {
        return lastmodified;
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
