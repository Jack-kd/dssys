package com.anythink.core.common.b;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private int f2336a;

    /* renamed from: b, reason: collision with root package name */
    private int f2337b;

    /* renamed from: c, reason: collision with root package name */
    private int f2338c;

    /* renamed from: d, reason: collision with root package name */
    private long f2339d;

    /* renamed from: e, reason: collision with root package name */
    private int f2340e;

    public final int a() {
        return this.f2336a;
    }

    public final int b() {
        return this.f2337b;
    }

    public final int c() {
        return this.f2338c;
    }

    public final long d() {
        return this.f2339d;
    }

    public final int e() {
        return this.f2340e;
    }

    private void a(int i2) {
        this.f2336a = i2;
    }

    private void b(int i2) {
        this.f2337b = i2;
    }

    private void c(int i2) {
        this.f2338c = i2;
    }

    private void d(int i2) {
        this.f2340e = i2;
    }

    private void a(long j2) {
        this.f2339d = j2;
    }

    public static g a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        g gVar = new g();
        gVar.f2336a = jSONObject.optInt("core_size", 0);
        gVar.f2337b = jSONObject.optInt("max_size", 0);
        gVar.f2338c = jSONObject.optInt("queue_size", 0);
        gVar.f2339d = jSONObject.optLong("keep_alive", 0L);
        gVar.f2340e = jSONObject.optInt("priority", 0);
        return gVar;
    }

    public static g a(int i2, int i3, int i4, int i5, int i6) {
        g gVar = new g();
        gVar.f2336a = i2;
        gVar.f2337b = i3;
        gVar.f2338c = i4;
        gVar.f2339d = i5;
        gVar.f2340e = i6;
        return gVar;
    }
}
