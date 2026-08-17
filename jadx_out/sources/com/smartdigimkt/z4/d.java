package com.smartdigimkt.z4;

import androidx.work.WorkRequest;
import com.anythink.core.common.d.i;
import com.smartdigimkt.f3.a0;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: d, reason: collision with root package name */
    public static volatile d f45456d;

    /* renamed from: a, reason: collision with root package name */
    public final Object f45457a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public volatile com.smartdigimkt.a5.a f45458b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f45459c;

    public static com.smartdigimkt.a5.a b() {
        com.smartdigimkt.l3.c cVar;
        try {
            ArrayList arrayListB = com.smartdigimkt.k3.e.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d())).b(SDKContext.getInstance().a());
            if (arrayListB != null && !arrayListB.isEmpty() && (cVar = (com.smartdigimkt.l3.c) arrayListB.get(0)) != null) {
                com.smartdigimkt.a5.a aVarC = com.smartdigimkt.a5.a.c(new JSONObject(cVar.f41654a));
                if (aVarC != null) {
                    aVarC.f39375h = Long.parseLong(cVar.f41655b);
                }
                return aVarC;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static d c() {
        if (f45456d == null) {
            synchronized (d.class) {
                try {
                    if (f45456d == null) {
                        f45456d = new d();
                    }
                } finally {
                }
            }
        }
        return f45456d;
    }

    public static com.smartdigimkt.a5.a d() {
        com.smartdigimkt.a5.a aVar = new com.smartdigimkt.a5.a();
        aVar.f39371f = true;
        aVar.f39373g = i.l.f2676a;
        aVar.f39375h = 0L;
        aVar.f39382m = 1;
        aVar.f39383n = 0L;
        aVar.f39381l = "";
        aVar.f39385p = 1;
        aVar.f39386q = 0L;
        aVar.f39384o = "";
        aVar.f39387r = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        aVar.f39388s = 51200L;
        aVar.f39339A = "[\"com.smartdigimkt\"]";
        aVar.f39395z = 1;
        return aVar;
    }

    public static void f() {
        a0 a0VarA = a0.a();
        a0VarA.getClass();
        com.smartdigimkt.t3.n.a().getClass();
        a0VarA.f40208e = com.smartdigimkt.t3.n.a(4);
        com.smartdigimkt.h3.m.b().getClass();
        com.smartdigimkt.a5.a aVarA = c().a();
        if (aVarA.f39371f) {
            return;
        }
        com.smartdigimkt.h3.m mVarB = com.smartdigimkt.h3.m.b();
        long j2 = aVarA.f39361W * 1000;
        if (j2 > 0) {
            mVarB.f40585j = j2;
        } else {
            mVarB.getClass();
        }
        com.smartdigimkt.h3.m.b().a(aVarA.f39349K, aVarA.f39350L, aVarA.f39351M, aVarA.f39376h0, false);
    }

    public final com.smartdigimkt.a5.a a() {
        if (this.f45458b == null) {
            synchronized (this) {
                try {
                    if (this.f45458b == null) {
                        this.f45458b = b();
                    }
                    if (this.f45458b == null) {
                        this.f45458b = d();
                    }
                } finally {
                }
            }
        }
        return this.f45458b;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002e A[Catch: all -> 0x000e, TryCatch #0 {all -> 0x000e, blocks: (B:7:0x0008, B:9:0x000c, B:13:0x0010, B:15:0x0014, B:17:0x0021, B:19:0x0032, B:18:0x002e), top: B:23:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e() {
        /*
            r3 = this;
            boolean r0 = r3.f45459c
            if (r0 == 0) goto L5
            return
        L5:
            java.lang.Object r0 = r3.f45457a
            monitor-enter(r0)
            boolean r1 = r3.f45459c     // Catch: java.lang.Throwable -> Le
            if (r1 == 0) goto L10
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            return
        Le:
            r1 = move-exception
            goto L34
        L10:
            com.smartdigimkt.a5.a r1 = r3.f45458b     // Catch: java.lang.Throwable -> Le
            if (r1 != 0) goto L2e
            com.smartdigimkt.b4.e r1 = com.smartdigimkt.b4.e.a()     // Catch: java.lang.Throwable -> Le
            r1.getClass()     // Catch: java.lang.Throwable -> Le
            boolean r1 = com.smartdigimkt.b4.e.b()     // Catch: java.lang.Throwable -> Le
            if (r1 == 0) goto L2e
            com.smartdigimkt.b4.e r1 = com.smartdigimkt.b4.e.a()     // Catch: java.lang.Throwable -> Le
            com.smartdigimkt.z4.a r2 = new com.smartdigimkt.z4.a     // Catch: java.lang.Throwable -> Le
            r2.<init>(r3)     // Catch: java.lang.Throwable -> Le
            r1.c(r2)     // Catch: java.lang.Throwable -> Le
            goto L32
        L2e:
            r1 = 0
            r3.a(r1)     // Catch: java.lang.Throwable -> Le
        L32:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            return
        L34:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.z4.d.e():void");
    }

    public final void a(boolean z2) {
        com.smartdigimkt.a5.a aVarA;
        if (!z2 && (aVarA = a()) != null && !aVarA.f39371f) {
            if (aVarA.f39375h + aVarA.f39373g > System.currentTimeMillis()) {
                return;
            }
        }
        this.f45459c = true;
        com.smartdigimkt.r4.c cVar = new com.smartdigimkt.r4.c();
        if (this.f45458b != null) {
            cVar.f43057a = this.f45458b.a();
        }
        new com.smartdigimkt.q4.e(cVar).a(0, (com.smartdigimkt.l4.b) new b(this));
    }
}
