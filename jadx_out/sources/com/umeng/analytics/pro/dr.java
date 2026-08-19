package com.umeng.analytics.pro;

import java.io.Serializable;

/* loaded from: classes5.dex */
public class dr implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f49192a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f49193b;

    /* renamed from: c, reason: collision with root package name */
    private final String f49194c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f49195d;

    public dr(byte b3, boolean z2) {
        this.f49193b = b3;
        this.f49192a = false;
        this.f49194c = null;
        this.f49195d = z2;
    }

    public boolean a() {
        return this.f49192a;
    }

    public String b() {
        return this.f49194c;
    }

    public boolean c() {
        return this.f49193b == 12;
    }

    public boolean d() {
        byte b3 = this.f49193b;
        return b3 == 15 || b3 == 13 || b3 == 14;
    }

    public boolean e() {
        return this.f49195d;
    }

    public dr(byte b3) {
        this(b3, false);
    }

    public dr(byte b3, String str) {
        this.f49193b = b3;
        this.f49192a = true;
        this.f49194c = str;
        this.f49195d = false;
    }
}
