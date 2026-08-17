package com.anythink.core.common.h;

/* loaded from: classes2.dex */
public class cd {

    /* renamed from: a, reason: collision with root package name */
    public String f4182a;

    /* renamed from: b, reason: collision with root package name */
    public String f4183b;

    /* renamed from: c, reason: collision with root package name */
    public int f4184c;

    /* renamed from: d, reason: collision with root package name */
    private final String f4185d;

    /* renamed from: e, reason: collision with root package name */
    private final double f4186e;

    /* renamed from: f, reason: collision with root package name */
    private final by f4187f;

    public cd(int i2, String str, String str2, double d2, String str3, by byVar) {
        this.f4184c = i2;
        this.f4182a = str;
        this.f4183b = str3;
        this.f4186e = d2;
        this.f4185d = str2;
        this.f4187f = byVar;
    }

    private String c() {
        return this.f4182a;
    }

    private String d() {
        return this.f4183b;
    }

    private int e() {
        return this.f4184c;
    }

    public final void a(double d2) {
        by byVar = this.f4187f;
        if (byVar != null) {
            byVar.ag(2);
            this.f4187f.j(d2);
        }
    }

    public final String b() {
        return this.f4185d;
    }

    public String toString() {
        return "{channelId='" + this.f4182a + "', bidType='" + this.f4185d + "', price=" + this.f4186e + ", adnPlacementId='" + this.f4183b + "', filterType=" + this.f4184c + '}';
    }

    public final void a(String str) {
        by byVar = this.f4187f;
        if (byVar != null) {
            byVar.q(str);
        }
    }

    public final double a() {
        return this.f4186e;
    }
}
