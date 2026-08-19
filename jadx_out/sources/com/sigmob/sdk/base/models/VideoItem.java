package com.sigmob.sdk.base.models;

/* loaded from: classes4.dex */
public class VideoItem {
    public final int height;
    public final String url;
    public final int width;

    public VideoItem(String str, int i2, int i3) {
        this.url = str;
        this.width = i2;
        this.height = i3;
    }

    public String toString() {
        return "\"video\":{\"url\"=\"" + this.url + "\", \"width\"=" + this.width + ", \"height\"=" + this.height + '}';
    }
}
