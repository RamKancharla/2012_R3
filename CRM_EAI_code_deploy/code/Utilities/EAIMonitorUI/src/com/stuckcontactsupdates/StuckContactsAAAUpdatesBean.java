package com.stuckcontactsupdates;

public class StuckContactsAAAUpdatesBean {
    public StuckContactsAAAUpdatesBean() {
    }
    private String contactRowId;
    private String status;
    private String checkerInstanceId;
    private String releaserInstanceId;
    private String nSInstanceId;
    private String lastUpdatedDate;

    public void setContactRowId(String contactRowId) {
        this.contactRowId = contactRowId;
    }

    public String getContactRowId() {
        return contactRowId;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
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

    public void setNSInstanceId(String nSInstanceId) {
        this.nSInstanceId = nSInstanceId;
    }

    public String getNSInstanceId() {
        return nSInstanceId;
    }

    public void setLastUpdatedDate(String lastUpdatedDate) {
        this.lastUpdatedDate = lastUpdatedDate;
    }

    public String getLastUpdatedDate() {
        return lastUpdatedDate;
    }
}
