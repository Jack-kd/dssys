package com.anythink.core.common.b;

import com.anythink.core.common.d.s;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: A, reason: collision with root package name */
    public static final int f2341A = 150;

    /* renamed from: B, reason: collision with root package name */
    public static final long f2342B = 60;

    /* renamed from: C, reason: collision with root package name */
    public static final int f2343C = 1;

    /* renamed from: D, reason: collision with root package name */
    public static final int f2344D = 1;

    /* renamed from: E, reason: collision with root package name */
    public static final int f2345E = 5;

    /* renamed from: F, reason: collision with root package name */
    public static final int f2346F = 3;

    /* renamed from: a, reason: collision with root package name */
    public static final int f2347a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f2348b = 4;

    /* renamed from: c, reason: collision with root package name */
    public static final int f2349c = 1;

    /* renamed from: d, reason: collision with root package name */
    public static final int f2350d = 4;

    /* renamed from: e, reason: collision with root package name */
    public static final int f2351e = 2;

    /* renamed from: f, reason: collision with root package name */
    public static final int f2352f = 4;

    /* renamed from: g, reason: collision with root package name */
    public static final int f2353g = 100;

    /* renamed from: h, reason: collision with root package name */
    public static final long f2354h = 60;

    /* renamed from: i, reason: collision with root package name */
    public static final int f2355i = 4;

    /* renamed from: j, reason: collision with root package name */
    public static final int f2356j = 2;

    /* renamed from: k, reason: collision with root package name */
    public static final int f2357k = 4;

    /* renamed from: l, reason: collision with root package name */
    public static final int f2358l = 100;

    /* renamed from: m, reason: collision with root package name */
    public static final long f2359m = 60;

    /* renamed from: n, reason: collision with root package name */
    public static final int f2360n = 4;

    /* renamed from: o, reason: collision with root package name */
    public static final int f2361o = 1;

    /* renamed from: p, reason: collision with root package name */
    public static final int f2362p = 2;

    /* renamed from: q, reason: collision with root package name */
    public static final int f2363q = 1;

    /* renamed from: r, reason: collision with root package name */
    public static final int f2364r = 4;

    /* renamed from: s, reason: collision with root package name */
    public static final int f2365s = 2;

    /* renamed from: t, reason: collision with root package name */
    public static final int f2366t = 15;

    /* renamed from: u, reason: collision with root package name */
    public static final int f2367u = 3;

    /* renamed from: v, reason: collision with root package name */
    public static final int f2368v = 6;

    /* renamed from: w, reason: collision with root package name */
    public static final int f2369w = 150;

    /* renamed from: x, reason: collision with root package name */
    public static final long f2370x = 60;

    /* renamed from: y, reason: collision with root package name */
    public static final int f2371y = 3;

    /* renamed from: z, reason: collision with root package name */
    public static final int f2372z = 6;

    /* renamed from: G, reason: collision with root package name */
    private g f2373G;

    /* renamed from: H, reason: collision with root package name */
    private g f2374H;

    /* renamed from: I, reason: collision with root package name */
    private g f2375I;

    /* renamed from: J, reason: collision with root package name */
    private g f2376J;

    /* renamed from: K, reason: collision with root package name */
    private g f2377K;

    /* renamed from: L, reason: collision with root package name */
    private g f2378L;

    public static h g() {
        h hVar = new h();
        s.b();
        hVar.f2373G = g.a(2, 0, 0, 0, 5);
        hVar.f2374H = g.a(15, 0, 0, 0, 5);
        hVar.f2375I = g.a(3, 6, 150, 60, 5);
        hVar.f2376J = g.a(3, 6, 150, 60, 5);
        hVar.f2377K = g.a(1, 0, 0, 0, 3);
        hVar.f2378L = g.a(1, 0, 0, 0, 5);
        return hVar;
    }

    public final g a() {
        return this.f2373G;
    }

    public final g b() {
        return this.f2374H;
    }

    public final g c() {
        return this.f2375I;
    }

    public final g d() {
        return this.f2376J;
    }

    public final g e() {
        return this.f2377K;
    }

    public final g f() {
        return this.f2378L;
    }

    private void a(g gVar) {
        this.f2373G = gVar;
    }

    private void b(g gVar) {
        this.f2374H = gVar;
    }

    private void c(g gVar) {
        this.f2375I = gVar;
    }

    private void d(g gVar) {
        this.f2376J = gVar;
    }

    private void e(g gVar) {
        this.f2377K = gVar;
    }

    private void f(g gVar) {
        this.f2378L = gVar;
    }

    public static h a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        h hVar = new h();
        hVar.f2373G = g.a(jSONObject.optJSONObject("core"));
        hVar.f2374H = g.a(jSONObject.optJSONObject("mediation"));
        hVar.f2375I = g.a(jSONObject.optJSONObject("network"));
        hVar.f2376J = g.a(jSONObject.optJSONObject("io"));
        hVar.f2377K = g.a(jSONObject.optJSONObject("tracking"));
        hVar.f2378L = g.a(jSONObject.optJSONObject("scheduler"));
        return hVar;
    }
}
