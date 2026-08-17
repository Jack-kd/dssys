package com.smartdigimkt.a5;

import com.smartdigimkt.sdk.api.SDMAdConst;
import java.util.Map;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: A, reason: collision with root package name */
    public int f39437A;

    /* renamed from: B, reason: collision with root package name */
    public double f39438B;

    /* renamed from: C, reason: collision with root package name */
    public c f39439C;

    /* renamed from: a, reason: collision with root package name */
    public com.smartdigimkt.o3.b f39440a;

    /* renamed from: b, reason: collision with root package name */
    public int f39441b;

    /* renamed from: c, reason: collision with root package name */
    public String f39442c;

    /* renamed from: d, reason: collision with root package name */
    public String f39443d;

    /* renamed from: e, reason: collision with root package name */
    public Map f39444e;

    /* renamed from: f, reason: collision with root package name */
    public double f39445f;

    /* renamed from: g, reason: collision with root package name */
    public int f39446g;

    /* renamed from: h, reason: collision with root package name */
    public String f39447h;

    /* renamed from: i, reason: collision with root package name */
    public String f39448i;

    /* renamed from: j, reason: collision with root package name */
    public int f39449j;

    /* renamed from: k, reason: collision with root package name */
    public String f39450k;

    /* renamed from: l, reason: collision with root package name */
    public String f39451l;

    /* renamed from: m, reason: collision with root package name */
    public int f39452m;

    /* renamed from: n, reason: collision with root package name */
    public int f39453n;

    /* renamed from: o, reason: collision with root package name */
    public final int f39454o;

    /* renamed from: p, reason: collision with root package name */
    public int f39455p;

    /* renamed from: q, reason: collision with root package name */
    public String f39456q;

    /* renamed from: r, reason: collision with root package name */
    public double f39457r;

    /* renamed from: s, reason: collision with root package name */
    public double f39458s;

    /* renamed from: t, reason: collision with root package name */
    public int f39459t;

    /* renamed from: u, reason: collision with root package name */
    public int f39460u;

    /* renamed from: v, reason: collision with root package name */
    public int f39461v;

    /* renamed from: w, reason: collision with root package name */
    public double f39462w;

    /* renamed from: x, reason: collision with root package name */
    public int f39463x;

    /* renamed from: y, reason: collision with root package name */
    public double f39464y;

    /* renamed from: z, reason: collision with root package name */
    public long f39465z;

    public f(int i2) {
        SDMAdConst.CURRENCY currency = SDMAdConst.CURRENCY.RMB;
        this.f39459t = 1;
        this.f39460u = 1;
        this.f39454o = i2;
    }

    public final void a(com.smartdigimkt.o3.b bVar, int i2) {
        this.f39449j = 0;
        this.f39445f = bVar.f42223c;
        this.f39458s = bVar.f42224d;
        this.f39438B = bVar.f42232l;
        this.f39447h = bVar.f42225e;
        this.f39440a = bVar;
        if (i2 == 1) {
            this.f39448i = "";
        } else {
            this.f39448i = bVar.f42226f;
        }
        c cVar = this.f39439C;
        if (cVar != null) {
            String str = bVar.f42240H;
            int i3 = bVar.f42241I;
            String str2 = bVar.f42242J;
            cVar.f39401b = str;
            cVar.f39405f = str2;
            cVar.f39403d = i3;
        }
    }

    public final String toString() {
        return super.toString();
    }
}
