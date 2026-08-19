package com.smartdigimkt.j1;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.e0.t;
import com.smartdigimkt.k.u;
import com.smartdigimkt.p1.r;
import com.smartdigimkt.sdk.basead.ui.BaseBannerATView;
import com.smartdigimkt.sdk.basead.ui.BaseSplashATView;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public abstract class f {

    /* renamed from: b, reason: collision with root package name */
    public final Context f41066b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f41067c;

    /* renamed from: d, reason: collision with root package name */
    public g f41068d;

    /* renamed from: e, reason: collision with root package name */
    public com.smartdigimkt.m3.b f41069e;

    /* renamed from: f, reason: collision with root package name */
    public r f41070f;

    /* renamed from: h, reason: collision with root package name */
    public Map f41072h;

    /* renamed from: i, reason: collision with root package name */
    public com.smartdigimkt.l1.c f41073i;

    /* renamed from: j, reason: collision with root package name */
    public final com.smartdigimkt.a5.f f41074j;

    /* renamed from: k, reason: collision with root package name */
    public final com.smartdigimkt.o3.b f41075k;

    /* renamed from: l, reason: collision with root package name */
    public com.smartdigimkt.q3.a f41076l;

    /* renamed from: g, reason: collision with root package name */
    public boolean f41071g = false;

    /* renamed from: m, reason: collision with root package name */
    public final AtomicBoolean f41077m = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final int f41065a = 1;

    public f(Context context, com.smartdigimkt.l3.a aVar, com.smartdigimkt.a5.f fVar) {
        this.f41066b = context.getApplicationContext();
        this.f41067c = aVar;
        this.f41074j = fVar;
        this.f41075k = fVar.f39440a;
    }

    public static boolean a(int i2) {
        return i2 == -1;
    }

    public final int b() {
        com.smartdigimkt.m3.k kVar;
        if (u.a(this.f41065a) != 0) {
            return 3;
        }
        if (this.f41069e == null) {
            com.smartdigimkt.b4.e.a().getClass();
            if (com.smartdigimkt.b4.e.b()) {
                return 0;
            }
            this.f41069e = com.smartdigimkt.k1.h.a(this.f41066b).a(this.f41067c);
        }
        com.smartdigimkt.m3.b bVar = this.f41069e;
        if (bVar == null) {
            return 0;
        }
        if (bVar.k()) {
            return 1;
        }
        if (this.f41073i == null) {
            this.f41073i = new com.smartdigimkt.l1.c(this.f41069e, this.f41067c);
        }
        if (this.f41077m.get()) {
            return 2;
        }
        if (this.f41071g) {
            return -1;
        }
        com.smartdigimkt.l1.c cVar = this.f41073i;
        if (cVar == null || (kVar = cVar.f41616a) == null) {
            return 3;
        }
        if ((kVar.f41835z == 2 && !kVar.f41797R) || !t.a(kVar, cVar.f41617b)) {
            return 3;
        }
        this.f41071g = true;
        return -1;
    }

    public final void c() {
        com.smartdigimkt.o3.b bVar;
        if (!this.f41077m.compareAndSet(false, true) || (bVar = this.f41075k) == null || TextUtils.isEmpty(bVar.f42225e)) {
            return;
        }
        com.smartdigimkt.f3.f fVarA = com.smartdigimkt.f3.f.a();
        Context contextD = SDKContext.getInstance().d();
        String str = this.f41075k.f42225e;
        fVarA.getClass();
        com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.f3.c(fVarA, contextD, str));
    }

    public void a(g gVar) {
        this.f41068d = gVar;
    }

    public void a() {
        com.smartdigimkt.l1.c cVar = this.f41073i;
        if (cVar != null) {
            BaseSplashATView baseSplashATView = cVar.f41619d;
            if (baseSplashATView != null) {
                baseSplashATView.destroy();
                cVar.f41619d = null;
            }
            BaseBannerATView baseBannerATView = cVar.f41620e;
            if (baseBannerATView != null) {
                baseBannerATView.destroy();
                cVar.f41620e = null;
            }
        }
    }
}
