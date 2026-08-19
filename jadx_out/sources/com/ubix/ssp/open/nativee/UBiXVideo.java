package com.ubix.ssp.open.nativee;

/* loaded from: classes5.dex */
public class UBiXVideo {
    private int height;
    private int width;
    private String coverUrl = "";
    private String videoUrl = "";
    private String materialId = "";
    private long duration = 0;

    public String getCoverUrl() {
        return this.coverUrl;
    }

    public long getDuration() {
        return this.duration;
    }

    public int getHeight() {
        return this.height;
    }

    public String getMaterialId() {
        return this.materialId;
    }

    public String getVideoUrl() {
        return this.videoUrl;
    }

    public int getWidth() {
        return this.width;
    }

    public void setCoverUrl(String str) {
        this.coverUrl = str;
    }

    public void setDuration(long j2) {
        this.duration = j2;
    }

    public void setHeight(int i2) {
        this.height = i2;
    }

    public void setMaterialId(String str) {
        this.materialId = str;
    }

    public void setVideoUrl(String str) {
        this.videoUrl = str;
    }

    public void setWidth(int i2) {
        this.width = i2;
    }
}
