package com.struckcontacts;

public class StruckContactsTOMToSiebelBean {
    public StruckContactsTOMToSiebelBean() {
    }
    
    private String processName;
    private String instanceId;
    private String trustAccount;
    private String modifiedDate;
    private String errorMessage;
    private String originatingSystem;
    private String resolvingSystem;

    public void setProcessName(String processName) {
        this.processName = processName;
    }

    public String getProcessName() {
        return processName;
    }

    public void setInstanceId(String instanceId) {
        this.instanceId = instanceId;
    }

    public String getInstanceId() {
        return instanceId;
    }

    public void setTrustAccount(String trustAccount) {
        this.trustAccount = trustAccount;
    }

    public String getTrustAccount() {
        return trustAccount;
    }

    public void setModifiedDate(String modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public String getModifiedDate() {
        return modifiedDate;
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
}
