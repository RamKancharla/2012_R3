package com.dsperr;

public class DisplayErrorMessageVO {
    private String contextId;
    private String context;
    private String errorMessage;
    private String originatingSystem;
    private String resolvingSystem;
    private String lastModifiedDate;
    private String noDataMessage;

    public void setContextId(String contextId) {
        this.contextId = contextId;
    }

    public String getContextId() {
        return contextId;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getContext() {
        return context;
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

    public void setLastModifiedDate(String lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    public String getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setNoDataMessage(String noDataMessage) {
        this.noDataMessage = noDataMessage;
    }

    public String getNoDataMessage() {
        return noDataMessage;
    }
}
