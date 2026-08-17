package com.kwad.sdk.api;

import androidx.annotation.Keep;
import com.kwad.sdk.api.core.KsAdSdkApi;

@KsAdSdkApi
@Keep
/* loaded from: classes4.dex */
public class KsLocation {
    private double mLatitude;
    private double mLongitude;
    private double mAltitude = 0.0d;
    private float mSpeed = 0.0f;
    private float mBearing = 0.0f;

    public KsLocation(double d2, double d3) {
        this.mLatitude = d2;
        this.mLongitude = d3;
    }

    public double getAltitude() {
        return this.mAltitude;
    }

    public float getBearing() {
        return this.mBearing;
    }

    public double getLatitude() {
        return this.mLatitude;
    }

    public double getLongitude() {
        return this.mLongitude;
    }

    public float getSpeed() {
        return this.mSpeed;
    }

    public void setAltitude(double d2) {
        this.mAltitude = d2;
    }

    public void setBearing(float f2) {
        this.mBearing = f2;
    }

    public void setLatitude(double d2) {
        this.mLatitude = d2;
    }

    public void setLongitude(double d2) {
        this.mLongitude = d2;
    }

    public void setSpeed(float f2) {
        this.mSpeed = f2;
    }
}
