package com.octopus.ad.c.e;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    long f33803a;

    /* renamed from: b, reason: collision with root package name */
    String f33804b;

    /* renamed from: c, reason: collision with root package name */
    String f33805c;

    /* renamed from: d, reason: collision with root package name */
    int f33806d;

    public b(String str) {
        this.f33805c = str;
    }

    public void a(String str) {
        this.f33804b = str;
    }

    public void b() {
        this.f33803a = 0L;
    }

    public void a(long j2) {
        this.f33803a = j2;
    }

    public void a(int i2) {
        this.f33806d = i2;
    }

    public boolean a() {
        return this.f33803a > System.currentTimeMillis();
    }
}
