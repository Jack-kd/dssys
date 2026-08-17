package com.anythink.core.common.b;

import android.content.Context;
import com.anythink.core.common.d.s;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import com.varbto.utils.api.MediationUtilsManager;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static final int f2311a = 2;

    /* renamed from: b, reason: collision with root package name */
    public static final int f2312b = 7;

    /* renamed from: c, reason: collision with root package name */
    public static final int f2313c = 2;

    /* renamed from: d, reason: collision with root package name */
    public static final int f2314d = 0;

    /* renamed from: e, reason: collision with root package name */
    public static final int f2315e = 1;

    /* renamed from: f, reason: collision with root package name */
    public static final int f2316f = 2;

    /* renamed from: g, reason: collision with root package name */
    public static final int f2317g = 3;

    /* renamed from: h, reason: collision with root package name */
    public static final int f2318h = 4;

    /* renamed from: i, reason: collision with root package name */
    public static final int f2319i = 5;

    /* renamed from: j, reason: collision with root package name */
    private static final String f2320j = "AnrDynamicManager";

    /* renamed from: k, reason: collision with root package name */
    private static volatile f f2321k = null;

    /* renamed from: m, reason: collision with root package name */
    private static final int f2322m = 2;

    /* renamed from: n, reason: collision with root package name */
    private static final int f2323n = 1;

    /* renamed from: o, reason: collision with root package name */
    private static final int f2324o = 1;

    /* renamed from: p, reason: collision with root package name */
    private static final int f2325p = 2;

    /* renamed from: q, reason: collision with root package name */
    private static final int f2326q = 3;

    /* renamed from: r, reason: collision with root package name */
    private static final int f2327r = 4;

    /* renamed from: s, reason: collision with root package name */
    private static final int f2328s = 2;

    /* renamed from: t, reason: collision with root package name */
    private static final int f2329t = 0;

    /* renamed from: u, reason: collision with root package name */
    private static final int f2330u = 1;

    /* renamed from: x, reason: collision with root package name */
    private a f2334x;

    /* renamed from: y, reason: collision with root package name */
    private volatile int[] f2335y;

    /* renamed from: v, reason: collision with root package name */
    private ConcurrentHashMap<String, Integer> f2332v = new ConcurrentHashMap<>();

    /* renamed from: w, reason: collision with root package name */
    private ConcurrentHashMap<String, d> f2333w = new ConcurrentHashMap<>();

    /* renamed from: l, reason: collision with root package name */
    private volatile boolean f2331l = false;

    private f() {
    }

    public static f a() {
        if (f2321k == null) {
            synchronized (f.class) {
                try {
                    if (f2321k == null) {
                        f2321k = new f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2321k;
    }

    public static boolean b() {
        com.anythink.core.e.b bVarU = u();
        return bVarU != null && bVarU.aT() == 1;
    }

    public static int c() {
        com.anythink.core.e.b bVarU = u();
        if (bVarU == null) {
            return 2;
        }
        return bVarU.aT();
    }

    public static a d() {
        List<a> listN;
        if (!b() || (listN = n()) == null || listN.isEmpty()) {
            return null;
        }
        s sVarB = s.b();
        int iAb = sVarB.ab();
        b bVarM = m();
        boolean z2 = bVarM != null && iAb > bVarM.b();
        int iL = l();
        int iAd = sVarB.ad();
        boolean zAe = sVarB.ae();
        if (z2 && iL == 3) {
            return b(listN);
        }
        if (z2 && iL == 2) {
            return a(listN);
        }
        a aVarA = zAe ? a(listN) : a(listN, iAd);
        if (aVarA == null) {
            return null;
        }
        return aVarA;
    }

    public static int g() {
        return s.b().ab();
    }

    public static int h() {
        return s.b().ac();
    }

    public static int i() {
        return s.b().ad();
    }

    private static int l() {
        com.anythink.core.e.b bVarU = u();
        if (bVarU == null) {
            return 2;
        }
        return bVarU.aU();
    }

    private static b m() {
        com.anythink.core.e.b bVarU = u();
        if (bVarU == null) {
            return null;
        }
        return bVarU.aV();
    }

    private static List<a> n() {
        com.anythink.core.e.b bVarU = u();
        if (bVarU == null) {
            return null;
        }
        return bVarU.aW();
    }

    private static h o() {
        a aVarD = d();
        if (aVarD != null) {
            return aVarD.c();
        }
        return null;
    }

    private static int p() {
        a aVarD = d();
        if (aVarD != null) {
            return aVarD.b();
        }
        return 1;
    }

    private static int q() {
        b bVarM = m();
        if (bVarM == null) {
            return 7;
        }
        return bVarM.a();
    }

    private static int r() {
        b bVarM = m();
        if (bVarM == null) {
            return 2;
        }
        return bVarM.b();
    }

    private void s() {
        this.f2331l = false;
    }

    private void t() {
        this.f2331l = false;
    }

    private static com.anythink.core.e.b u() {
        s sVarB = s.b();
        if (sVarB.g() == null) {
            return null;
        }
        return com.anythink.core.e.d.a(sVarB.g()).b(sVarB.p());
    }

    private static void v() {
        try {
            s sVarB = s.b();
            Context contextG = sVarB != null ? sVarB.g() : null;
            if (contextG != null) {
                MediationUtilsManager.getInstance(contextG).stopMonitoring();
            }
        } catch (Throwable unused) {
        }
    }

    public final boolean e() {
        return this.f2331l;
    }

    public final void f() {
        if (!b()) {
            this.f2331l = false;
            try {
                s sVarB = s.b();
                Context contextG = sVarB != null ? sVarB.g() : null;
                if (contextG != null) {
                    MediationUtilsManager.getInstance(contextG).stopMonitoring();
                    return;
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        int iAb = s.b().ab();
        b bVarM = m();
        if (bVarM == null) {
            this.f2331l = false;
            return;
        }
        if (iAb <= bVarM.b()) {
            this.f2331l = false;
            return;
        }
        int iL = l();
        if (iL == 1) {
            this.f2331l = false;
            return;
        }
        if (iL == 2) {
            this.f2331l = false;
            return;
        }
        if (iL == 3) {
            this.f2331l = false;
        } else if (iL != 4) {
            this.f2331l = false;
        } else {
            this.f2331l = true;
        }
    }

    public final a j() {
        this.f2334x = null;
        a aVarD = d();
        if (aVarD != null) {
            this.f2334x = aVarD;
            h hVarC = aVarD.c();
            if (hVarC != null) {
                int[] iArrA = aVarD.a();
                int[] iArr = this.f2335y;
                if ((iArr == null || iArrA == null || iArr.length < 2 || iArrA.length < 2 || iArr[0] != iArrA[0] || iArr[1] != iArrA[1]) && (hVarC.a() != null || hVarC.b() != null || hVarC.c() != null || hVarC.d() != null || hVarC.e() != null || hVarC.f() != null)) {
                    this.f2335y = iArrA;
                    com.anythink.core.common.v.b.c.a().a(hVarC);
                }
            }
        }
        return this.f2334x;
    }

    public final void k() {
        this.f2335y = null;
    }

    private static a b(List<a> list) {
        for (a aVar : list) {
            int[] iArrA = aVar.a();
            if (iArrA != null && iArrA.length >= 2 && iArrA[0] == 0 && iArrA[1] == 0) {
                return aVar;
            }
        }
        return null;
    }

    private static d c(List<d> list) {
        int i2;
        d dVar = null;
        int i3 = Integer.MAX_VALUE;
        for (d dVar2 : list) {
            int[] iArrA = dVar2.a();
            if (iArrA != null && iArrA.length >= 2 && ((i2 = iArrA[0]) > 0 || iArrA[1] > 0)) {
                if (i2 < i3) {
                    dVar = dVar2;
                    i3 = i2;
                }
            }
        }
        return dVar;
    }

    private int b(String str) {
        Integer num = this.f2332v.get(str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    private static m c(String str) {
        s sVarB = s.b();
        if (sVarB.g() == null) {
            return null;
        }
        return o.a(sVarB.g()).a(str);
    }

    private static a a(List<a> list, int i2) {
        for (a aVar : list) {
            int[] iArrA = aVar.a();
            if (iArrA != null && iArrA.length >= 2 && i2 >= iArrA[0] && i2 <= iArrA[1]) {
                return aVar;
            }
        }
        return null;
    }

    public final d b(m mVar) {
        List<d> listBi;
        d dVarB;
        if (mVar == null) {
            return null;
        }
        String strI = mVar.i();
        boolean z2 = false;
        this.f2332v.put(strI, 0);
        if (!b() || (listBi = mVar.bi()) == null || listBi.isEmpty()) {
            return null;
        }
        s sVarB = s.b();
        int iAb = sVarB.ab();
        b bVarM = m();
        if (bVarM != null && iAb > bVarM.b()) {
            z2 = true;
        }
        int iL = l();
        int iAd = sVarB.ad();
        boolean zAe = sVarB.ae();
        if (z2 && iL == 3) {
            this.f2332v.put(strI, 2);
            return d(listBi);
        }
        if (z2 && iL == 2) {
            this.f2332v.put(strI, 1);
            return c(listBi);
        }
        if (zAe) {
            dVarB = c(listBi);
        } else {
            dVarB = b(listBi, iAd);
        }
        if (dVarB == null) {
            return null;
        }
        this.f2332v.put(strI, Integer.valueOf(zAe ? 4 : 5));
        return dVarB;
    }

    private static a a(List<a> list) {
        int i2;
        a aVar = null;
        int i3 = Integer.MAX_VALUE;
        for (a aVar2 : list) {
            int[] iArrA = aVar2.a();
            if (iArrA != null && iArrA.length >= 2 && ((i2 = iArrA[0]) > 0 || iArrA[1] > 0)) {
                if (i2 < i3) {
                    aVar = aVar2;
                    i3 = i2;
                }
            }
        }
        return aVar;
    }

    private static boolean a(int[] iArr, int[] iArr2) {
        return iArr != null && iArr2 != null && iArr.length >= 2 && iArr2.length >= 2 && iArr[0] == iArr2[0] && iArr[1] == iArr2[1];
    }

    private static d d(List<d> list) {
        for (d dVar : list) {
            int[] iArrA = dVar.a();
            if (iArrA != null && iArrA.length >= 2 && iArrA[0] == 0 && iArrA[1] == 0) {
                return dVar;
            }
        }
        return null;
    }

    private void a(a aVar) {
        h hVarC;
        if (aVar == null || (hVarC = aVar.c()) == null) {
            return;
        }
        int[] iArrA = aVar.a();
        int[] iArr = this.f2335y;
        if (iArr == null || iArrA == null || iArr.length < 2 || iArrA.length < 2 || iArr[0] != iArrA[0] || iArr[1] != iArrA[1]) {
            if (hVarC.a() == null && hVarC.b() == null && hVarC.c() == null && hVarC.d() == null && hVarC.e() == null && hVarC.f() == null) {
                return;
            }
            this.f2335y = iArrA;
            com.anythink.core.common.v.b.c.a().a(hVarC);
        }
    }

    public final d a(String str) {
        return this.f2333w.get(str);
    }

    private static d b(List<d> list, int i2) {
        int i3;
        for (d dVar : list) {
            int[] iArrA = dVar.a();
            if (iArrA != null && iArrA.length >= 2 && ((i3 = iArrA[0]) != 0 || iArrA[1] != 0)) {
                if (i2 >= i3 && i2 <= iArrA[1]) {
                    return dVar;
                }
            }
        }
        return null;
    }

    public final int a(String str, m mVar) {
        this.f2333w.remove(str);
        if (this.f2331l) {
            this.f2332v.put(str, 3);
            return 3;
        }
        d dVarB = b(mVar);
        if (dVarB != null) {
            this.f2333w.put(str, dVarB);
        }
        return this.f2332v.getOrDefault(str, 0).intValue();
    }

    public final c a(m mVar) {
        d dVarB = b(mVar);
        if (dVarB != null) {
            return dVarB.b();
        }
        return null;
    }
}
