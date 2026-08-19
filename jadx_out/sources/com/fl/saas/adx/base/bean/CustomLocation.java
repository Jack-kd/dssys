package com.fl.saas.adx.base.bean;

import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public class CustomLocation {
    private double lat;
    private double lng;

    public CustomLocation(double d2, double d3) {
        this.lat = d2;
        this.lng = d3;
    }

    public double getLat() {
        return this.lat;
    }

    public double getLng() {
        return this.lng;
    }

    public void setLat(double d2) {
        this.lat = d2;
    }

    public void setLng(double d2) {
        this.lng = d2;
    }

    @NonNull
    public String toString() {
        return "{\"lat\":" + this.lat + ",\"lng\":" + this.lng + "}";
    }
}
