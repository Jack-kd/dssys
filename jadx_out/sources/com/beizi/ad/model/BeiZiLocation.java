package com.beizi.ad.model;

/* loaded from: classes2.dex */
public class BeiZiLocation {

    /* renamed from: a, reason: collision with root package name */
    private String f12039a;

    /* renamed from: b, reason: collision with root package name */
    private String f12040b;

    /* renamed from: c, reason: collision with root package name */
    private String f12041c;

    /* renamed from: d, reason: collision with root package name */
    private long f12042d;

    public BeiZiLocation() {
    }

    public String getLatitude() {
        return this.f12040b;
    }

    public String getLongitude() {
        return this.f12039a;
    }

    public long getTime() {
        return this.f12042d;
    }

    public String getType() {
        return this.f12041c;
    }

    public void setLatitude(String str) {
        this.f12040b = str;
    }

    public void setLongitude(String str) {
        this.f12039a = str;
    }

    public void setTime(long j2) {
        this.f12042d = j2;
    }

    public void setType(String str) {
        this.f12041c = str;
    }

    public BeiZiLocation(String str, String str2, String str3, long j2) {
        this.f12039a = str;
        this.f12040b = str2;
        this.f12041c = str3;
        this.f12042d = j2;
    }
}
