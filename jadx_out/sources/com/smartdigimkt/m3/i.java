package com.smartdigimkt.m3;

/* loaded from: classes5.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final int f42032a;

    /* renamed from: b, reason: collision with root package name */
    public final String f42033b;

    /* renamed from: d, reason: collision with root package name */
    public int f42035d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f42036e = 0;

    /* renamed from: c, reason: collision with root package name */
    public long f42034c = -1;

    public i(int i2, String str) {
        this.f42032a = i2;
        this.f42033b = str;
    }

    public final String a() {
        return "unitId:" + this.f42033b + ",showCount:" + this.f42035d + ",clickCount:" + this.f42036e + ",expireTime:" + this.f42034c;
    }
}
