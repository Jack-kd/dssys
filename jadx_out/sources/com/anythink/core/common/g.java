package com.anythink.core.common;

import android.content.Context;
import android.os.SystemClock;
import com.anythink.core.api.ATRequestingInfo;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.IATAdFilter;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.a.c;
import com.anythink.core.common.d.i;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.am;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.ay;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.ce;
import com.anythink.core.common.j;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.ai;
import com.anythink.core.common.w.a.a;
import com.anythink.core.mg.api.MgComparedResult;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;

/* loaded from: classes2.dex */
public class g {

    /* renamed from: A, reason: collision with root package name */
    boolean f3407A;

    /* renamed from: G, reason: collision with root package name */
    protected com.anythink.core.common.v.b.d f3413G;

    /* renamed from: I, reason: collision with root package name */
    com.anythink.core.common.w.g f3415I;

    /* renamed from: J, reason: collision with root package name */
    c.a f3416J;

    /* renamed from: M, reason: collision with root package name */
    by f3419M;

    /* renamed from: N, reason: collision with root package name */
    double f3420N;

    /* renamed from: P, reason: collision with root package name */
    by f3422P;

    /* renamed from: T, reason: collision with root package name */
    private h f3426T;

    /* renamed from: U, reason: collision with root package name */
    private boolean f3427U;

    /* renamed from: V, reason: collision with root package name */
    private final f f3428V;

    /* renamed from: b, reason: collision with root package name */
    protected WeakReference<Context> f3430b;

    /* renamed from: c, reason: collision with root package name */
    protected int f3431c;

    /* renamed from: e, reason: collision with root package name */
    protected ce f3433e;

    /* renamed from: f, reason: collision with root package name */
    protected String f3434f;

    /* renamed from: g, reason: collision with root package name */
    protected String f3435g;

    /* renamed from: h, reason: collision with root package name */
    Map<String, Object> f3436h;

    /* renamed from: i, reason: collision with root package name */
    com.anythink.core.common.h.n f3437i;

    /* renamed from: j, reason: collision with root package name */
    protected as f3438j;

    /* renamed from: k, reason: collision with root package name */
    protected com.anythink.core.common.d.c f3439k;

    /* renamed from: p, reason: collision with root package name */
    boolean f3444p;

    /* renamed from: q, reason: collision with root package name */
    boolean f3445q;

    /* renamed from: t, reason: collision with root package name */
    String f3448t;

    /* renamed from: v, reason: collision with root package name */
    long f3450v;

    /* renamed from: w, reason: collision with root package name */
    int f3451w;

    /* renamed from: x, reason: collision with root package name */
    int f3452x;

    /* renamed from: R, reason: collision with root package name */
    private final String f3424R = getClass().getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    protected String f3432d = "";

    /* renamed from: l, reason: collision with root package name */
    boolean f3440l = false;

    /* renamed from: m, reason: collision with root package name */
    boolean f3441m = false;

    /* renamed from: n, reason: collision with root package name */
    boolean f3442n = false;

    /* renamed from: o, reason: collision with root package name */
    protected boolean f3443o = false;

    /* renamed from: r, reason: collision with root package name */
    boolean f3446r = false;

    /* renamed from: s, reason: collision with root package name */
    boolean f3447s = false;

    /* renamed from: y, reason: collision with root package name */
    by f3453y = null;

    /* renamed from: z, reason: collision with root package name */
    boolean f3454z = false;

    /* renamed from: B, reason: collision with root package name */
    by f3408B = null;

    /* renamed from: C, reason: collision with root package name */
    by f3409C = null;

    /* renamed from: F, reason: collision with root package name */
    protected com.anythink.core.common.v.b.d f3412F = null;

