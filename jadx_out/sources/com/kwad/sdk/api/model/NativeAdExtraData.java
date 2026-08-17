package com.kwad.sdk.api.model;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public class NativeAdExtraData {
    private boolean enableRotate = true;
    private boolean enableShake;
    private int showLiveStatus;
    private int showLiveStyle;

    public int getShowLiveStatus() {
        return this.showLiveStatus;
    }

    public int getShowLiveStyle() {
        return this.showLiveStyle;
    }

    public boolean isEnableRotate() {
        return this.enableRotate;
    }

    public boolean isEnableShake() {
        return this.enableShake;
    }

    public NativeAdExtraData setEnableRotate(boolean z2) {
        this.enableRotate = z2;
        return this;
    }

    public NativeAdExtraData setEnableShake(boolean z2) {
        this.enableShake = z2;
        return this;
    }

    public NativeAdExtraData setShowLiveStatus(int i2) {
        this.showLiveStatus = i2;
        return this;
    }

    public NativeAdExtraData setShowLiveStyle(int i2) {
        this.showLiveStyle = i2;
        return this;
    }
}
