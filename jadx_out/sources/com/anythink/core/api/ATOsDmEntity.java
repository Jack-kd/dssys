package com.anythink.core.api;

/* loaded from: classes.dex */
public class ATOsDmEntity {
    private final String backupDm;
    private final String bidDm;
    private final String cdnTcpDm;
    private final String daDm;
    private final String mainDm;
    private final String ruBpDm;
    private final String smartWFDm;
    private final String tkDm;
    private final String trafficType;

    public ATOsDmEntity(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.mainDm = str;
        this.backupDm = str2;
        this.tkDm = str3;
        this.daDm = str4;
        this.bidDm = str5;
        this.ruBpDm = str6;
        this.smartWFDm = str7;
        this.trafficType = str8;
        this.cdnTcpDm = str9;
    }

    public String getBackupDm() {
        return this.backupDm;
    }

    public String getBidDm() {
        return this.bidDm;
    }

    public String getCdnTcpDm() {
        return this.cdnTcpDm;
    }

    public String getDaDm() {
        return this.daDm;
    }

    public String getMainDm() {
        return this.mainDm;
    }

    public String getRuBpDm() {
        return this.ruBpDm;
    }

    public String getSmartWFDm() {
        return this.smartWFDm;
    }

    public String getTkDm() {
        return this.tkDm;
    }

    public String getTrafficType() {
        return this.trafficType;
    }
}
