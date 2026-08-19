package com.smartdigimkt.l3;

import android.text.TextUtils;
import com.smartdigimkt.a5.f;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.core.SDKContext;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class a implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public String f41627a;

    /* renamed from: b, reason: collision with root package name */
    public int f41628b;

    /* renamed from: c, reason: collision with root package name */
    public int f41629c;

    /* renamed from: d, reason: collision with root package name */
    public int f41630d;

    /* renamed from: e, reason: collision with root package name */
    public String f41631e;

    /* renamed from: f, reason: collision with root package name */
    public String f41632f;

    /* renamed from: g, reason: collision with root package name */
    public String f41633g;

    /* renamed from: h, reason: collision with root package name */
    public String f41634h;

    /* renamed from: i, reason: collision with root package name */
    public String f41635i;

    /* renamed from: j, reason: collision with root package name */
    public int f41636j;

    /* renamed from: k, reason: collision with root package name */
    public String f41637k;

    /* renamed from: l, reason: collision with root package name */
    public int f41638l;

    /* renamed from: m, reason: collision with root package name */
    public String f41639m;

    /* renamed from: n, reason: collision with root package name */
    public long f41640n;

    /* renamed from: o, reason: collision with root package name */
    public String f41641o;

    /* renamed from: p, reason: collision with root package name */
    public int f41642p;

    /* renamed from: q, reason: collision with root package name */
    public int f41643q;

    /* renamed from: r, reason: collision with root package name */
    public e f41644r;

    /* renamed from: s, reason: collision with root package name */
    public HashMap f41645s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f41646t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f41647u;

    /* renamed from: v, reason: collision with root package name */
    public double f41648v;

    /* renamed from: w, reason: collision with root package name */
    public int f41649w;

    public a() {
        SDKContext.getInstance().getClass();
        this.f41638l = -1;
    }

    public static a a(String str, com.smartdigimkt.a5.e eVar, f fVar) {
        a aVar = new a();
        aVar.f41635i = fVar.f39447h;
        aVar.f41636j = fVar.f39441b;
        aVar.f41631e = fVar.f39450k;
        aVar.f41632f = str;
        aVar.f41627a = eVar.f39415e;
        aVar.f41628b = eVar.f39423m;
        aVar.f41639m = fVar.f39443d;
        com.smartdigimkt.o3.b bVar = fVar.f39440a;
        if (bVar != null) {
            bVar.f42237E = str;
            long jCurrentTimeMillis = System.currentTimeMillis() + bVar.f42254q;
            bVar.f42255r = jCurrentTimeMillis;
            if (TextUtils.isEmpty(aVar.f41635i)) {
                aVar.f41635i = bVar.f42225e;
            }
            aVar.f41634h = bVar.f42248P;
            aVar.f41633g = bVar.f42230j;
            aVar.f41637k = bVar.f42256s;
            aVar.f41641o = bVar.f42257t;
            aVar.f41640n = jCurrentTimeMillis;
        }
        aVar.f41642p = eVar.f39430t;
        aVar.f41643q = eVar.f39431u;
        aVar.f41648v = fVar.f39457r;
        aVar.f41649w = fVar.f39437A;
        return aVar;
    }
}
