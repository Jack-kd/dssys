package com.smartdigimkt.c3;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.c5.j;
import com.smartdigimkt.c5.l;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.bridge.entity.AppInfoEntity;
import com.smartdigimkt.x.k;
import com.smartdigimkt.y3.s;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SDKContext f39670a;

    public d(SDKContext sDKContext) {
        this.f39670a = sDKContext;
    }

    public final void b() {
        if (this.f39670a.j()) {
            h.a(this.f39670a.f44114c);
            j.a();
            AppInfoEntity appInfoEntity = h.f39740e0;
            if (!TextUtils.isEmpty(appInfoEntity != null ? appInfoEntity.getMediationVersion() : j.a())) {
                AppInfoEntity appInfoEntity2 = h.f39740e0;
                if (appInfoEntity2 != null) {
                    appInfoEntity2.getMediationVersion();
                } else {
                    j.a();
                }
            }
            h.m(this.f39670a.f44114c);
            String str = h.f39731a;
            j.a();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f39670a.f44109H.compareAndSet(false, true)) {
                com.smartdigimkt.q3.a aVar = new com.smartdigimkt.q3.a();
                aVar.f42787v = h.C();
                com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(21, aVar, -1L);
            }
            com.smartdigimkt.g4.f.a().a(this.f39670a.f44114c);
            SDKContext sDKContext = this.f39670a;
            SDKContext.a(sDKContext, sDKContext.f44114c);
            SDKContext.c(this.f39670a);
            Context context = this.f39670a.f44114c;
            if (l.f39788c == null) {
                synchronized (l.class) {
                    try {
                        if (l.f39788c == null) {
                            l.f39788c = new l(context);
                        }
                    } finally {
                    }
                }
            }
            l lVar = l.f39788c;
            lVar.getClass();
            com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
            if (aVarA == null || aVarA.f39395z != 0) {
                try {
                    lVar.b();
                    if (!(Thread.getDefaultUncaughtExceptionHandler() instanceof l)) {
                        lVar.f39790a = Thread.getDefaultUncaughtExceptionHandler();
                    }
                    Thread.setDefaultUncaughtExceptionHandler(lVar);
                } catch (Exception unused) {
                }
            }
            SDKContext sDKContext2 = this.f39670a;
            sDKContext2.a(sDKContext2.f44114c, this.f39670a.f44112a);
            com.smartdigimkt.x.l lVarA = com.smartdigimkt.x.l.a();
            lVarA.getClass();
            com.smartdigimkt.b4.e.a().getClass();
            if (com.smartdigimkt.b4.e.b()) {
                com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.x.d(lVarA, null));
            } else {
                lVarA.a((k) null);
            }
            com.smartdigimkt.i3.b bVarE = this.f39670a.e();
            if (bVarE != null) {
                bVarE.cleanExpiredInfo();
            }
            s.a().b();
            com.smartdigimkt.z4.d.c().e();
            SDKContext sDKContext3 = this.f39670a;
            sDKContext3.a(sDKContext3.f44114c, this.f39670a.f44102A);
            b();
            SDKContext.b(this.f39670a);
        } catch (Throwable unused2) {
        }
    }
}
