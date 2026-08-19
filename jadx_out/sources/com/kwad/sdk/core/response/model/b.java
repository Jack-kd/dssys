package com.kwad.sdk.core.response.model;

/* loaded from: classes4.dex */
public final class b {
    private boolean aXL;
    private boolean anr = true;
    private int mHeight;
    private String mUrl;
    private int mWidth;

    public b(String str, int i2, int i3, boolean z2, boolean z3) {
        this.mUrl = str;
        this.mWidth = i2;
        this.mHeight = i3;
        this.aXL = z3;
    }

    public final int getHeight() {
        return this.mHeight;
    }

    public final String getUrl() {
        return this.mUrl;
    }

    public final int getWidth() {
        return this.mWidth;
    }
}
