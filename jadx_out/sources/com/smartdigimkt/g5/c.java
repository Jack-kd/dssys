package com.smartdigimkt.g5;

import androidx.work.PeriodicWorkRequest;
import com.smartdigimkt.a5.e;
import com.smartdigimkt.e5.p;
import com.smartdigimkt.x3.g;
import com.smartdigimkt.y3.h;
import com.smartdigimkt.z4.m;

/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public c f40417a;

    /* renamed from: b, reason: collision with root package name */
    public b f40418b;

    public final void a(a aVar) {
        synchronized (this) {
            try {
                if (this.f40418b != null) {
                    g.a().a(this.f40418b);
                    this.f40418b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        c cVar = this.f40417a;
        if (cVar != null) {
            cVar.c(aVar);
        }
    }

    public abstract boolean b(a aVar);

    public final void c(a aVar) {
        try {
            if (aVar.f40410q != null) {
                d(aVar);
                return;
            }
            boolean zB = b(aVar);
            if (aVar.f40410q != null) {
                d(aVar);
                return;
            }
            if (zB) {
                a(aVar);
                return;
            }
            synchronized (this) {
                try {
                    if (this.f40418b != null) {
                        g.a().a(this.f40418b);
                    }
                    this.f40418b = new b(this, aVar, this.f40417a);
                    g.a().f45120a.a(this.f40418b, PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
                } finally {
                }
            }
        } catch (Throwable th) {
            aVar.a(com.smartdigimkt.k4.b.a(com.anythink.core.common.inner.b.b.f4592i, "load ad with an error." + th));
            d(aVar);
        }
    }

    public final void d(a aVar) {
        if (aVar.f40399f.get()) {
            return;
        }
        aVar.f40399f.set(true);
        synchronized (this) {
            try {
                if (this.f40418b != null) {
                    g.a().a(this.f40418b);
                    this.f40418b = null;
                }
                g.a().a(aVar.f40403j);
            } finally {
            }
        }
        System.currentTimeMillis();
        p pVar = aVar.f40397d;
        if (pVar != null) {
            pVar.onAdLoadFail(aVar.f40410q);
        }
        com.smartdigimkt.q3.a aVar2 = aVar.f40412s;
        com.smartdigimkt.k4.a aVar3 = aVar.f40410q;
        try {
            com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c("", null);
            cVar.f42817a = "3000001";
            if (aVar2 != null) {
                cVar.a(aVar2);
                e eVarA = m.a().a(aVar2.f42748a);
                cVar.f42825i = eVarA != null ? eVarA.f39409C : "";
            }
            if (aVar3 != null) {
                cVar.f42828l = aVar3.getErrorInfo();
                cVar.f42829m = aVar3.getCode();
            }
            h.a(cVar);
        } catch (Throwable unused) {
        }
    }

    public final void e(a aVar) {
        if (aVar.f40399f.get()) {
            return;
        }
        aVar.f40399f.set(true);
        synchronized (this) {
            try {
                if (this.f40418b != null) {
                    g.a().a(this.f40418b);
                    this.f40418b = null;
                }
                g.a().a(aVar.f40403j);
            } catch (Throwable th) {
                throw th;
            }
        }
        System.currentTimeMillis();
        d dVar = aVar.f40411r;
        p pVar = aVar.f40397d;
        if (pVar != null) {
            pVar.onAdLoaded(dVar.f40419a);
        }
    }
}
