package com.octopus.ad.c.e;

/* loaded from: classes4.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public String f33818a;

    /* renamed from: b, reason: collision with root package name */
    public int f33819b;

    /* renamed from: c, reason: collision with root package name */
    public long f33820c = System.currentTimeMillis() + 86400000;

    public f(String str, int i2) {
        this.f33818a = str;
        this.f33819b = i2;
    }

    public String toString() {
        return "ValueData{value='" + this.f33818a + "', code=" + this.f33819b + ", expired=" + this.f33820c + '}';
    }
}
