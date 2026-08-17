package com.anythink.core.common.h;

import android.content.Context;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f3556a = "a";

    /* renamed from: A, reason: collision with root package name */
    public ATAdxBidFloorInfo f3557A;

    /* renamed from: B, reason: collision with root package name */
    public String f3558B;

    /* renamed from: C, reason: collision with root package name */
    public double f3559C;

    /* renamed from: D, reason: collision with root package name */
    public int f3560D;

    /* renamed from: F, reason: collision with root package name */
    public com.anythink.core.common.h f3562F;

    /* renamed from: I, reason: collision with root package name */
    public com.anythink.core.common.b.c f3565I;

    /* renamed from: J, reason: collision with root package name */
    public com.anythink.core.common.f f3566J;

    /* renamed from: K, reason: collision with root package name */
    public com.anythink.core.e.f f3567K;

    /* renamed from: b, reason: collision with root package name */
    public Context f3568b;

    /* renamed from: c, reason: collision with root package name */
    public as f3569c;

    /* renamed from: d, reason: collision with root package name */
    public String f3570d;

    /* renamed from: e, reason: collision with root package name */
    public String f3571e;

    /* renamed from: f, reason: collision with root package name */
    public int f3572f;

    /* renamed from: g, reason: collision with root package name */
    public long f3573g;

    /* renamed from: h, reason: collision with root package name */
    public long f3574h;

    /* renamed from: i, reason: collision with root package name */
    public long f3575i;

    /* renamed from: j, reason: collision with root package name */
    public List<by> f3576j;

    /* renamed from: k, reason: collision with root package name */
    public List<by> f3577k;

    /* renamed from: l, reason: collision with root package name */
    public String f3578l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f3579m;

    /* renamed from: n, reason: collision with root package name */
    public ce f3580n;

    /* renamed from: o, reason: collision with root package name */
    public String f3581o;

    /* renamed from: p, reason: collision with root package name */
    public String f3582p;

    /* renamed from: q, reason: collision with root package name */
    public Map<String, Object> f3583q;

    /* renamed from: r, reason: collision with root package name */
    public com.anythink.core.c.c.a f3584r;

    /* renamed from: s, reason: collision with root package name */
    public n f3585s;

    /* renamed from: u, reason: collision with root package name */
    public Map<String, Double> f3587u;

    /* renamed from: v, reason: collision with root package name */
    public cc f3588v;

    /* renamed from: w, reason: collision with root package name */
    public bs f3589w;

    /* renamed from: x, reason: collision with root package name */
    public ac f3590x;

    /* renamed from: y, reason: collision with root package name */
    public com.anythink.core.common.w.i f3591y;

    /* renamed from: t, reason: collision with root package name */
    public int f3586t = 2;

    /* renamed from: z, reason: collision with root package name */
    public int f3592z = 0;

    /* renamed from: E, reason: collision with root package name */
    public int f3561E = 2;

    /* renamed from: G, reason: collision with root package name */
    public boolean f3563G = false;

    /* renamed from: H, reason: collision with root package name */
    public long f3564H = -1;

    private com.anythink.core.common.f a() {
        return this.f3566J;
    }

    private boolean b() {
        return this.f3563G;
    }

    private long c() {
        return this.f3564H;
    }

    private String d() {
        return this.f3571e;
    }

    private a c(List<by> list) {
        a aVar = new a();
        aVar.f3568b = this.f3568b;
        aVar.f3570d = this.f3570d;
        aVar.f3571e = this.f3571e;
        aVar.f3572f = this.f3572f;
        aVar.f3574h = this.f3574h;
        aVar.f3580n = this.f3580n;
        long j2 = this.f3573g;
        if (j2 < 0) {
            aVar.f3573g = 10000L;
        } else {
            aVar.f3573g = j2;
        }
        aVar.f3579m = this.f3579m;
        aVar.f3581o = this.f3581o;
        aVar.f3582p = this.f3582p;
        aVar.f3576j = list;
        aVar.f3583q = this.f3583q;
        aVar.f3575i = this.f3575i;
        aVar.f3569c = this.f3569c;
        aVar.f3585s = this.f3585s;
        aVar.f3586t = this.f3586t;
        aVar.f3587u = this.f3587u;
        aVar.f3592z = this.f3592z;
        aVar.f3591y = this.f3591y;
        aVar.f3590x = this.f3590x;
        aVar.f3557A = this.f3557A;
        aVar.f3558B = this.f3558B;
        aVar.f3559C = this.f3559C;
        aVar.f3560D = this.f3560D;
        aVar.f3561E = this.f3561E;
        aVar.f3565I = this.f3565I;
        aVar.f3564H = this.f3564H;
        aVar.f3566J = this.f3566J;
        return aVar;
    }

    private a d(List<by> list) {
        a aVarC = c(list);
        aVarC.f3581o = this.f3581o;
        aVarC.f3574h = this.f3574h;
        return aVarC;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e6 A[Catch: all -> 0x00ce, TryCatch #0 {all -> 0x00ce, blocks: (B:27:0x00b0, B:45:0x00e2, B:52:0x010d, B:54:0x0115, B:55:0x0118, B:46:0x00e6, B:48:0x00ea, B:49:0x00ee, B:51:0x010a, B:32:0x00c4, B:37:0x00d0), top: B:61:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0115 A[Catch: all -> 0x00ce, TryCatch #0 {all -> 0x00ce, blocks: (B:27:0x00b0, B:45:0x00e2, B:52:0x010d, B:54:0x0115, B:55:0x0118, B:46:0x00e6, B:48:0x00ea, B:49:0x00ee, B:51:0x010a, B:32:0x00c4, B:37:0x00d0), top: B:61:0x00b0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.anythink.core.common.h.a a(java.util.List<com.anythink.core.common.h.by> r12, java.util.List<com.anythink.core.common.h.by> r13) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.h.a.a(java.util.List, java.util.List):com.anythink.core.common.h.a");
    }

    public final a b(List<by> list) {
        a aVarC = c(list);
        aVarC.f3582p = this.f3582p;
        return aVarC;
    }

    public final a a(List<by> list) {
        return c(list);
    }
}
