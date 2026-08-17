package com.anythink.core.common.u.a;

import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.f;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.u;
import com.anythink.core.common.p;
import com.anythink.core.common.q;
import com.anythink.core.common.u.a.b;
import com.anythink.core.common.v;
import com.anythink.core.common.v.ai;
import com.anythink.core.common.v.b.c;
import com.anythink.core.common.v.b.e;
import com.anythink.core.e.d;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import com.varbto.utils.api.MediationUtilsManager;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7691a = "a";

    /* renamed from: b, reason: collision with root package name */
    private static C0080a f7692b;

    /* renamed from: c, reason: collision with root package name */
    private static volatile a f7693c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f7694d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f7695e;

    /* renamed from: f, reason: collision with root package name */
    private AtomicBoolean f7696f = new AtomicBoolean(false);

    /* renamed from: com.anythink.core.common.u.a.a$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (!a.this.f7694d) {
                    com.anythink.core.common.u.a.b.a.a();
                    com.anythink.core.common.u.a.b.a.a(false);
                }
                if (a.this.f7695e) {
                    return;
                }
                com.anythink.core.common.u.a.b.a.a();
                com.anythink.core.common.u.a.b.a.b(false);
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: com.anythink.core.common.u.a.a$7, reason: invalid class name */
    public class AnonymousClass7 implements Runnable {
        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                new com.anythink.core.common.u.a.b.a.b.a().a();
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: com.anythink.core.common.u.a.a$a, reason: collision with other inner class name */
    public class C0080a {

        /* renamed from: a, reason: collision with root package name */
        long f7711a;

        /* renamed from: b, reason: collision with root package name */
        long f7712b;

        /* renamed from: c, reason: collision with root package name */
        long f7713c;

        /* renamed from: d, reason: collision with root package name */
        long f7714d;

        /* renamed from: e, reason: collision with root package name */
        boolean f7715e;

        /* renamed from: f, reason: collision with root package name */
        boolean f7716f;

        /* renamed from: h, reason: collision with root package name */
        private boolean f7718h;

        public C0080a() {
        }

        public final long a() {
            return this.f7711a;
        }

        public final long b() {
            return this.f7712b;
        }

        public final void a(boolean z2) {
            com.anythink.core.e.b bVarA = d.a();
            if (bVarA == null) {
                return;
            }
            try {
                long jAc = bVarA.ac();
                this.f7711a = jAc;
                long j2 = 50;
                if (jAc == 0) {
                    jAc = 50;
                }
                this.f7711a = jAc;
                long jAh = bVarA.ah();
                this.f7712b = jAh;
                if (jAh != 0) {
                    j2 = jAh;
                }
                this.f7712b = j2;
                this.f7713c = bVarA.ae();
                this.f7714d = bVarA.aj();
                this.f7715e = bVarA.aM() == 1;
                this.f7716f = bVarA.aK() == 1;
                HashMap map = new HashMap();
                if (!a.this.f7694d) {
                    map.put("tk", new b.C0083b(this.f7713c, new b.a() { // from class: com.anythink.core.common.u.a.a.a.1
                        @Override // com.anythink.core.common.u.a.b.a
                        public final void a() {
                            a.this.f();
                        }
                    }));
                }
                if (!a.this.f7695e) {
                    map.put("da", new b.C0083b(this.f7714d, new b.a() { // from class: com.anythink.core.common.u.a.a.a.2
                        @Override // com.anythink.core.common.u.a.b.a
                        public final void a() {
                            a.this.e();
                        }
                    }));
                }
                boolean z3 = this.f7715e;
                if (z3) {
                    try {
                        boolean z4 = this.f7716f;
                        if (!this.f7718h) {
                            this.f7718h = true;
                            MediationUtilsManager.getInstance(s.b().g()).registerAnrSdk(1);
                            MediationUtilsManager.getInstance(s.b().g()).initAnrMonitoring(5000L, z4, z3);
                        }
                        map.put("anr", new b.C0083b(0L, new b.a() { // from class: com.anythink.core.common.u.a.a.a.3
                            @Override // com.anythink.core.common.u.a.b.a
                            public final void a() {
                                c.a().e(new com.anythink.core.common.v.b.d(e.aV, a.this.new AnonymousClass7()));
                            }
                        }));
                    } catch (Throwable unused) {
                    }
                }
                b.a().a(map);
                if (z2) {
                    c.a().e(new com.anythink.core.common.v.b.d(e.aW, a.this.new AnonymousClass4()));
                }
            } catch (Throwable unused2) {
            }
        }

        private void a(boolean z2, boolean z3) {
            if (this.f7718h) {
                return;
            }
            this.f7718h = true;
            MediationUtilsManager.getInstance(s.b().g()).registerAnrSdk(1);
            MediationUtilsManager.getInstance(s.b().g()).initAnrMonitoring(5000L, z3, z2);
        }
    }

    public static C0080a g() {
        return f7692b;
    }

    private void h() {
        c.a().e(new com.anythink.core.common.v.b.d(e.aW, new AnonymousClass4()));
    }

    private void i() {
        c.a().e(new com.anythink.core.common.v.b.d(e.aV, new AnonymousClass7()));
    }

    private static void j() {
    }

    public final boolean c() {
        return this.f7695e;
    }

    public final void d() {
        if (this.f7696f.getAndSet(true)) {
            return;
        }
        f7692b = new C0080a();
        c.a().e(new com.anythink.core.common.v.b.d(e.aR, new Runnable() { // from class: com.anythink.core.common.u.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    a.a(false);
                } catch (Throwable unused) {
                }
            }
        }));
    }

    public final void e() {
        if (this.f7695e) {
            return;
        }
        c.a().e(new com.anythink.core.common.v.b.d(e.aU, new Runnable() { // from class: com.anythink.core.common.u.a.a.5

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f7706a = false;

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    com.anythink.core.common.u.a.b.a.a();
                    com.anythink.core.common.u.a.b.a.b(this.f7706a);
                } catch (Throwable unused) {
                }
            }
        }));
    }

    public final void f() {
        if (this.f7694d) {
            return;
        }
        c.a().e(new com.anythink.core.common.v.b.d(e.aX, new Runnable() { // from class: com.anythink.core.common.u.a.a.6

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f7708a = false;

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    com.anythink.core.common.u.a.b.a.a();
                    com.anythink.core.common.u.a.b.a.a(this.f7708a);
                } catch (Throwable unused) {
                }
            }
        }));
    }

    public static a a() {
        if (f7693c == null) {
            synchronized (a.class) {
                try {
                    if (f7693c == null) {
                        f7693c = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7693c;
    }

    public final boolean b() {
        return this.f7694d;
    }

    public static void a(Runnable runnable) {
        c.a().e(new com.anythink.core.common.v.b.d(e.aQ, runnable));
    }

    public final void a(final int i2, final bx bxVar, final by byVar, final long j2) {
        if (this.f7694d || bxVar == null) {
            return;
        }
        c.a().e(new com.anythink.core.common.v.b.d(e.aT, new Runnable() { // from class: com.anythink.core.common.u.a.a.2
            @Override // java.lang.Runnable
            public final void run() {
                n nVar;
                String strAQ;
                m mVarA;
                List<String> listT;
                f fVarA;
                List<com.anythink.core.common.h.c> listA;
                ad adVarY;
                try {
                    int i3 = i2;
                    bx bxVar2 = bxVar;
                    by byVar2 = byVar;
                    long jCurrentTimeMillis = j2;
                    com.anythink.core.common.u.c.b.a(i3, byVar2, false);
                    if (i3 == 4) {
                        ad adVarY2 = byVar2 != null ? byVar2.Y() : null;
                        if (adVarY2 != null) {
                            com.anythink.core.c.d.c.a(adVarY2, true, adVarY2.getSortPrice(), true, false, byVar2);
                        }
                        if ((bxVar2 instanceof n) && (mVarA = o.a(s.b().g()).a((strAQ = (nVar = (n) bxVar2).aQ()))) != null && (listT = mVarA.T()) != null && listT.size() != 0 && (fVarA = nVar.a()) != null && (listA = fVarA.e().a(strAQ)) != null) {
                            for (com.anythink.core.common.h.c cVar : listA) {
                                if (cVar != null && cVar.c() == 0) {
                                    n nVarI = cVar.i();
                                    by unitGroupInfo = cVar.e().getUnitGroupInfo();
                                    boolean zR = (!ai.b(unitGroupInfo) || unitGroupInfo.Y() == null) ? false : unitGroupInfo.Y().r();
                                    if (listT.contains(String.valueOf(unitGroupInfo.n())) && !TextUtils.equals(nVar.y(), nVarI.y()) && (adVarY = unitGroupInfo.Y()) != null) {
                                        com.anythink.core.c.d.c.a(adVarY, false, com.anythink.core.common.v.o.a(byVar2), nVar.K() == 1, zR, unitGroupInfo);
                                    }
                                }
                            }
                        }
                    }
                    if (i3 == 4) {
                        if (bxVar2 instanceof n) {
                            if (byVar2 != null) {
                                com.anythink.core.d.a.a().a((n) bxVar2, byVar2);
                                if (byVar2.X() && byVar2.aK() > 0.0d) {
                                    ((n) bxVar2).e(byVar2.aK());
                                }
                            }
                            if (((n) bxVar2).j() == 2) {
                                v.a().a(bxVar2.aQ(), ((n) bxVar2).b());
                            }
                            com.anythink.core.common.d.a().a(bxVar2.aQ(), bxVar2.aR(), ((n) bxVar2).N());
                        }
                        com.anythink.core.d.b.a().a(bxVar2, byVar2);
                    }
                    if (i3 == 6 && (bxVar2 instanceof n)) {
                        com.anythink.core.common.d.a().b(bxVar2.aQ(), bxVar2.aR(), ((n) bxVar2).N());
                    }
                    com.anythink.core.e.b bVarB = d.a(s.b().g()).b(s.b().p());
                    com.anythink.core.common.h.o oVar = new com.anythink.core.common.h.o();
                    oVar.f4349a = i3;
                    oVar.f4350b = bxVar2;
                    if (jCurrentTimeMillis <= 0) {
                        jCurrentTimeMillis = System.currentTimeMillis();
                    }
                    oVar.f4351c = jCurrentTimeMillis;
                    q.a(s.b().g()).a(i3, oVar, bVarB);
                    if (4 == i3 && (bxVar2 instanceof n)) {
                        p.a();
                        p.a((n) bxVar2);
                    }
                    com.anythink.core.common.u.a.b.a.a().a(oVar);
                } catch (Throwable unused) {
                }
            }
        }));
    }

    public final void a(final u uVar) {
        if (this.f7695e || uVar == null) {
            return;
        }
        c.a().e(new com.anythink.core.common.v.b.d(e.aS, new Runnable() { // from class: com.anythink.core.common.u.a.a.3
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    com.anythink.core.common.u.a.b.a.a().a(uVar);
                } catch (Throwable unused) {
                }
            }
        }));
    }

    public static void a(boolean z2) {
        f7692b.a(z2);
    }
}
