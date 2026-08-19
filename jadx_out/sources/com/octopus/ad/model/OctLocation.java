package com.octopus.ad.model;

/* loaded from: classes4.dex */
public class OctLocation {
    private double latitude;
    private double longitude;
    private long time;
    private int type;

    public OctLocation() {
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public long getTime() {
        return this.time;
    }

    public int getType() {
        return this.type;
    }

    public void setLatitude(double d2) {
        this.latitude = d2;
    }

    public void setLongitude(double d2) {
        this.longitude = d2;
    }

    public void setTime(long j2) {
        this.time = j2;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public OctLocation(double d2, double d3, int i2, long j2) {
        this.longitude = d2;
        this.latitude = d3;
        this.type = i2;
        this.time = j2;
    }
}
