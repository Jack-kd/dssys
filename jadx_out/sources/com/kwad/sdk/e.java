package com.kwad.sdk;

/* loaded from: classes4.dex */
public final class e {
    public static final e aFN = new e(10000, "其他异常");
    public static final e aFO = new e(10001, "初始化参数异常");
    public static final e aFP = new e(11001, "SDK未调用init方法");
    public int code;
    public String msg;

    public e(int i2, String str) {
        this.code = i2;
        this.msg = str;
    }
}
