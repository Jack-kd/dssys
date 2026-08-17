package com.smartdigimkt.g5;

import android.content.Context;
import com.smartdigimkt.a5.e;
import com.smartdigimkt.a5.f;
import com.smartdigimkt.e5.p;
import com.smartdigimkt.j1.g;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Context f40394a;

    /* renamed from: b, reason: collision with root package name */
    public final SDMAdRequest f40395b;

    /* renamed from: c, reason: collision with root package name */
    public final int f40396c;

    /* renamed from: d, reason: collision with root package name */
    public final p f40397d;

    /* renamed from: e, reason: collision with root package name */
    public final String f40398e;

    /* renamed from: g, reason: collision with root package name */
    public String f40400g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f40401h;

    /* renamed from: i, reason: collision with root package name */
    public com.smartdigimkt.h5.a f40402i;

    /* renamed from: j, reason: collision with root package name */
    public com.smartdigimkt.x3.b f40403j;

    /* renamed from: l, reason: collision with root package name */
    public e f40405l;

    /* renamed from: m, reason: collision with root package name */
    public f f40406m;

    /* renamed from: n, reason: collision with root package name */
    public com.smartdigimkt.l3.a f40407n;

    /* renamed from: o, reason: collision with root package name */
    public g f40408o;

    /* renamed from: p, reason: collision with root package name */
    public com.smartdigimkt.o3.b f40409p;

    /* renamed from: q, reason: collision with root package name */
    public com.smartdigimkt.k4.a f40410q;

    /* renamed from: r, reason: collision with root package name */
    public d f40411r;

    /* renamed from: s, reason: collision with root package name */
    public com.smartdigimkt.q3.a f40412s;

    /* renamed from: t, reason: collision with root package name */
    public final int f40413t;

    /* renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f40399f = new AtomicBoolean(false);

    /* renamed from: k, reason: collision with root package name */
    public int f40404k = 0;

    public a(Context context, String str, int i2, int i3, SDMAdRequest sDMAdRequest, p pVar) {
        this.f40394a = context.getApplicationContext();
        this.f40395b = sDMAdRequest;
        this.f40413t = i3;
        this.f40397d = pVar;
        this.f40398e = str;
        this.f40396c = i2;
    }

    public final void a(com.smartdigimkt.k4.a aVar) {
        this.f40410q = aVar;
        aVar.f41393a = this.f40412s;
    }

    public final boolean a() {
        int i2 = this.f40404k;
        return i2 == 1 || i2 == 2;
    }
}
