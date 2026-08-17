package com.bykv.vk.component.ttvideo.mediakit.net;

/* loaded from: classes3.dex */
public class Error {
    int code;
    public String errStr;
    public String host;
    public String id;

    public Error(int i2, String str, String str2) {
        this.code = i2;
        this.host = str;
        this.id = str2;
        this.errStr = null;
    }

    public Error(int i2, String str, String str2, String str3) {
        this.code = i2;
        this.host = str;
        this.id = str2;
        this.errStr = str3;
    }
}
