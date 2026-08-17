package com.smartdigimkt.z;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class g0 implements com.smartdigimkt.s3.b {

    /* renamed from: a, reason: collision with root package name */
    public com.smartdigimkt.x3.d f45295a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f45296b = SDKContext.getInstance().d();

    public final void a(com.smartdigimkt.m3.c cVar, String str, String str2, boolean z2, com.smartdigimkt.j.g gVar, long j2) {
        if (z2) {
            if (p.b(this.f45296b, cVar)) {
                com.smartdigimkt.y3.h.a(str, cVar.f41806a, str2, 12, (String) null, 0L, 0L, cVar, 0, j2);
                return;
            } else {
                com.smartdigimkt.y3.h.a(str, cVar.f41806a, str2, 13, (String) null, 0L, 0L, cVar, 0, 0L);
                return;
            }
        }
        com.smartdigimkt.m3.e eVar = cVar.f41832w;
        if (eVar == null) {
            return;
        }
        int i2 = eVar.f41841B;
        int i3 = eVar.f41844C;
        if (i2 == 1) {
            e0 e0Var = new e0(this);
            this.f45295a = new com.smartdigimkt.x3.d(i3, new f0(this, e0Var, cVar, str, str2, j2, gVar));
            try {
                ((Application) this.f45296b).registerActivityLifecycleCallbacks(e0Var);
                return;
            } catch (Exception unused) {
                com.smartdigimkt.y3.h.a("Error", "Error, cannot registerActivityLifecycleCallbacks here!", SDKContext.getInstance().f(), "");
                return;
            }
        }
        if (i2 != 3) {
            return;
        }
        d dVarA = d.a();
        com.smartdigimkt.i0.i iVar = new com.smartdigimkt.i0.i(cVar, str2, str, gVar, j2);
        synchronized (dVarA) {
            if (TextUtils.isEmpty("1")) {
                return;
            }
            com.smartdigimkt.b4.e.a().c(new c(dVarA, iVar));
        }
    }
}
