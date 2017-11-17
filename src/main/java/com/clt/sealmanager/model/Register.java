package com.clt.sealmanager.model;

public class Register {
    private String iId;
    private String certHash;
    private String aName;
    private String aPhone;
    private String aOwner;
    private String certSubject;
    private String certCn;
    private String sTime;

    public String getiId() {
        return iId;
    }

    public void setiId(String iId) {
        this.iId = iId;
    }

    public String getCertHash() {
        return certHash;
    }

    public void setCertHash(String certHash) {
        this.certHash = certHash;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getaPhone() {
        return aPhone;
    }

    public void setaPhone(String aPhone) {
        this.aPhone = aPhone;
    }

    public String getaOwner() {
        return aOwner;
    }

    public void setaOwner(String aOwner) {
        this.aOwner = aOwner;
    }

    public String getCertSubject() {
        return certSubject;
    }

    public void setCertSubject(String certSubject) {
        this.certSubject = certSubject;
    }

    public String getCertCn() {
        return certCn;
    }

    public void setCertCn(String certCn) {
        this.certCn = certCn;
    }

    public String getsTime() {
        return sTime;
    }

    public void setsTime(String sTime) {
        this.sTime = sTime;
    }
}
