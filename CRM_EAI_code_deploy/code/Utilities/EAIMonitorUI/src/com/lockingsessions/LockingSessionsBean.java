package com.lockingsessions;

public class LockingSessionsBean {
    public LockingSessionsBean() {
    }

    private String instanceId;
    private String sid;
    private String userName;
    private String spid;
    private String type;
    private String mode;
    private String object;

    public void setInstanceId(String instanceId) {
        this.instanceId = instanceId;
    }

    public String getInstanceId() {
        return instanceId;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getSid() {
        return sid;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setSpid(String spid) {
        this.spid = spid;
    }

    public String getSpid() {
        return spid;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public String getMode() {
        return mode;
    }

    public void setObject(String object) {
        this.object = object;
    }

    public String getObject() {
        return object;
    }
}
