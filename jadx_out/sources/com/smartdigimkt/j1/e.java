package com.smartdigimkt.j1;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.p;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public final class e implements com.smartdigimkt.k1.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f41062a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.p1.f f41063b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f41064c;

    public e(f fVar, String str, b bVar) {
        this.f41064c = fVar;
        this.f41062a = str;
        this.f41063b = bVar;
    }

    @Override // com.smartdigimkt.k1.g
    public final void a(com.smartdigimkt.m3.b bVar) {
        int i2;
        com.smartdigimkt.y3.b.a().a(this.f41062a).f42039c = System.currentTimeMillis();
        f fVar = this.f41064c;
        fVar.getClass();
        if (bVar.f41778w0 == 1) {
            com.smartdigimkt.f3.k kVarA = com.smartdigimkt.f3.k.a();
            kVarA.getClass();
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.f3.i(kVarA));
            if (com.smartdigimkt.c5.k.b(fVar.f41066b, bVar.f41822m)) {
                com.smartdigimkt.f3.k kVarA2 = com.smartdigimkt.f3.k.a();
                kVarA2.getClass();
                if (bVar.f42057r0 == 1 && ((i2 = bVar.f41824o) == 1 || i2 == 4)) {
                    com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.f3.j(kVarA2, bVar));
                }
            } else {
                com.smartdigimkt.f3.k kVarA3 = com.smartdigimkt.f3.k.a();
                kVarA3.getClass();
                com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.f3.g(kVarA3, bVar));
            }
        }
        com.smartdigimkt.p1.f fVar2 = this.f41063b;
        if (fVar2 != null) {
            fVar2.a();
        }
        if (!TextUtils.isEmpty(bVar.f41795P)) {
            com.smartdigimkt.t1.h hVarA = com.smartdigimkt.t1.h.a();
            Context contextD = SDKContext.getInstance().d();
            String str = bVar.f41795P;
            synchronized (hVarA) {
                if (!hVarA.f44219d && contextD != null && !TextUtils.isEmpty(str)) {
                    String strB = y.b(contextD, "sdm_adx_rp_sdk", "mraid_js");
                    if (TextUtils.isEmpty(strB) || !strB.equals(str)) {
                        hVarA.f44219d = true;
                        try {
                            new com.smartdigimkt.q4.g(str).a(1, (com.smartdigimkt.l4.b) new com.smartdigimkt.t1.f(hVarA, contextD, str));
                        } catch (Throwable unused) {
                            hVarA.f44219d = false;
                        }
                    }
                }
            }
        }
        if (TextUtils.isEmpty(bVar.f41807a0)) {
            return;
        }
        String str2 = com.smartdigimkt.g0.e.f40304g;
        com.smartdigimkt.g0.d.f40303a.a(SDKContext.getInstance().d(), bVar.f41807a0);
    }

    @Override // com.smartdigimkt.k1.g
    public final void b(com.smartdigimkt.m3.b bVar) {
        String str;
        f fVar = this.f41064c;
        fVar.f41069e = bVar;
        com.smartdigimkt.l3.a aVar = fVar.f41067c;
        fVar.f41073i = new com.smartdigimkt.l1.c(bVar, aVar);
        String str2 = "";
        p.a(33, bVar, new com.smartdigimkt.i0.l(aVar, ""));
        com.smartdigimkt.y3.b.a().a(this.f41062a).f42038b = System.currentTimeMillis();
        if (!TextUtils.equals(String.valueOf(this.f41064c.f41067c.f41628b), "0")) {
            str = str2;
        } else if (this.f41064c.f41067c.f41647u) {
            str2 = "1";
            str = str2;
        } else {
            str = "0";
        }
        com.smartdigimkt.y3.h.a(bVar, this.f41064c.f41067c, str, com.smartdigimkt.y3.b.a().a(this.f41062a), true, z.a(bVar, this.f41064c.f41067c));
        com.smartdigimkt.y3.b bVarA = com.smartdigimkt.y3.b.a();
        bVarA.f45195b.remove(this.f41062a);
        this.f41064c.f41071g = true;
        com.smartdigimkt.p1.f fVar2 = this.f41063b;
        if (fVar2 != null) {
            fVar2.b();
        }
    }

    @Override // com.smartdigimkt.k1.g
    public final void a(com.smartdigimkt.m3.b bVar, com.smartdigimkt.i0.f fVar) {
        String str;
        com.smartdigimkt.y3.b.a().a(this.f41062a).f42038b = System.currentTimeMillis();
        if (TextUtils.equals(String.valueOf(this.f41064c.f41067c.f41628b), "0")) {
            str = this.f41064c.f41067c.f41647u ? "1" : "0";
        } else {
            str = "";
        }
        com.smartdigimkt.y3.h.a(bVar, this.f41064c.f41067c, str, com.smartdigimkt.y3.b.a().a(this.f41062a), false, z.a(bVar, this.f41064c.f41067c));
        com.smartdigimkt.y3.b.a().f45195b.remove(this.f41062a);
        f fVar2 = this.f41064c;
        com.smartdigimkt.p1.f fVar3 = this.f41063b;
        if (bVar != null) {
            p.a(34, bVar, new com.smartdigimkt.i0.l(fVar2.f41067c, ""));
        } else {
            fVar2.getClass();
        }
        try {
            com.smartdigimkt.f3.f fVarA = com.smartdigimkt.f3.f.a();
            Context contextD = SDKContext.getInstance().d();
            String str2 = fVar2.f41067c.f41635i;
            fVarA.getClass();
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.f3.c(fVarA, contextD, str2));
        } catch (Throwable unused) {
        }
        if (fVar3 != null) {
            fVar3.a(fVar);
        }
    }
}
