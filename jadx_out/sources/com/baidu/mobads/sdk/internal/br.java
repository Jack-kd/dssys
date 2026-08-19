package com.baidu.mobads.sdk.internal;

/* loaded from: classes2.dex */
public enum br {
    INTERFACE_USE_PROBLEM(1010001, "接口使用问题"),
    SHOW_STANDARD_UNFIT(3040001, "容器大小不达标");


    /* renamed from: c, reason: collision with root package name */
    public static final String f11218c = "msg";

    /* renamed from: d, reason: collision with root package name */
    private int f11220d;

    /* renamed from: e, reason: collision with root package name */
    private String f11221e;

    br(int i2, String str) {
        this.f11220d = i2;
        this.f11221e = str;
    }

    public int b() {
        return this.f11220d;
    }

    public String c() {
        return this.f11221e;
    }
}