    /* renamed from: L, reason: collision with root package name */
    protected com.anythink.core.common.v.b.d f3418L = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dk, new Runnable() { // from class: com.anythink.core.common.g.1
        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aA, new Runnable() { // from class: com.anythink.core.common.g.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.a();
                }
            }));
        }
    });

    /* renamed from: O, reason: collision with root package name */
    boolean f3421O = false;

    /* renamed from: Q, reason: collision with root package name */
    boolean f3423Q = false;

    /* renamed from: a, reason: collision with root package name */
    protected Context f3429a = com.anythink.core.common.d.s.b().g();

    /* renamed from: u, reason: collision with root package name */
    AdError f3449u = ErrorCode.getErrorCode(ErrorCode.noADError, "", "");

    /* renamed from: D, reason: collision with root package name */
    protected Map<String, com.anythink.core.common.w.e> f3410D = new ConcurrentHashMap();

    /* renamed from: E, reason: collision with root package name */
    List<by> f3411E = Collections.synchronizedList(new ArrayList(3));

    /* renamed from: H, reason: collision with root package name */
    com.anythink.core.common.w.j f3414H = new com.anythink.core.common.w.j();

    /* renamed from: K, reason: collision with root package name */
    List<ATBaseAdAdapter> f3417K = new ArrayList();

    /* renamed from: S, reason: collision with root package name */
    private final com.anythink.core.mg.a.a f3425S = new com.anythink.core.mg.a.a();

    /* renamed from: com.anythink.core.common.g$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            g.this.f3412F = null;
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aB, new Runnable() { // from class: com.anythink.core.common.g.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.j();
                }
            }));
        }
    }

    /* renamed from: com.anythink.core.common.g$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            g.this.p();
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f3501a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f3502b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f3503c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final int f3504d = 4;

        /* renamed from: e, reason: collision with root package name */
        public static final int f3505e = 5;
    }

    public g(Context context, f fVar) {
        this.f3430b = new WeakReference<>(context);
        this.f3428V = fVar;
    }

    private synchronized boolean A() {
        if (this.f3415I.c() == 0) {
            if (this.f3415I.d() == 0) {
                return true;
            }
        }
        return false;
    }

    private void B() {
        if (this.f3418L != null) {
            com.anythink.core.common.t.c.a().a(this.f3418L);
        }
    }

    private com.anythink.core.common.h.c C() {
        c.a aVar;
        f fVar = this.f3428V;
        com.anythink.core.common.h.c cVarA = (fVar == null || fVar.e() == null) ? null : this.f3428V.e().a(this.f3429a, this.f3435g);
        return (cVarA == null && (aVar = this.f3416J) != null) ? aVar.a() : cVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        if (this.f3417K.size() == 0) {
            return;
        }
        synchronized (this.f3417K) {
            try {
                Iterator<ATBaseAdAdapter> it = this.f3417K.iterator();
                while (it.hasNext()) {
                    it.next().destory();
                }
                this.f3417K.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private synchronized void E() {
        if (this.f3415I.t()) {
            List<by> listB = this.f3415I.b(1);
            if (listB.size() > 0) {
                a(listB, 1);
            }
        }
    }

    public static /* synthetic */ boolean a(int i2) {
        return i2 == 3 || i2 == 5;
    }

    private static boolean b(int i2) {
        return i2 == 3 || i2 == 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() {
        try {
            com.anythink.core.common.h.c cVarC = C();
            this.f3447s = true;
            if (!this.f3443o && cVarC != null) {
                by unitGroupInfo = cVarC.e() != null ? cVarC.e().getUnitGroupInfo() : null;
                a(unitGroupInfo, com.anythink.core.common.v.o.a(unitGroupInfo), true);
                a(9, unitGroupInfo);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void k() {
        if (this.f3444p) {
            this.f3415I.b(this.f3437i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0033 A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:3:0x0001, B:5:0x0010, B:7:0x001a, B:16:0x0033, B:18:0x0041, B:19:0x0044, B:21:0x004b, B:23:0x0051, B:12:0x0023, B:14:0x002b), top: B:28:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void l() {
        /*
            r4 = this;
            monitor-enter(r4)
            com.anythink.core.common.w.g r0 = r4.f3415I     // Catch: java.lang.Throwable -> L21
            r1 = 0
            com.anythink.core.common.h.by r0 = r0.a(r1)     // Catch: java.lang.Throwable -> L21
            com.anythink.core.common.h.by r1 = r4.s()     // Catch: java.lang.Throwable -> L21
            boolean r2 = r4.f3441m     // Catch: java.lang.Throwable -> L21
            if (r2 == 0) goto L23
            int r2 = r4.f3452x     // Catch: java.lang.Throwable -> L21
            com.anythink.core.common.h.ce r3 = r4.f3433e     // Catch: java.lang.Throwable -> L21
            int r3 = r3.g()     // Catch: java.lang.Throwable -> L21
            if (r2 < r3) goto L23
            int r0 = com.anythink.core.common.v.k.a(r0, r1)     // Catch: java.lang.Throwable -> L21
            if (r0 <= 0) goto L33
            goto L23
        L21:
            r0 = move-exception
            goto L56
        L23:
            com.anythink.core.common.w.j r0 = r4.f3414H     // Catch: java.lang.Throwable -> L21
            boolean r0 = r0.c()     // Catch: java.lang.Throwable -> L21
            if (r0 != 0) goto L33
            com.anythink.core.common.w.j r0 = r4.f3414H     // Catch: java.lang.Throwable -> L21
            boolean r0 = r0.b()     // Catch: java.lang.Throwable -> L21
            if (r0 == 0) goto L44
        L33:
            r0 = 1
            r4.f3444p = r0     // Catch: java.lang.Throwable -> L21
            r4.k()     // Catch: java.lang.Throwable -> L21
            com.anythink.core.common.w.g r0 = r4.f3415I     // Catch: java.lang.Throwable -> L21
            int r0 = r0.l()     // Catch: java.lang.Throwable -> L21
            if (r0 != 0) goto L44
            r4.r()     // Catch: java.lang.Throwable -> L21
        L44:
            r4.q()     // Catch: java.lang.Throwable -> L21
            boolean r0 = r4.f3444p     // Catch: java.lang.Throwable -> L21
            if (r0 != 0) goto L51
            boolean r0 = r4.z()     // Catch: java.lang.Throwable -> L21
            if (r0 == 0) goto L54
        L51:
            r4.r()     // Catch: java.lang.Throwable -> L21
        L54:
            monitor-exit(r4)
            return
        L56:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L21
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.g.l():void");
    }

    private void m() throws NumberFormatException {
        if (this.f3416J != null) {
            com.anythink.core.common.h.n nVarAh = this.f3437i.ah();
            ah.a(nVarAh, this.f3416J.d(), 0, true);
            this.f3416J.a(this.f3434f, nVarAh);
        }
    }

    private void n() {
        if (this.f3433e.i() >= 0) {
            this.f3412F = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.di, new AnonymousClass3());
            com.anythink.core.common.t.c.a().a(this.f3412F, this.f3433e.i());
        }
    }

    private com.anythink.core.common.v.b.d o() {
        return new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dj, new AnonymousClass4());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        if (!this.f3443o && this.f3415I.e() > 0) {
            this.f3413G = null;
            by byVarF = this.f3415I.f();
            this.f3415I.a(byVarF);
            b(byVarF, 2);
        }
    }

    private synchronized void q() {
        final ad adVarY;
        if (!this.f3414H.g() && this.f3414H.e()) {
            if (this.f3414H.b()) {
                return;
            }
            if (this.f3437i.al()) {
                return;
            }
            final by byVarB = this.f3415I.b(this.f3441m);
            if (byVarB != null && (adVarY = byVarB.Y()) != null) {
                this.f3414H.h();
                com.anythink.core.mg.a.a aVar = this.f3425S;
                if (aVar != null) {
                    MgComparedResult mgComparedResultA = aVar.a();
                    if (mgComparedResultA == null) {
                        this.f3425S.a(new com.anythink.core.mg.a.b() { // from class: com.anythink.core.common.g.7
                            @Override // com.anythink.core.mg.a.b
                            public final void a(MgComparedResult mgComparedResult) {
                                g.b(adVarY, byVarB, mgComparedResult);
                            }
                        });
                        return;
                    } else {
                        b(adVarY, byVarB, mgComparedResultA);
                        return;
                    }
                }
                b(adVarY, byVarB, null);
            }
        }
    }

    private synchronized void r() {
        if (this.f3414H.e()) {
            if (this.f3414H.b()) {
                return;
            }
            this.f3415I.a(this.f3437i.ah());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public by s() {
        by byVarA;
        if (this.f3433e.j() == 2) {
            synchronized (this.f3410D) {
                byVarA = com.anythink.core.common.w.g.a(this.f3410D);
            }
        } else {
            byVarA = null;
        }
        by byVarU = this.f3415I.u();
        return com.anythink.core.common.v.k.a(byVarA, byVarU) < 0 ? byVarA : byVarU;
    }

    private synchronized void t() {
        this.f3415I.h();
        if (this.f3413G != null) {
            com.anythink.core.common.t.c.a().a(this.f3413G);
            this.f3413G = null;
        }
    }

    private synchronized boolean u() {
        if (this.f3415I.j()) {
            return false;
        }
        if (this.f3414H.c()) {
            return false;
        }
        by byVar = this.f3453y;
        if (byVar != null && byVar.bz()) {
            return false;
        }
        this.f3414H.f();
        this.f3423Q = true;
        List<by> listK = this.f3415I.k();
        this.f3415I.b(listK);
        a(8, listK, new j.a() { // from class: com.anythink.core.common.g.9
            @Override // com.anythink.core.common.j.a
            public final void a(Double d2) {
            }

            @Override // com.anythink.core.common.j.a
            public final void a(String str) {
            }

            @Override // com.anythink.core.common.j.a
            public final void a(String str, List<by> list, List<by> list2, boolean z2) {
                for (by byVar2 : list) {
                    g.this.d(byVar2);
                    byVar2.G(8);
                    g.this.f3415I.a(byVar2);
                    g.this.b(byVar2, 3);
                }
                if (list2 != null) {
                    Iterator<by> it = list2.iterator();
                    while (it.hasNext()) {
                        g.this.b(it.next());
                    }
                }
                g gVar = g.this;
                gVar.f3423Q = false;
                gVar.c((com.anythink.core.common.w.e) null);
            }
        });
        return true;
    }

    private synchronized void v() {
        if (this.f3441m) {
            if (this.f3414H.c()) {
                return;
            }
            by byVar = this.f3453y;
            if (byVar == null || !byVar.bz()) {
                List<by> list = this.f3411E;
                if (list != null && list.size() != 0) {
                    if (this.f3445q) {
                        return;
                    }
                    this.f3445q = true;
                    a(7, this.f3411E, new j.a() { // from class: com.anythink.core.common.g.10
                        @Override // com.anythink.core.common.j.a
                        public final void a(Double d2) {
                        }

                        @Override // com.anythink.core.common.j.a
                        public final void a(String str) {
                        }

                        @Override // com.anythink.core.common.j.a
                        public final void a(String str, List<by> list2, List<by> list3, boolean z2) throws Throwable {
                            if (g.this.f3414H.c()) {
                                for (by byVar2 : list2) {
                                    g.this.f3415I.e(byVar2);
                                    com.anythink.core.common.w.g.c(byVar2, g.this.f3437i);
                                }
                                return;
                            }
                            g gVar = g.this;
                            if (gVar.f3452x < gVar.f3433e.g()) {
                                g.this.a(list2, (List<by>) null, (List<by>) null, list3);
                                g.this.l();
                                return;
                            }
                            int i2 = 0;
                            by byVarA = g.this.f3415I.a(false);
                            int size = list2.size();
                            ArrayList arrayList = new ArrayList(size);
                            ArrayList arrayList2 = new ArrayList(size);
                            for (int i3 = 0; i3 < size; i3++) {
                                by byVar3 = list2.get(i3);
                                g.this.f3415I.e(byVar3);
                                if (com.anythink.core.common.v.k.a(byVar3, byVarA) < 0) {
                                    arrayList.add(byVar3);
                                } else {
                                    arrayList2.add(byVar3);
                                }
                            }
                            int size2 = arrayList.size();
                            int i4 = 0;
                            while (i4 < size2) {
                                Object obj = arrayList.get(i4);
                                i4++;
                                by byVar4 = (by) obj;
                                g.this.d(byVar4);
                                byVar4.G(7);
                                g.this.f3415I.a(byVar4);
                                g.this.b(byVar4, 5);
                            }
                            int size3 = arrayList2.size();
                            while (i2 < size3) {
                                Object obj2 = arrayList2.get(i2);
                                i2++;
                                com.anythink.core.common.w.g.c((by) obj2, g.this.f3437i);
                            }
                        }
                    });
                }
            }
        }
    }

    private boolean w() {
        if (this.f3413G == null || !A()) {
            return false;
        }
        com.anythink.core.common.t.c.a().a(this.f3413G);
        this.f3413G.run();
        this.f3413G = null;
        return true;
    }

    private void x() {
        f((by) null);
    }

    private void y() {
        com.anythink.core.common.h.c cVarC = C();
        if (cVarC == null) {
            f((by) null);
            return;
        }
        by unitGroupInfo = cVarC.e() != null ? cVarC.e().getUnitGroupInfo() : null;
        a(unitGroupInfo, com.anythink.core.common.v.o.a(unitGroupInfo), true);
        a(9, unitGroupInfo);
    }

    private synchronized boolean z() {
        return this.f3415I.s();
    }

    public final c.a h() {
        return this.f3416J;
    }

    public final com.anythink.core.e.m i() {
        return this.f3433e.a();
    }

    /* renamed from: com.anythink.core.common.g$6, reason: invalid class name */
    public class AnonymousClass6 implements com.anythink.core.common.w.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ by f3468a;

        public AnonymousClass6(by byVar) {
            this.f3468a = byVar;
        }

        @Override // com.anythink.core.common.w.c
        public final void a(com.anythink.core.common.h.n nVar) {
            com.anythink.core.common.u.e.a(g.this.f3429a);
            com.anythink.core.common.u.e.a(1, nVar);
            aa.a(nVar, i.s.f2721a, i.s.f2735o, "");
        }

        @Override // com.anythink.core.common.w.c
        public final void a(com.anythink.core.common.h.n nVar, ATBaseAdAdapter aTBaseAdAdapter) {
            g.a(g.this, nVar, aTBaseAdAdapter);
            if (this.f3468a.aR() == 1) {
                g.a(g.this, aTBaseAdAdapter);
            }
        }

        @Override // com.anythink.core.common.w.c
        public final void a(ATBaseAdAdapter aTBaseAdAdapter, String str) {
            g.this.a(aTBaseAdAdapter, str);
        }

        @Override // com.anythink.core.common.w.c
        public final void a(String str) {
            g.this.a(str);
            if (this.f3468a.aR() == 1) {
                g.this.D();
            }
        }

        @Override // com.anythink.core.common.w.c
        public final void a(String str, ATBaseAdAdapter aTBaseAdAdapter, by byVar, com.anythink.core.common.h.c cVar) throws Throwable {
            g.this.a(str, aTBaseAdAdapter, cVar.f(), byVar);
        }

        @Override // com.anythink.core.common.w.c
        public final void a(String str, ATBaseAdAdapter aTBaseAdAdapter, BaseAd... baseAdArr) throws Throwable {
            IATAdFilter iATAdFilterQ = com.anythink.core.common.d.s.b().q(g.this.f3435g);
            BaseAd baseAd = (baseAdArr == null || baseAdArr.length <= 0) ? null : baseAdArr[0];
            if (iATAdFilterQ != null && iATAdFilterQ.isAdFilter(com.anythink.core.common.d.k.a(aTBaseAdAdapter, 3), baseAd)) {
                com.anythink.core.common.w.b bVar = new com.anythink.core.common.w.b();
                bVar.f8416c = 8;
                bVar.f8418e = aTBaseAdAdapter.getTrackingInfo().ac();
                bVar.f8417d = ErrorCode.getErrorCode(ErrorCode.adSourceNotFilledError, "", "");
                bVar.f8419f = aTBaseAdAdapter.getTrackingInfo();
                bVar.f8420g = aTBaseAdAdapter.getUnitGroupInfo();
                g.this.a(str, bVar);
            } else {
                g.this.a(str, aTBaseAdAdapter, baseAdArr != null ? Arrays.asList(baseAdArr) : null);
            }
            if (this.f3468a.aR() == 1) {
                g.b(g.this, aTBaseAdAdapter);
            }
        }

        @Override // com.anythink.core.common.w.c
        public final void a(String str, ATBaseAdAdapter aTBaseAdAdapter, com.anythink.core.common.w.b bVar) {
            g.this.a(str, bVar);
            if (aTBaseAdAdapter == null || aTBaseAdAdapter.getUnitGroupInfo() == null) {
                return;
            }
            aTBaseAdAdapter.getUnitGroupInfo();
            if (this.f3468a.aR() == 1) {
                g.b(g.this, aTBaseAdAdapter);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(by byVar) {
        this.f3415I.d(byVar);
        com.anythink.core.common.w.g.a(this.f3428V, this.f3435g, this.f3434f, null, byVar);
        this.f3415I.e(byVar);
        this.f3415I.c(byVar);
        g(byVar);
    }

    private synchronized void e(by byVar) {
        if (this.f3414H.b()) {
            return;
        }
        if (this.f3437i.al()) {
            return;
        }
        com.anythink.core.common.w.g.i(byVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(by byVar) {
        this.f3443o = true;
        this.f3442n = false;
        if (this.f3418L != null) {
            com.anythink.core.common.t.c.a().a(this.f3418L);
        }
        com.anythink.core.common.u.f.a(this.f3437i.ah(), this.f3449u, byVar);
        if (!this.f3421O) {
            a(this.f3449u);
        }
        f();
    }

    public final void g() {
        List<com.anythink.core.common.w.f> listI = this.f3415I.i();
        synchronized (listI) {
            try {
                if (listI.size() > 0) {
                    by byVarA = listI.remove(0).a();
                    if (!this.f3443o || this.f3452x < this.f3433e.g() || com.anythink.core.common.v.k.a(byVarA, this.f3453y) < 0) {
                        this.f3415I.a(byVarA);
                        b(byVarA, 4);
                    }
                }
                if (listI.size() > 0) {
                    for (com.anythink.core.common.w.f fVar : listI) {
                        by byVarA2 = fVar.a();
                        if (!this.f3443o || this.f3452x < this.f3433e.g() || com.anythink.core.common.v.k.a(byVarA2, this.f3453y) < 0) {
                            int iB = fVar.b();
                            if (iB == 1) {
                                a(byVarA2, 1);
                                c(iB);
                            } else if (iB == 2) {
                                a(byVarA2, 2);
                                c(iB);
                            } else if (iB == 3) {
                                this.f3415I.a(byVarA2);
                                b(byVarA2, 3);
                            }
                        }
                    }
                }
                listI.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        l();
    }

    private synchronized void c(int i2) {
        int iN;
        try {
            if (i2 != 2) {
                iN = this.f3415I.m();
            } else {
                iN = this.f3415I.n();
            }
            if (iN == 0) {
                a(this.f3415I.b(i2), i2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(by byVar) {
        this.f3449u.putNetworkErrorMsg(byVar.G(), byVar.n(), byVar.o(), ErrorCode.getErrorCode(ErrorCode.noADError, "", byVar.M()));
        this.f3415I.c(byVar);
    }

    private void c(by byVar) throws Throwable {
        if (byVar != null) {
            try {
                if (byVar.n() == 22) {
                    this.f3415I.f(byVar);
                    com.anythink.core.common.w.g.a(byVar, this.f3437i);
                }
            } catch (Exception unused) {
                return;
            }
        }
        if (byVar != null) {
            if (byVar.B() == -11 || byVar.B() == -13) {
                this.f3415I.f(byVar);
                com.anythink.core.common.w.g.b(byVar, this.f3437i);
            }
        }
    }

    private synchronized void d(com.anythink.core.common.w.e eVar) {
        by byVar;
        ATRequestingInfo aTRequestingInfoE;
        if (this.f3421O) {
            as asVar = this.f3438j;
            if (asVar != null) {
                asVar.f3814f = null;
            }
            return;
        }
        as asVar2 = this.f3438j;
        if (asVar2 != null && asVar2.f3814f != null) {
            if (this.f3408B == null) {
                byVar = this.f3453y;
            } else if (eVar == null || eVar.f() == null || eVar.c() == null) {
                z = false;
                byVar = null;
            } else {
                by byVarF = eVar.f();
                z = com.anythink.core.common.v.k.a(byVarF, this.f3408B) < 0 && eVar.c().booleanValue();
                byVar = byVarF;
            }
            if (z) {
                this.f3408B = byVar;
                aTRequestingInfoE = this.f3415I.e(byVar, this.f3437i);
                if (aTRequestingInfoE != null) {
                    this.f3438j.f3814f.onAdMultipleLoaded(aTRequestingInfoE);
                }
            } else {
                aTRequestingInfoE = null;
            }
            if (aTRequestingInfoE == null && this.f3415I.a(this.f3441m, this.f3408B)) {
                this.f3438j.f3814f.onAdMultipleLoaded(null);
                this.f3438j.f3814f = null;
            }
        }
    }

    public final void b() {
        this.f3440l = true;
        long jA = this.f3415I.a(this.f3441m, this.f3433e.a().L());
        if (jA > -1) {
            this.f3413G = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dj, new AnonymousClass4());
        }
        if (this.f3415I.g() && this.f3441m) {
            u();
        }
        a(this.f3415I.r(), 1);
        if (this.f3413G != null) {
            com.anythink.core.common.t.c.a().a(this.f3413G, jA);
        }
        if (this.f3416J != null) {
            com.anythink.core.common.h.n nVarAh = this.f3437i.ah();
            ah.a(nVarAh, this.f3416J.d(), 0, true);
            this.f3416J.a(this.f3434f, nVarAh);
        }
    }

    public final synchronized void e() {
        this.f3441m = true;
        this.f3446r = true;
        c((com.anythink.core.common.w.e) null);
        l();
    }

    private void a(Double d2) {
        com.anythink.core.common.w.g gVar = this.f3415I;
        if (gVar != null) {
            gVar.a(d2);
        }
    }

    public final void f() {
        this.f3421O = true;
        f fVar = this.f3428V;
        if (fVar != null) {
            fVar.a(this.f3434f);
            return;
        }
        com.anythink.core.common.u.f.b("AdManage is null--notifycancel", "Id:" + this.f3435g + "--format:" + this.f3433e.a().ap(), com.anythink.core.common.d.s.b().r());
    }

    public final synchronized void a() {
        ConcurrentHashMap concurrentHashMap;
        try {
            this.f3414H.a();
            synchronized (this.f3410D) {
                concurrentHashMap = new ConcurrentHashMap(this.f3410D);
            }
            Iterator it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                com.anythink.core.common.w.e eVar = (com.anythink.core.common.w.e) ((Map.Entry) it.next()).getValue();
                if (eVar != null) {
                    eVar.b();
                }
            }
            if (!this.f3443o) {
                this.f3443o = true;
                y();
            }
            l();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e(int r9) {
        /*
            r8 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "placementId:"
            r0.<init>(r1)
            java.lang.String r1 = r8.f3435g
            r0.append(r1)
            java.lang.String r1 = ";result_callback:success;loadType:"
            r0.append(r1)
            com.anythink.core.common.h.as r1 = r8.f3438j
            int r1 = r1.f3811c
            r0.append(r1)
            java.lang.String r1 = ";"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "Mediation"
            com.anythink.core.common.v.aa.a(r1, r0)
            android.content.Context r0 = r8.f3429a
            com.anythink.core.common.u r0 = com.anythink.core.common.u.a(r0)
            java.lang.String r1 = r8.f3435g
            java.lang.String r2 = r8.f3434f
            r3 = 1
            r0.a(r1, r2, r3)
            com.anythink.core.common.h.as r0 = r8.f3438j
            if (r0 == 0) goto L7e
            com.anythink.core.common.n r0 = r0.f3813e
            if (r0 == 0) goto L7e
            r1 = 0
            com.anythink.core.common.h.ce r0 = r8.f3433e     // Catch: java.lang.Throwable -> L56
            if (r0 == 0) goto L68
            com.anythink.core.e.m r0 = r0.a()     // Catch: java.lang.Throwable -> L56
            if (r0 == 0) goto L68
            com.anythink.core.common.f r2 = r8.f3428V     // Catch: java.lang.Throwable -> L56 com.anythink.core.common.h.m -> L58
            if (r2 == 0) goto L68
            com.anythink.core.common.h.n r2 = r8.f3437i     // Catch: java.lang.Throwable -> L56 com.anythink.core.common.h.m -> L58
            com.anythink.core.common.f.a(r0, r2)     // Catch: java.lang.Throwable -> L56 com.anythink.core.common.h.m -> L58
            com.anythink.core.common.h.n r2 = r8.f3437i     // Catch: java.lang.Throwable -> L56 com.anythink.core.common.h.m -> L58
            com.anythink.core.common.f.b(r0, r2)     // Catch: java.lang.Throwable -> L56 com.anythink.core.common.h.m -> L58
            goto L68
        L56:
            r0 = move-exception
            goto L65
        L58:
            r0 = move-exception
            com.anythink.core.common.h.as r2 = r8.f3438j     // Catch: java.lang.Throwable -> L56
            com.anythink.core.common.n r4 = r2.f3813e     // Catch: java.lang.Throwable -> L56
            com.anythink.core.common.h.ce r5 = r8.f3433e     // Catch: java.lang.Throwable -> L56
            com.anythink.core.api.AdError r0 = r0.f4298a     // Catch: java.lang.Throwable -> L56
            r4.a(r3, r2, r5, r0)     // Catch: java.lang.Throwable -> L56
            goto L7a
        L65:
            r0.printStackTrace()
        L68:
            r8.d(r1)
            com.anythink.core.common.h.as r0 = r8.f3438j
            com.anythink.core.common.n r2 = r0.f3813e
            boolean r4 = r8.f3407A
            if (r4 == 0) goto L74
            goto L75
        L74:
            r3 = 2
        L75:
            com.anythink.core.common.h.ce r4 = r8.f3433e
            r2.a(r3, r0, r4, r9)
        L7a:
            com.anythink.core.common.h.as r9 = r8.f3438j
            r9.f3813e = r1
        L7e:
            com.anythink.core.d.b r2 = com.anythink.core.d.b.a()
            java.lang.String r3 = r8.f3435g
            java.lang.String r4 = r8.f3434f
            com.anythink.core.common.h.ce r9 = r8.f3433e
            com.anythink.core.e.m r9 = r9.a()
            int r5 = r9.ax()
            com.anythink.core.common.h.as r6 = r8.f3438j
            com.anythink.core.common.w.g r9 = r8.f3415I
            com.anythink.core.common.h.ac r9 = r9.b()
            com.anythink.core.common.h.by r7 = r9.b()
            r2.a(r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.g.e(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001e, code lost:
    
        if (r2.f3447s == false) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void c(com.anythink.core.common.w.e r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.anythink.core.common.h.by r0 = r2.s()     // Catch: java.lang.Throwable -> L12
            boolean r1 = r2.f3454z     // Catch: java.lang.Throwable -> L12
            if (r1 == 0) goto L33
            boolean r1 = r2.f3441m     // Catch: java.lang.Throwable -> L12
            if (r1 != 0) goto L14
            boolean r1 = r2.f3446r     // Catch: java.lang.Throwable -> L12
            if (r1 == 0) goto L1c
            goto L14
        L12:
            r3 = move-exception
            goto L69
        L14:
            com.anythink.core.common.h.by r1 = r2.f3453y     // Catch: java.lang.Throwable -> L12
            int r0 = com.anythink.core.common.v.k.a(r1, r0)     // Catch: java.lang.Throwable -> L12
            if (r0 <= 0) goto L20
        L1c:
            boolean r0 = r2.f3447s     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L67
        L20:
            boolean r0 = r2.f3443o     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L2b
            com.anythink.core.common.h.by r3 = r2.f3453y     // Catch: java.lang.Throwable -> L12
            r0 = -1
            r2.a(r0, r3)     // Catch: java.lang.Throwable -> L12
            goto L2e
        L2b:
            r2.d(r3)     // Catch: java.lang.Throwable -> L12
        L2e:
            r2.v()     // Catch: java.lang.Throwable -> L12
            monitor-exit(r2)
            return
        L33:
            boolean r3 = r2.f3441m     // Catch: java.lang.Throwable -> L12
            if (r3 == 0) goto L67
            boolean r3 = r2.f3423Q     // Catch: java.lang.Throwable -> L12
            if (r3 == 0) goto L3d
            monitor-exit(r2)
            return
        L3d:
            com.anythink.core.common.v.b.d r3 = r2.f3413G     // Catch: java.lang.Throwable -> L12
            if (r3 == 0) goto L5a
            boolean r3 = r2.A()     // Catch: java.lang.Throwable -> L12
            if (r3 == 0) goto L5a
            com.anythink.core.common.t.a r3 = com.anythink.core.common.t.c.a()     // Catch: java.lang.Throwable -> L12
            com.anythink.core.common.v.b.d r0 = r2.f3413G     // Catch: java.lang.Throwable -> L12
            r3.a(r0)     // Catch: java.lang.Throwable -> L12
            com.anythink.core.common.v.b.d r3 = r2.f3413G     // Catch: java.lang.Throwable -> L12
            r3.run()     // Catch: java.lang.Throwable -> L12
            r3 = 0
            r2.f3413G = r3     // Catch: java.lang.Throwable -> L12
            monitor-exit(r2)
            return
        L5a:
            boolean r3 = r2.z()     // Catch: java.lang.Throwable -> L12
            if (r3 == 0) goto L67
            boolean r3 = r2.f3443o     // Catch: java.lang.Throwable -> L12
            if (r3 != 0) goto L67
            r2.y()     // Catch: java.lang.Throwable -> L12
        L67:
            monitor-exit(r2)
            return
        L69:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L12
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.g.c(com.anythink.core.common.w.e):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final by byVar, final int i2) {
        final com.anythink.core.common.w.e eVar = new com.anythink.core.common.w.e(byVar, i2, this.f3428V);
        final String strA = eVar.a();
        this.f3410D.put(strA, eVar);
        this.f3415I.a(1, i2);
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aC, new Runnable() { // from class: com.anythink.core.common.g.5
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
            /* JADX WARN: Removed duplicated region for block: B:52:0x01d0  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() throws java.lang.Throwable {
                /*
                    Method dump skipped, instructions count: 646
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.g.AnonymousClass5.run():void");
            }
        }));
    }

    private void a(Map<String, Object> map) {
        this.f3436h = map;
    }

    private void a(com.anythink.core.common.h.n nVar) {
        this.f3437i = nVar;
    }

    private void b(com.anythink.core.common.h.n nVar, ATBaseAdAdapter aTBaseAdAdapter) {
        com.anythink.core.common.d.c cVar = this.f3439k;
        if (cVar != null) {
            cVar.onAdSourceLoadFilled(nVar);
        }
        a(nVar, (AdError) null, a.b.f8372b, aTBaseAdAdapter.getUnitGroupInfo());
        com.anythink.core.common.v.d.a().a(nVar, aTBaseAdAdapter.getUnitGroupInfo(), 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(int r9) {
        /*
            r8 = this;
            r8.u()
            boolean r0 = r8.f3421O
            if (r0 != 0) goto La6
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "placementId:"
            r0.<init>(r1)
            java.lang.String r1 = r8.f3435g
            r0.append(r1)
            java.lang.String r1 = ";result_callback:success;loadType:"
            r0.append(r1)
            com.anythink.core.common.h.as r1 = r8.f3438j
            int r1 = r1.f3811c
            r0.append(r1)
            java.lang.String r1 = ";"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "Mediation"
            com.anythink.core.common.v.aa.a(r1, r0)
            android.content.Context r0 = r8.f3429a
            com.anythink.core.common.u r0 = com.anythink.core.common.u.a(r0)
            java.lang.String r1 = r8.f3435g
            java.lang.String r2 = r8.f3434f
            r3 = 1
            r0.a(r1, r2, r3)
            com.anythink.core.common.h.as r0 = r8.f3438j
            if (r0 == 0) goto L85
            com.anythink.core.common.n r0 = r0.f3813e
            if (r0 == 0) goto L85
            r1 = 0
            com.anythink.core.common.h.ce r0 = r8.f3433e     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L6f
            com.anythink.core.e.m r0 = r0.a()     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L6f
            com.anythink.core.common.f r2 = r8.f3428V     // Catch: java.lang.Throwable -> L5d com.anythink.core.common.h.m -> L5f
            if (r2 == 0) goto L6f
            com.anythink.core.common.h.n r2 = r8.f3437i     // Catch: java.lang.Throwable -> L5d com.anythink.core.common.h.m -> L5f
            com.anythink.core.common.f.a(r0, r2)     // Catch: java.lang.Throwable -> L5d com.anythink.core.common.h.m -> L5f
            com.anythink.core.common.h.n r2 = r8.f3437i     // Catch: java.lang.Throwable -> L5d com.anythink.core.common.h.m -> L5f
            com.anythink.core.common.f.b(r0, r2)     // Catch: java.lang.Throwable -> L5d com.anythink.core.common.h.m -> L5f
            goto L6f
        L5d:
            r0 = move-exception
            goto L6c
        L5f:
            r0 = move-exception
            com.anythink.core.common.h.as r2 = r8.f3438j     // Catch: java.lang.Throwable -> L5d
            com.anythink.core.common.n r4 = r2.f3813e     // Catch: java.lang.Throwable -> L5d
            com.anythink.core.common.h.ce r5 = r8.f3433e     // Catch: java.lang.Throwable -> L5d
            com.anythink.core.api.AdError r0 = r0.f4298a     // Catch: java.lang.Throwable -> L5d
            r4.a(r3, r2, r5, r0)     // Catch: java.lang.Throwable -> L5d
            goto L81
        L6c:
            r0.printStackTrace()
        L6f:
            r8.d(r1)
            com.anythink.core.common.h.as r0 = r8.f3438j
            com.anythink.core.common.n r2 = r0.f3813e
            boolean r4 = r8.f3407A
            if (r4 == 0) goto L7b
            goto L7c
        L7b:
            r3 = 2
        L7c:
            com.anythink.core.common.h.ce r4 = r8.f3433e
            r2.a(r3, r0, r4, r9)
        L81:
            com.anythink.core.common.h.as r9 = r8.f3438j
            r9.f3813e = r1
        L85:
            com.anythink.core.d.b r2 = com.anythink.core.d.b.a()
            java.lang.String r3 = r8.f3435g
            java.lang.String r4 = r8.f3434f
            com.anythink.core.common.h.ce r9 = r8.f3433e
            com.anythink.core.e.m r9 = r9.a()
            int r5 = r9.ax()
            com.anythink.core.common.h.as r6 = r8.f3438j
            com.anythink.core.common.w.g r9 = r8.f3415I
            com.anythink.core.common.h.ac r9 = r9.b()
            com.anythink.core.common.h.by r7 = r9.b()
            r2.a(r3, r4, r5, r6, r7)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.g.d(int):void");
    }

    private void g(by byVar) {
        if (byVar != null && com.anythink.core.common.w.g.j(byVar) > com.anythink.core.common.v.o.a(this.f3422P)) {
            this.f3422P = byVar;
        }
    }

    public final void a(com.anythink.core.common.d.c cVar) {
        this.f3439k = cVar;
    }

    public final void a(as asVar) {
        this.f3438j = asVar;
    }

    private synchronized void a(List<by> list, int i2) {
        if (!this.f3414H.b() && !this.f3414H.c() && list != null && list.size() != 0) {
            this.f3415I.a(list);
            Iterator<by> it = list.iterator();
            while (it.hasNext()) {
                b(it.next(), i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(com.anythink.core.common.h.ad r1, com.anythink.core.common.h.by r2, com.anythink.core.mg.api.MgComparedResult r3) {
        /*
            if (r3 == 0) goto L13
            boolean r0 = r3.isMgWin()
            if (r0 == 0) goto La
            r3 = 0
            goto L14
        La:
            boolean r3 = r3.isCompared()
            if (r3 == 0) goto L13
            r3 = 34
            goto L14
        L13:
            r3 = 2
        L14:
            if (r3 <= 0) goto L19
            com.anythink.core.c.d.c.a(r1, r2, r3)
        L19:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.g.b(com.anythink.core.common.h.ad, com.anythink.core.common.h.by, com.anythink.core.mg.api.MgComparedResult):void");
    }

    public final boolean c() {
        if (this.f3443o) {
            return true;
        }
        return this.f3441m && this.f3415I.c() == 0 && this.f3415I.l() == 0;
    }

    private void b(com.anythink.core.common.w.e eVar) {
        if (eVar.c() == null || !eVar.c().booleanValue() || eVar.e() == 2 || !eVar.c().booleanValue()) {
            return;
        }
        this.f3452x++;
    }

    private synchronized void a(by byVar, int i2) {
        this.f3415I.b(byVar, i2);
    }

    private synchronized void a(by byVar) {
        this.f3415I.b(byVar);
    }

    private void b(long j2) {
        com.anythink.core.common.t.c.a().a(this.f3418L, j2);
    }

    private void b(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter == null) {
            return;
        }
        synchronized (this.f3417K) {
            this.f3417K.remove(aTBaseAdAdapter);
        }
    }

    public final synchronized void a(List<by> list, List<by> list2, List<by> list3, List<by> list4) {
        boolean zA;
        String str;
        if (list2 != null) {
            try {
                Iterator<by> it = list2.iterator();
                while (it.hasNext()) {
                    b(it.next());
                }
            } finally {
            }
        }
        if (list4 != null && !list4.isEmpty()) {
            for (by byVar : list4) {
                if (byVar != null) {
                    try {
                        if (byVar.n() == 22) {
                            this.f3415I.f(byVar);
                            com.anythink.core.common.w.g.a(byVar, this.f3437i);
                        }
                    } catch (Exception unused) {
                    }
                }
                if (byVar != null && (byVar.B() == -11 || byVar.B() == -13)) {
                    this.f3415I.f(byVar);
                    com.anythink.core.common.w.g.b(byVar, this.f3437i);
                }
            }
        }
        if (list3 != null) {
            this.f3411E.addAll(list3);
        }
        if (list != null && list.size() != 0) {
            this.f3414H.f();
            h hVar = this.f3426T;
            boolean zE = hVar == null ? false : hVar.e();
            h hVar2 = this.f3426T;
            boolean zD = hVar2 == null ? false : hVar2.d();
            if (!this.f3441m && ((zD && zE) || !this.f3440l || this.f3427U)) {
                a(list);
                return;
            }
            by byVar2 = list.get(0);
            boolean zA2 = com.anythink.core.common.w.g.a(byVar2, this.f3414H);
            if (zE && !zD) {
                zA = this.f3415I.a(byVar2, false);
            } else {
                zA = this.f3415I.a(byVar2, true);
            }
            if (zA2 || zA) {
                if (!this.f3443o) {
                    str = "1";
                } else {
                    str = this.f3442n ? "2" : "3";
                }
                String str2 = str;
                String str3 = "1";
                if (zA2) {
                    str3 = "1";
                } else if (zA) {
                    str3 = "2";
                }
                com.anythink.core.common.u.f.a(this.f3437i, byVar2.n(), byVar2.G(), com.anythink.core.common.v.o.a(byVar2), com.anythink.core.common.v.o.b(byVar2), str2, str3, byVar2.bB(), byVar2.bC());
                if (byVar2.av()) {
                    this.f3419M = byVar2;
                }
                d(byVar2);
                list.remove(0);
                this.f3415I.a(byVar2);
                b(byVar2, 3);
            }
            a(list);
            E();
        }
    }

    public static /* synthetic */ void b(g gVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            synchronized (gVar.f3417K) {
                gVar.f3417K.remove(aTBaseAdAdapter);
            }
        }
    }

    public final void d() {
        this.f3446r = true;
        c((com.anythink.core.common.w.e) null);
    }

    private void a(List<by> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (by byVar : list) {
            d(byVar);
            a(byVar, 1);
        }
    }

    public final void a(com.anythink.core.common.w.h hVar) {
        this.f3415I = new com.anythink.core.common.w.g(hVar, this.f3414H);
        this.f3441m = hVar.f8516i;
        this.f3434f = hVar.f8509b;
        this.f3435g = hVar.f8508a;
        this.f3433e = hVar.f8510c;
        this.f3431c = hVar.f8517j;
        this.f3448t = com.anythink.core.common.w.g.c(hVar.f8511d);
        this.f3427U = hVar.f8524q;
    }

    public final void a(h hVar) {
        this.f3426T = hVar;
        this.f3450v = SystemClock.elapsedRealtime();
        com.anythink.core.common.t.c.a().a(this.f3418L, this.f3433e.h());
        if (this.f3433e.i() >= 0) {
            this.f3412F = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.di, new AnonymousClass3());
            com.anythink.core.common.t.c.a().a(this.f3412F, this.f3433e.i());
        }
    }

    private void a(long j2) {
        if (this.f3413G != null) {
            com.anythink.core.common.t.c.a().a(this.f3413G, j2);
        }
    }

    public static void a(int i2, ad adVar, by byVar, com.anythink.core.common.h.n nVar, int i3) throws Throwable {
        if (adVar != null) {
            ay ayVar = new ay(i2, byVar, nVar, adVar.getSortPrice());
            if (byVar != null) {
                int iBE = byVar.bE();
                if (iBE == 1) {
                    ayVar.d(byVar.az());
                } else if (iBE == 2) {
                    ayVar.b(byVar.bG());
                    ayVar.d(byVar.bF());
                } else if (iBE == 3) {
                    ayVar.d(byVar.bF());
                }
            }
            com.anythink.core.c.d.c.a(adVar, ayVar, true, i3);
        }
    }

    private static void a(ay ayVar, by byVar) {
        if (byVar != null) {
            int iBE = byVar.bE();
            if (iBE == 1) {
                ayVar.d(byVar.az());
                return;
            }
            if (iBE == 2) {
                ayVar.b(byVar.bG());
                ayVar.d(byVar.bF());
            } else if (iBE == 3) {
                ayVar.d(byVar.bF());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(com.anythink.core.common.h.n nVar, by byVar, int i2, String str) {
        try {
            f fVar = this.f3428V;
            com.anythink.core.common.h.i iVarS = fVar != null ? fVar.s() : null;
            if (iVarS == null || !iVarS.a(byVar)) {
                return false;
            }
            aa.a(this.f3435g, nVar, "Can't Load On Showing", byVar, -1, -1);
            com.anythink.core.common.u.f.a(nVar, 7, ErrorCode.getErrorCode(ErrorCode.loadInShowingFilter, "", "Can't Load On Showing"));
            this.f3428V.a(iVarS.a(), this.f3434f);
            this.f3415I.a(byVar, i2);
            a(byVar);
            this.f3415I.a(i2);
            this.f3410D.remove(str);
            this.f3415I.a(-1, i2);
            a(this.f3415I.b(i2), i2);
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(com.anythink.core.common.w.e eVar, com.anythink.core.common.h.n nVar, by byVar) throws JSONException {
        com.anythink.core.common.w.d dVar = new com.anythink.core.common.w.d();
        dVar.f8433a = this.f3429a;
        dVar.f8434b = this.f3430b;
        dVar.f8435c = this.f3434f;
        dVar.f8436d = this.f3435g;
        dVar.f8437e = this.f3433e.a();
        dVar.f8438f = this.f3436h;
        dVar.f8439g = this.f3451w;
        dVar.f8440h = nVar;
        dVar.f8441i = this.f3415I.q();
        eVar.a(dVar);
        eVar.a(new AnonymousClass6(byVar));
        eVar.a(this.f3409C);
    }

    private void a(com.anythink.core.common.h.n nVar, ATBaseAdAdapter aTBaseAdAdapter) {
        com.anythink.core.common.d.c cVar = this.f3439k;
        if (cVar != null) {
            cVar.onAdSourceAttempt(nVar);
        }
        if (aTBaseAdAdapter != null) {
            a(nVar, (AdError) null, a.b.f8371a, aTBaseAdAdapter.getUnitGroupInfo());
        }
        if (aTBaseAdAdapter != null) {
            com.anythink.core.common.v.d.a().a(nVar, aTBaseAdAdapter.getUnitGroupInfo(), 3);
        }
    }

    private void a(com.anythink.core.common.h.n nVar, AdError adError, by byVar) {
        com.anythink.core.common.d.c cVar = this.f3439k;
        if (cVar != null) {
            cVar.onAdSourceLoadFail(nVar, adError);
        }
        a(nVar, adError, a.b.f8373c, byVar);
    }

    private void a(com.anythink.core.common.h.n nVar, AdError adError, int i2, by byVar) {
        String platformCode;
        String platformMSG;
        if (nVar == null) {
            return;
        }
        if (nVar.L() && i2 == a.b.f8371a) {
            return;
        }
        com.anythink.core.common.w.a.b.d dVar = (com.anythink.core.common.w.a.b.d) com.anythink.core.common.w.a.a.d.a(nVar.aQ(), com.anythink.core.common.w.a.b.d.class);
        if (dVar != null) {
            if (adError != null) {
                platformCode = adError.getPlatformCode();
                platformMSG = adError.getPlatformMSG();
            } else {
                platformCode = "";
                platformMSG = "";
            }
            dVar.a(am.a(nVar, platformCode, platformMSG, i2));
        }
        com.anythink.core.a.c.a();
        if (i2 == a.b.f8371a) {
            com.anythink.core.a.c.a(this.f3429a, byVar, nVar.aQ());
            return;
        }
        if (i2 == a.b.f8373c) {
            com.anythink.core.a.c.b(this.f3429a, byVar, nVar.aQ());
        } else if (i2 == a.b.f8372b) {
            Context context = this.f3429a;
            nVar.aQ();
            com.anythink.core.a.c.b(context, byVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str, ATBaseAdAdapter aTBaseAdAdapter, BaseAd baseAd, by byVar) throws Throwable {
        try {
            try {
                com.anythink.core.common.w.e eVarRemove = this.f3410D.remove(str);
                if (eVarRemove == null) {
                    return;
                }
                a(eVarRemove, aTBaseAdAdapter, byVar, aTBaseAdAdapter.getTrackingInfo(), true, baseAd);
                a(byVar);
                t();
                b(aTBaseAdAdapter.getTrackingInfo(), aTBaseAdAdapter);
                byVar.G();
                a(eVarRemove);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00d7 A[Catch: all -> 0x0060, TryCatch #0 {all -> 0x0060, blocks: (B:20:0x0043, B:22:0x0052, B:24:0x005c, B:27:0x0064, B:29:0x0078, B:31:0x008b, B:33:0x0090, B:35:0x0096, B:37:0x009c, B:39:0x00a4, B:43:0x00b2, B:45:0x00ba, B:48:0x00c6, B:49:0x00d1, B:55:0x00f9, B:50:0x00d7, B:52:0x00db, B:54:0x00e1, B:30:0x0082, B:60:0x0113), top: B:62:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(java.lang.String r11, com.anythink.core.api.bridge.ATBaseAdAdapter r12, java.util.List<? extends com.anythink.core.api.BaseAd> r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.g.a(java.lang.String, com.anythink.core.api.bridge.ATBaseAdAdapter, java.util.List):void");
    }

    private synchronized void a(by byVar, com.anythink.core.common.h.n nVar) {
        com.anythink.core.common.w.g.d(byVar, nVar);
    }

    private void a(com.anythink.core.common.w.e eVar, ATBaseAdAdapter aTBaseAdAdapter, by byVar, com.anythink.core.common.h.n nVar, boolean z2, BaseAd... baseAdArr) {
        Map<String, Object> internalNetworkInfoMap;
        BaseAd baseAd;
        try {
            if (nVar.i() == null || nVar.i().isEmpty()) {
                if (baseAdArr != null && baseAdArr.length > 0 && (baseAd = baseAdArr[0]) != null) {
                    internalNetworkInfoMap = baseAd.getNetworkInfoMap();
                } else {
                    internalNetworkInfoMap = aTBaseAdAdapter.getInternalNetworkInfoMap();
                }
                nVar.a(internalNetworkInfoMap);
            }
        } catch (Exception unused) {
        }
        nVar.m(ai.a(byVar, aTBaseAdAdapter));
        double dA = eVar.e() != 2 ? com.anythink.core.common.v.o.a(byVar) : 0.0d;
        a(byVar, dA, z2);
        com.anythink.core.c.d.c.a(aTBaseAdAdapter, byVar, nVar, baseAdArr);
        this.f3415I.h(byVar);
        double d2 = this.f3420N;
        if (d2 <= 0.0d) {
            nVar.f4344v = 0;
        } else if (d2 < dA) {
            nVar.f4344v = 2;
        } else {
            nVar.f4344v = 1;
        }
        com.anythink.core.common.w.g.a(this.f3428V, this.f3435g, this.f3434f, byVar, null);
    }

    private void a(com.anythink.core.common.w.e eVar) {
        boolean zD = eVar.d();
        if (zD) {
            this.f3415I.a(-1, eVar.e());
        }
        b(eVar);
        c(eVar);
        if (this.f3416J != null && this.f3415I.b().b() != this.f3416J.d() && com.anythink.core.common.v.k.a(this.f3453y, this.f3416J.d()) <= 0) {
            this.f3416J.c();
        }
        if (!zD) {
            l();
            return;
        }
        this.f3415I.a(eVar.e());
        a(this.f3415I.b(eVar.e()), eVar.e());
        l();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(final int r9, com.anythink.core.common.h.by r10) {
        /*
            r8 = this;
            r8.t()
            com.anythink.core.common.v.b.d r0 = r8.f3412F
            r1 = 0
            if (r0 == 0) goto L13
            com.anythink.core.common.t.a r0 = com.anythink.core.common.t.c.a()
            com.anythink.core.common.v.b.d r2 = r8.f3412F
            r0.a(r2)
            r8.f3412F = r1
        L13:
            com.anythink.core.common.a.c$a r0 = r8.f3416J
            r2 = 13
            r3 = 1
            if (r0 == 0) goto L63
            com.anythink.core.common.h.by r0 = r0.d()
            com.anythink.core.common.w.g r4 = r8.f3415I
            com.anythink.core.common.h.ac r4 = r4.b()
            com.anythink.core.common.h.by r4 = r4.b()
            if (r0 == r4) goto L38
            com.anythink.core.common.a.c$a r0 = r8.f3416J
            com.anythink.core.common.h.by r0 = r0.d()
            com.anythink.core.common.h.by r4 = r8.f3453y
            int r0 = com.anythink.core.common.v.k.a(r0, r4)
            if (r0 >= 0) goto L63
        L38:
            com.anythink.core.common.a.c$a r0 = r8.f3416J
            boolean r0 = r0.b()
            if (r0 == 0) goto L63
            com.anythink.core.common.a.c$a r9 = r8.f3416J
            com.anythink.core.common.h.by r9 = r9.d()
            com.anythink.core.common.a.c$a r0 = r8.f3416J
            com.anythink.core.common.h.by r0 = r0.d()
            double r4 = com.anythink.core.common.v.o.a(r0)
            r8.a(r9, r4, r3)
            com.anythink.core.common.a.c$a r9 = r8.f3416J
            com.anythink.core.common.h.by r9 = r9.d()
            boolean r9 = r9.bz()
            if (r9 == 0) goto L61
            r9 = r2
            goto L63
        L61:
            r9 = 11
        L63:
            com.anythink.core.common.h.by r0 = r8.f3453y
            if (r0 == 0) goto L6e
            boolean r0 = r0.bz()
            if (r0 == 0) goto L6e
            r9 = r2
        L6e:
            r0 = 5
            if (r9 == r0) goto L78
            if (r9 == r2) goto L78
            switch(r9) {
                case 9: goto L78;
                case 10: goto L78;
                case 11: goto L78;
                default: goto L76;
            }
        L76:
            r0 = 0
            goto L79
        L78:
            r0 = r3
        L79:
            r8.f3443o = r3
            r8.f3442n = r3
            com.anythink.core.common.v.b.d r2 = r8.f3418L
            if (r2 == 0) goto L8a
            com.anythink.core.common.t.a r2 = com.anythink.core.common.t.c.a()
            com.anythink.core.common.v.b.d r4 = r8.f3418L
            r2.a(r4)
        L8a:
            long r4 = android.os.SystemClock.elapsedRealtime()
            long r6 = r8.f3450v
            long r6 = r4 - r6
            com.anythink.core.common.h.n r2 = r8.f3437i
            com.anythink.core.common.h.n r2 = r2.ah()
            r2.b(r3)
            r2.s(r6)
            r2.m(r4)
            boolean r4 = r8.f3407A
            if (r4 == 0) goto Laa
            r3 = 2
            r2.b(r3)
            goto Lad
        Laa:
            r2.b(r3)
        Lad:
            if (r0 == 0) goto Lb2
            r2.L(r9)
        Lb2:
            if (r10 == 0) goto Lb7
            r2.a(r10)
        Lb7:
            com.anythink.core.mg.a.a r10 = r8.f3425S
            if (r10 == 0) goto Lcd
            com.anythink.core.common.g$8 r0 = new com.anythink.core.common.g$8
            r0.<init>()
            r10.a(r0)
            com.anythink.core.mg.a.a r9 = r8.f3425S
            com.anythink.core.common.h.as r10 = r8.f3438j
            com.anythink.core.common.h.by r0 = r8.f3422P
            r9.a(r10, r0)
            return
        Lcd:
            java.lang.String r9 = ""
            java.lang.String r10 = "The MgComparePriceHandler can not be null."
            java.lang.String r0 = "4001"
            com.anythink.core.api.AdError r9 = com.anythink.core.api.ErrorCode.getErrorCode(r0, r9, r10)
            r8.f3449u = r9
            r8.f(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.g.a(int, com.anythink.core.common.h.by):void");
    }

    private void a(int i2, List<by> list, final j.a aVar) {
        boolean z2 = this.f3419M != null || ai.a(this.f3411E);
        com.anythink.core.common.h.a aVar2 = new com.anythink.core.common.h.a();
        aVar2.f3568b = this.f3429a;
        aVar2.f3569c = this.f3438j;
        aVar2.f3570d = this.f3434f;
        aVar2.f3571e = this.f3435g;
        aVar2.f3572f = this.f3433e.a().ap();
        aVar2.f3573g = this.f3433e.k();
        aVar2.f3574h = this.f3433e.l();
        i.a();
        aVar2.f3578l = i.a(this.f3433e.a(), z2);
        i.a();
        aVar2.f3581o = i.a(this.f3433e.a());
        i.a();
        aVar2.f3582p = i.b(this.f3433e.a());
        aVar2.f3576j = list;
        aVar2.f3580n = this.f3433e;
        aVar2.f3585s = this.f3437i;
        aVar2.f3583q = this.f3436h;
        aVar2.f3588v = this.f3415I.o();
        aVar2.f3589w = this.f3415I.p();
        aVar2.f3590x = this.f3415I.q();
        aVar2.f3579m = z2;
        aVar2.f3586t = i2;
        aVar2.f3587u = this.f3415I.a(list, this.f3422P);
        aVar2.f3591y = this.f3415I.a();
        aVar2.f3566J = this.f3428V;
        com.anythink.core.c.b bVar = new com.anythink.core.c.b(aVar2);
        bVar.a(ATSDK.isNetworkLogDebug());
        bVar.a(new j.a() { // from class: com.anythink.core.common.g.2
            @Override // com.anythink.core.common.j.a
            public final void a(String str, List<by> list2, List<by> list3, boolean z3) {
                j.a aVar3 = aVar;
                if (aVar3 != null) {
                    aVar3.a(str, list2, list3, z3);
                }
            }

            @Override // com.anythink.core.common.j.a
            public final void a(String str) {
                j.a aVar3 = aVar;
                if (aVar3 != null) {
                    aVar3.a(str);
                }
            }

            @Override // com.anythink.core.common.j.a
            public final void a(Double d2) {
                j.a aVar3 = aVar;
                if (aVar3 != null) {
                    aVar3.a(d2);
                }
            }
        });
    }

    public final synchronized void a(String str, com.anythink.core.common.w.b bVar) {
        try {
            com.anythink.core.common.h.n nVar = bVar.f8419f;
            by byVar = bVar.f8420g;
            AdError adError = bVar.f8417d;
            long j2 = bVar.f8418e;
            int i2 = bVar.f8421h;
            String strN = nVar.N();
            com.anythink.core.common.w.e eVarRemove = this.f3410D.remove(str);
            if (eVarRemove == null) {
                return;
            }
            a(byVar);
            this.f3449u.putNetworkErrorMsg(strN, nVar.Z(), nVar.aN(), adError);
            if (i2 == 0) {
                com.anythink.core.common.u.f.a(nVar, bVar.f8416c, adError, j2);
            } else {
                StringBuilder sb = new StringBuilder("requestId=");
                sb.append(this.f3434f);
                sb.append(", networkFirmId=");
                sb.append(nVar.Z());
                sb.append(", adSourceId=");
                sb.append(nVar.N());
                sb.append(", format=");
                sb.append(nVar.aS());
                ad adVarY = byVar.Y();
                if (adVarY != null) {
                    sb.append(", hasShow=");
                    sb.append(adVarY.o());
                    sb.append(", bidId=");
                    sb.append(adVarY.token);
                    sb.append(", tpBidId=");
                    sb.append(adVarY.f3674g);
                }
                com.anythink.core.common.u.f.b("unexpected request failed", sb.toString(), com.anythink.core.common.d.s.b().r());
            }
            if (j2 > 0) {
                com.anythink.core.common.d.c cVar = this.f3439k;
                if (cVar != null) {
                    cVar.onAdSourceLoadFail(nVar, adError);
                }
                a(nVar, adError, a.b.f8373c, byVar);
            }
            aa.a(nVar, i.s.f2722b, i.s.f2734n, adError.printStackTrace());
            a(byVar, this.f3437i);
            a(eVarRemove);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str) {
        if (this.f3414H.b()) {
            return;
        }
        a(this.f3410D.get(str));
    }

    public final synchronized void a(double d2, by byVar) {
        try {
            D();
            if (!this.f3414H.g() && byVar != null && byVar.w()) {
                this.f3414H.h();
            }
            if (d2 > this.f3420N) {
                this.f3420N = d2;
            }
            int iAp = this.f3433e.a().ap();
            if (iAp == 0 || iAp == 2) {
                return;
            }
            this.f3414H.d();
            f fVar = this.f3428V;
            if (fVar != null) {
                fVar.a(this.f3434f);
            } else {
                com.anythink.core.common.u.f.b("AdManage is null--notifyimpression", "Id:" + this.f3435g + "--format:" + this.f3433e.a().ap(), com.anythink.core.common.d.s.b().r());
            }
            if (!this.f3443o) {
                a(10, byVar);
            }
            l();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(ATBaseAdAdapter aTBaseAdAdapter, String str) {
        if (aTBaseAdAdapter != null) {
            str.getClass();
            switch (str) {
                case "0":
                    aTBaseAdAdapter.setRequestNum(aTBaseAdAdapter.getUnitGroupInfo().E());
                    break;
                case "4":
                    aTBaseAdAdapter.setFetchAdTimeout(this.f3438j.f3816h);
                    break;
                case "50":
                    com.anythink.core.common.d.c cVar = this.f3438j.f3812d;
                    if (cVar instanceof com.anythink.core.common.d.d) {
                        ((com.anythink.core.common.d.d) cVar).onPrepareAdapterLoad(aTBaseAdAdapter);
                        break;
                    }
                    break;
            }
        }
    }

    private void a(AdError adError) {
        n nVar;
        aa.a("Mediation", "placementId:" + this.f3435g + ";result_callback:fail;loadType:" + this.f3438j.f3811c + ";");
        u.a(this.f3429a).a(this.f3435g, this.f3434f, false);
        as asVar = this.f3438j;
        if (asVar == null || (nVar = asVar.f3813e) == null) {
            return;
        }
        nVar.a(2, asVar, this.f3433e, adError);
        this.f3438j.f3813e = null;
    }

    private void a(by byVar, double d2, boolean z2) {
        if (byVar == null) {
            return;
        }
        this.f3454z = true;
        g(byVar);
        if (d2 == 0.0d) {
            if (this.f3453y == null && (!z2 || !this.f3407A)) {
                this.f3407A = !z2;
            }
        } else if (com.anythink.core.common.v.k.a(byVar, this.f3453y) < 0) {
            this.f3453y = byVar;
            if (!z2 || !this.f3407A) {
                this.f3407A = !z2;
            }
        }
        by byVar2 = this.f3409C;
        if (byVar2 == null || com.anythink.core.common.v.k.a(byVar2, byVar) < 0) {
            this.f3409C = byVar;
        }
        boolean zG = this.f3415I.g(byVar);
        if (this.f3443o && this.f3442n && zG) {
            com.anythink.core.d.b.a().a(this.f3435g, this.f3434f, this.f3433e.a().ax(), this.f3438j, this.f3415I.b().b());
        }
    }

    private void a(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter == null) {
            return;
        }
        synchronized (this.f3417K) {
            this.f3417K.add(aTBaseAdAdapter);
        }
    }

    private String a(com.anythink.core.common.h.n nVar, by byVar) {
        StringBuilder sb = new StringBuilder("requestId=");
        sb.append(this.f3434f);
        sb.append(", networkFirmId=");
        sb.append(nVar.Z());
        sb.append(", adSourceId=");
        sb.append(nVar.N());
        sb.append(", format=");
        sb.append(nVar.aS());
        ad adVarY = byVar.Y();
        if (adVarY != null) {
            sb.append(", hasShow=");
            sb.append(adVarY.o());
            sb.append(", bidId=");
            sb.append(adVarY.token);
            sb.append(", tpBidId=");
            sb.append(adVarY.f3674g);
        }
        return sb.toString();
    }

    public static /* synthetic */ void a(g gVar, com.anythink.core.common.w.e eVar, com.anythink.core.common.h.n nVar, by byVar) throws JSONException {
        com.anythink.core.common.w.d dVar = new com.anythink.core.common.w.d();
        dVar.f8433a = gVar.f3429a;
        dVar.f8434b = gVar.f3430b;
        dVar.f8435c = gVar.f3434f;
        dVar.f8436d = gVar.f3435g;
        dVar.f8437e = gVar.f3433e.a();
        dVar.f8438f = gVar.f3436h;
        dVar.f8439g = gVar.f3451w;
        dVar.f8440h = nVar;
        dVar.f8441i = gVar.f3415I.q();
        eVar.a(dVar);
        eVar.a(gVar.new AnonymousClass6(byVar));
        eVar.a(gVar.f3409C);
    }

    public static /* synthetic */ void a(g gVar, com.anythink.core.common.h.n nVar, ATBaseAdAdapter aTBaseAdAdapter) {
        com.anythink.core.common.d.c cVar = gVar.f3439k;
        if (cVar != null) {
            cVar.onAdSourceAttempt(nVar);
        }
        if (aTBaseAdAdapter != null) {
            gVar.a(nVar, (AdError) null, a.b.f8371a, aTBaseAdAdapter.getUnitGroupInfo());
        }
        if (aTBaseAdAdapter != null) {
            com.anythink.core.common.v.d.a().a(nVar, aTBaseAdAdapter.getUnitGroupInfo(), 3);
        }
    }

    public static /* synthetic */ void a(g gVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            synchronized (gVar.f3417K) {
                gVar.f3417K.add(aTBaseAdAdapter);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(com.anythink.core.common.g r8, int r9) {
        /*
            r8.u()
            boolean r0 = r8.f3421O
            if (r0 != 0) goto La6
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "placementId:"
            r0.<init>(r1)
            java.lang.String r1 = r8.f3435g
            r0.append(r1)
            java.lang.String r1 = ";result_callback:success;loadType:"
            r0.append(r1)
            com.anythink.core.common.h.as r1 = r8.f3438j
            int r1 = r1.f3811c
            r0.append(r1)
            java.lang.String r1 = ";"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "Mediation"
            com.anythink.core.common.v.aa.a(r1, r0)
            android.content.Context r0 = r8.f3429a
            com.anythink.core.common.u r0 = com.anythink.core.common.u.a(r0)
            java.lang.String r1 = r8.f3435g
            java.lang.String r2 = r8.f3434f
            r3 = 1
            r0.a(r1, r2, r3)
            com.anythink.core.common.h.as r0 = r8.f3438j
            if (r0 == 0) goto L85
            com.anythink.core.common.n r0 = r0.f3813e
            if (r0 == 0) goto L85
            r1 = 0
            com.anythink.core.common.h.ce r0 = r8.f3433e     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L6f
            com.anythink.core.e.m r0 = r0.a()     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L6f
            com.anythink.core.common.f r2 = r8.f3428V     // Catch: java.lang.Throwable -> L5d com.anythink.core.common.h.m -> L5f
            if (r2 == 0) goto L6f
            com.anythink.core.common.h.n r2 = r8.f3437i     // Catch: java.lang.Throwable -> L5d com.anythink.core.common.h.m -> L5f
            com.anythink.core.common.f.a(r0, r2)     // Catch: java.lang.Throwable -> L5d com.anythink.core.common.h.m -> L5f
            com.anythink.core.common.h.n r2 = r8.f3437i     // Catch: java.lang.Throwable -> L5d com.anythink.core.common.h.m -> L5f
            com.anythink.core.common.f.b(r0, r2)     // Catch: java.lang.Throwable -> L5d com.anythink.core.common.h.m -> L5f
            goto L6f
        L5d:
            r0 = move-exception
            goto L6c
        L5f:
            r0 = move-exception
            com.anythink.core.common.h.as r2 = r8.f3438j     // Catch: java.lang.Throwable -> L5d
            com.anythink.core.common.n r4 = r2.f3813e     // Catch: java.lang.Throwable -> L5d
            com.anythink.core.common.h.ce r5 = r8.f3433e     // Catch: java.lang.Throwable -> L5d
            com.anythink.core.api.AdError r0 = r0.f4298a     // Catch: java.lang.Throwable -> L5d
            r4.a(r3, r2, r5, r0)     // Catch: java.lang.Throwable -> L5d
            goto L81
        L6c:
            r0.printStackTrace()
        L6f:
            r8.d(r1)
            com.anythink.core.common.h.as r0 = r8.f3438j
            com.anythink.core.common.n r2 = r0.f3813e
            boolean r4 = r8.f3407A
            if (r4 == 0) goto L7b
            goto L7c
        L7b:
            r3 = 2
        L7c:
            com.anythink.core.common.h.ce r4 = r8.f3433e
            r2.a(r3, r0, r4, r9)
        L81:
            com.anythink.core.common.h.as r9 = r8.f3438j
            r9.f3813e = r1
        L85:
            com.anythink.core.d.b r2 = com.anythink.core.d.b.a()
            java.lang.String r3 = r8.f3435g
            java.lang.String r4 = r8.f3434f
            com.anythink.core.common.h.ce r9 = r8.f3433e
            com.anythink.core.e.m r9 = r9.a()
            int r5 = r9.ax()
            com.anythink.core.common.h.as r6 = r8.f3438j
            com.anythink.core.common.w.g r8 = r8.f3415I
            com.anythink.core.common.h.ac r8 = r8.b()
            com.anythink.core.common.h.by r7 = r8.b()
            r2.a(r3, r4, r5, r6, r7)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.g.a(com.anythink.core.common.g, int):void");
    }
}
