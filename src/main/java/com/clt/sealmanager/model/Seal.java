package com.clt.sealmanager.model;

public class Seal {
    //印章编号
    private String sealID;
    //印章名称
    private String sealName;
    //印章所属部门
    private String sealOwner;
    //证书信息
    private String certCN;
    //证书颁发者信息
    private String certIssuer;
    //特征文件名
    private String cltName;
    //特征文件信息
    private String sealPath;
    //到期时间
    private String endTime;
    //印章授权
    private String sealAuth;
    //印章认证信息
    private String keyWords;
    //印章状态
    private String status;

    public String getSealID() {
        return sealID;
    }

    public void setSealID(String sealID) {
        this.sealID = sealID;
    }

    public String getSealName() {
        return sealName;
    }

    public void setSealName(String sealName) {
        this.sealName = sealName;
    }

    public String getSealOwner() {
        return sealOwner;
    }

    public void setSealOwner(String sealOwner) {
        this.sealOwner = sealOwner;
    }

    public String getCertCN() {
        return certCN;
    }

    public void setCertCN(String certCN) {
        this.certCN = certCN;
    }

    public String getCertIssuer() {
        return certIssuer;
    }

    public void setCertIssuer(String certIssuer) {
        this.certIssuer = certIssuer;
    }

    public String getCltName() {
        return cltName;
    }

    public void setCltName(String cltName) {
        this.cltName = cltName;
    }

    public String getSealPath() {
        return sealPath;
    }

    public void setSealPath(String sealPath) {
        this.sealPath = sealPath;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getSealAuth() {
        return sealAuth;
    }

    public void setSealAuth(String sealAuth) {
        this.sealAuth = sealAuth;
    }

    public String getKeyWords() {
        return keyWords;
    }

    public void setKeyWords(String keyWords) {
        this.keyWords = keyWords;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}