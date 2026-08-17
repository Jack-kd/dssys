package com.sigmob.sdk.base.models;

/* loaded from: classes4.dex */
public class SigImage {
    private final int height;
    private final String imageUrl;
    private final int width;

    public SigImage(String str, int i2, int i3) {
        this.imageUrl = str;
        this.width = i2;
        this.height = i3;
    }

    public int getHeight() {
        return this.height;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public int getWidth() {
        return this.width;
    }
}
