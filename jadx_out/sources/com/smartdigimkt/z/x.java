package com.smartdigimkt.z;

import android.content.Context;
import android.view.View;
import com.smartdigimkt.sdk.core.SDKContext;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f45333a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f45334b = false;

    /* renamed from: c, reason: collision with root package name */
    public final Context f45335c;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f45336d;

    /* renamed from: e, reason: collision with root package name */
    public final com.smartdigimkt.a0.r f45337e;

    /* renamed from: f, reason: collision with root package name */
    public com.smartdigimkt.a0.e f45338f;

    /* renamed from: g, reason: collision with root package name */
    public final com.smartdigimkt.a0.o f45339g;

    /* renamed from: h, reason: collision with root package name */
    public final com.smartdigimkt.a0.k f45340h;

    /* renamed from: i, reason: collision with root package name */
    public final com.smartdigimkt.a0.g f45341i;

    /* renamed from: j, reason: collision with root package name */
    public final com.smartdigimkt.a0.p f45342j;

    /* renamed from: k, reason: collision with root package name */
    public final com.smartdigimkt.a0.t f45343k;

    /* renamed from: l, reason: collision with root package name */
    public final com.smartdigimkt.a0.n f45344l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f45345m;

    /* renamed from: n, reason: collision with root package name */
    public final com.smartdigimkt.i3.b f45346n;

    public x(Context context, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, View view) {
        boolean z2 = false;
        this.f45345m = false;
        this.f45333a = cVar;
        this.f45336d = aVar;
        Context applicationContext = context.getApplicationContext();
        this.f45335c = applicationContext;
        cVar.f41833x = aVar.f41632f;
        com.smartdigimkt.i1.e eVar = new com.smartdigimkt.i1.e();
        com.smartdigimkt.a0.r rVar = new com.smartdigimkt.a0.r(cVar, aVar);
        this.f45337e = rVar;
        com.smartdigimkt.a0.e eVar2 = new com.smartdigimkt.a0.e();
        this.f45338f = eVar2;
        com.smartdigimkt.a0.a aVar2 = new com.smartdigimkt.a0.a();
        aVar2.f39212a = applicationContext;
        aVar2.f39213b = cVar;
        aVar2.f39214c = aVar;
        aVar2.f39215d = rVar;
        aVar2.f39216e = eVar2;
        aVar2.f39217f = eVar;
        this.f45339g = new com.smartdigimkt.a0.o(aVar2);
        com.smartdigimkt.a0.k kVar = new com.smartdigimkt.a0.k(aVar2);
        this.f45340h = kVar;
        com.smartdigimkt.a0.g gVar = new com.smartdigimkt.a0.g(aVar2);
        this.f45341i = gVar;
        this.f45342j = new com.smartdigimkt.a0.p(aVar2);
        this.f45343k = new com.smartdigimkt.a0.t(aVar2);
        this.f45344l = new com.smartdigimkt.a0.n(aVar2);
        if (view != null) {
            kVar.f39248j = new WeakReference(view);
        }
        kVar.f39249k = gVar;
        gVar.f39239k = kVar;
        com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
        this.f45346n = bVarE;
        if (bVarE != null && bVarE.a()) {
            z2 = true;
        }
        this.f45345m = z2;
    }

    public final void a(com.smartdigimkt.i0.l lVar) {
        if (this.f45334b) {
            return;
        }
        com.smartdigimkt.a0.e eVar = this.f45338f;
        if (eVar == null || !eVar.f39231e.get()) {
            com.smartdigimkt.a0.r rVar = this.f45337e;
            if (rVar != null) {
                rVar.f39259b = lVar;
            }
            com.smartdigimkt.a0.e eVar2 = this.f45338f;
            if (eVar2 != null) {
                eVar2.f39231e.set(true);
                eVar2.f39228b = false;
                eVar2.f39229c = false;
                eVar2.f39230d = false;
            }
            com.smartdigimkt.b4.e.a().c(new s(this, lVar));
        }
    }

    public static void a(x xVar, com.smartdigimkt.i0.l lVar) {
        int i2;
        int i3;
        int i4 = xVar.f45336d.f41644r.f41966r;
        if (i4 != 0 && i4 == 2) {
            i2 = 1;
        } else {
            i2 = xVar.f45340h.b().f39263a ? 2 : 3;
        }
        if (i2 == 2 && ((i3 = xVar.f45336d.f41644r.f41966r) == 0 || i3 == 1)) {
            com.smartdigimkt.a0.e eVar = xVar.f45338f;
            if (eVar != null) {
                eVar.c();
                return;
            }
            return;
        }
        if (!lVar.f40675k && xVar.f45345m && i2 != 2 && z.a(xVar.f45333a, xVar.f45336d.f41644r, lVar, 4)) {
            xVar.f45346n.openDataConfirmDialog(xVar.f45335c, xVar.f45333a, xVar.f45336d, new u(xVar, i2));
        } else {
            xVar.a(i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x009d A[PHI: r5
      0x009d: PHI (r5v3 com.smartdigimkt.a0.s) = (r5v1 com.smartdigimkt.a0.s), (r5v4 com.smartdigimkt.a0.s), (r5v6 com.smartdigimkt.a0.s), (r5v12 com.smartdigimkt.a0.s) binds: [B:102:0x01bc, B:94:0x0199, B:88:0x0184, B:39:0x009a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r19) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.z.x.a(int):void");
    }
}
