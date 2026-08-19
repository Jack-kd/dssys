package com.octopus.ad.model;

/* loaded from: classes4.dex */
public class AdLogoInfo {
    public static int TYPE_PIC = 0;
    public static int TYPE_TEXT = 1;
    String adurl;
    int type = 0;

    public String getAdurl() {
        return this.adurl;
    }

    public int getType() {
        return this.type;
    }

    public void setAdurl(String str) {
        this.adurl = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }
}
