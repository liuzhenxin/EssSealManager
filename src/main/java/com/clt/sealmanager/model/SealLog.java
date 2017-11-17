package com.clt.sealmanager.model;

public class SealLog {
    private int iId;
    private String sealId;
    private String sbTime;
    private String seTime;
    private String sealName;

    public int getiId() {
        return iId;
    }

    public void setiId(int iId) {
        this.iId = iId;
    }

    public String getSealId() {
        return sealId;
    }

    public void setSealId(String sealId) {
        this.sealId = sealId;
    }

    public String getSbTime() {
        return sbTime;
    }

    public void setSbTime(String sbTime) {
        this.sbTime = sbTime;
    }

    public String getSeTime() {
        return seTime;
    }

    public void setSeTime(String seTime) {
        this.seTime = seTime;
    }

    public String getSealName() {
        return sealName;
    }

    public void setSealName(String sealName) {
        this.sealName = sealName;
    }
}
