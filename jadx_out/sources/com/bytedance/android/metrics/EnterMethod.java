package com.bytedance.android.metrics;

/* loaded from: classes3.dex */
public enum EnterMethod {
    NO_VALUE,
    VIDEO_CELL,
    VIDEO_HEAD,
    LIVE_CELL,
    LIVE_CARD;

    public String lowerName() {
        return name().toLowerCase();
    }
}
