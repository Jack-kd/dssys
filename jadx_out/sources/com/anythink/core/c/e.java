package com.anythink.core.c;

import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.c.h;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.aq;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.z;
import com.anythink.core.common.m.s;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class e extends d {

    /* renamed from: k, reason: collision with root package name */
    public static final double f2089k = 10000.0d;

    /* renamed from: A, reason: collision with root package name */
    ConcurrentHashMap<String, by> f2090A;

    /* renamed from: B, reason: collision with root package name */
    ConcurrentHashMap<String, by> f2091B;

    /* renamed from: C, reason: collision with root package name */
    Queue<by> f2092C;

    /* renamed from: D, reason: collision with root package name */
    com.anythink.core.common.v.b.d f2093D;

    /* renamed from: l, reason: collision with root package name */
    final String f2094l;

    /* renamed from: m, reason: collision with root package name */
    protected final List<com.anythink.core.c.c.a> f2095m;

    /* renamed from: n, reason: collision with root package name */
    List<by> f2096n;

    /* renamed from: o, reason: collision with root package name */
    List<by> f2097o;

    /* renamed from: p, reason: collision with root package name */
    String f2098p;

    /* renamed from: q, reason: collision with root package name */
    String f2099q;

    /* renamed from: r, reason: collision with root package name */
    String f2100r;

    /* renamed from: s, reason: collision with root package name */
    com.anythink.core.c.b.b f2101s;

    /* renamed from: t, reason: collision with root package name */
    long f2102t;

    /* renamed from: u, reason: collision with root package name */
    long f2103u;

    /* renamed from: v, reason: collision with root package name */
    com.anythink.core.common.b.c f2104v;

    /* renamed from: w, reason: collision with root package name */
    protected AtomicBoolean f2105w;

    /* renamed from: x, reason: collision with root package name */
    protected AtomicBoolean f2106x;

    /* renamed from: y, reason: collision with root package name */
    ConcurrentHashMap<String, by> f2107y;

    /* renamed from: z, reason: collision with root package name */
    ConcurrentHashMap<String, by> f2108z;

    public class a implements h.a {

        /* renamed from: a, reason: collision with root package name */
        by f2120a;

        /* renamed from: b, reason: collision with root package name */
        boolean f2121b;

        /* renamed from: c, reason: collision with root package name */
        com.anythink.core.c.c.a f2122c;

        /* renamed from: d, reason: collision with root package name */
        AtomicBoolean f2123d = new AtomicBoolean(false);

        /* renamed from: e, reason: collision with root package name */
        AtomicBoolean f2124e = new AtomicBoolean(false);

        /* renamed from: f, reason: collision with root package name */
        AtomicBoolean f2125f = new AtomicBoolean(false);

        /* renamed from: g, reason: collision with root package name */
        AtomicBoolean f2126g = new AtomicBoolean(false);

        /* renamed from: h, reason: collision with root package name */
        h f2127h;

        /* renamed from: i, reason: collision with root package name */
        com.anythink.core.common.v.b.d f2128i;

        public a(by byVar) {
            this.f2120a = byVar;
            this.f2121b = byVar.bJ();
        }

        private void c(com.anythink.core.c.c.a aVar) {
            if (this.f2121b) {
                if (this.f2127h != null && this.f2126g.get()) {
                    h hVar = this.f2127h;
                    hVar.f2146g = true;
                    hVar.f2147h = true;
                }
                boolean zC = aVar.c();
                if (this.f2125f.get() || this.f2126g.get() || zC) {
                    return;
                }
                com.anythink.core.common.t.c.a().a(this.f2128i);
            }
        }

        private boolean d(com.anythink.core.c.c.a aVar) throws Throwable {
            if (!this.f2121b) {
                return false;
            }
            if (this.f2122c == null) {
                if (this.f2123d.get()) {
                    return false;
                }
                e.this.c(aVar.b());
                return false;
            }
            if (!this.f2125f.get()) {
                com.anythink.core.common.t.c.a().a(this.f2128i);
                b();
            }
            e.this.c(aVar.b());
            return true;
        }

        @Override // com.anythink.core.c.h.a
        public final void b(com.anythink.core.c.c.a aVar) throws Throwable {
            String strD;
            if (e.this.f2000h.get()) {
                if (e.this.f2001i.get() || !this.f2121b || this.f2122c == null || !this.f2126g.get()) {
                    return;
                }
                e.this.c(aVar.b());
                return;
            }
            if (this.f2121b) {
                if (this.f2122c != null) {
                    if (!this.f2125f.get()) {
                        com.anythink.core.common.t.c.a().a(this.f2128i);
                        b();
                    }
                    e.this.c(aVar.b());
                    return;
                }
                if (!this.f2123d.get()) {
                    e.this.c(aVar.b());
                }
            }
            strD = aVar.d();
            this.f2120a.o(SystemClock.elapsedRealtime() - e.this.f2102t);
            if (strD == null) {
                strD = "";
            }
            e.this.f2090A.remove(this.f2120a.G());
            e.this.f2107y.remove(this.f2120a.G());
            e.c(e.this, aVar);
            switch (strD) {
                case "This network don't support header bidding in current TopOn's version.":
                case "Network init error.":
                case "The parameter is abnormal.":
                case "There is no Network Adapter.":
                    e.this.b(this.f2120a, strD, 0L, -9);
                    break;
                case "Request Token or Custom bid info Timeout.":
                case "Network BidToken or Custom bid info is Empty.":
                    e.this.b(this.f2120a, strD, 0L, -2);
                    break;
                default:
                    e.this.b(this.f2120a, "Unknown error: ".concat(strD), 0L, -9);
                    break;
            }
            e.b(e.this, (com.anythink.core.c.c.a) null);
            if (this.f2124e.compareAndSet(false, true)) {
                e.this.h();
            }
        }

        public final void a() {
            e eVar = e.this;
            com.anythink.core.common.h.a aVar = eVar.f1998f;
            this.f2127h = new h(aVar.f3571e, aVar, eVar.f2102t);
            if (this.f2121b) {
                com.anythink.core.c.c.a aVarB = e.this.c() != null ? e.this.c().b(e.this.f2099q, this.f2120a) : null;
                this.f2122c = aVarB;
                if (aVarB != null) {
                    long jBK = this.f2120a.bK();
                    this.f2128i = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.df, new Runnable() { // from class: com.anythink.core.c.e.a.1
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            a.this.f2125f.set(true);
                            a.this.b();
                        }
                    });
                    com.anythink.core.common.t.c.a().a(this.f2128i, jBK);
                }
            }
            this.f2127h.a(this.f2120a, this);
        }

        @Override // com.anythink.core.c.h.a
        public final void a(by byVar, ATBaseAdAdapter aTBaseAdAdapter) {
            com.anythink.core.c.b.b bVar = e.this.f2101s;
            if (bVar != null) {
                bVar.a(byVar, aTBaseAdAdapter);
            }
        }

        @Override // com.anythink.core.c.h.a
        public final void a(com.anythink.core.c.c.a aVar) throws Throwable {
            if (e.this.f2000h.get() || this.f2123d.getAndSet(true)) {
                return;
            }
            if (this.f2121b) {
                if (this.f2127h != null && this.f2126g.get()) {
                    h hVar = this.f2127h;
                    hVar.f2146g = true;
                    hVar.f2147h = true;
                }
                boolean zC = aVar.c();
                if (!this.f2125f.get() && !this.f2126g.get() && !zC) {
                    com.anythink.core.common.t.c.a().a(this.f2128i);
                }
            }
            e.this.f2090A.remove(this.f2120a.G());
            e.a(e.this, aVar);
            e.b(e.this, aVar);
            if (this.f2124e.compareAndSet(false, true)) {
                e.this.h();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() throws Throwable {
            if (this.f2123d.get()) {
                return;
            }
            this.f2126g.set(true);
            a(this.f2122c);
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        long f2131a;

        /* renamed from: b, reason: collision with root package name */
        long f2132b;

        /* renamed from: c, reason: collision with root package name */
        long f2133c = 0;

        public b(long j2, long j3) {
            this.f2131a = j2;
            this.f2132b = j3;
        }

        private long a() {
            return this.f2131a;
        }

        private long b() {
            return this.f2132b;
        }

        private long c() {
            return this.f2133c;
        }

        private void a(long j2) {
            this.f2133c = j2;
        }
    }

    public e(com.anythink.core.common.h.a aVar) {
        super(aVar);
        this.f2094l = getClass().getSimpleName() + ":";
        this.f2095m = new ArrayList();
        this.f2096n = new ArrayList();
        this.f2097o = new ArrayList();
        this.f2105w = new AtomicBoolean(false);
        this.f2106x = new AtomicBoolean(false);
        this.f2107y = new ConcurrentHashMap<>();
        this.f2108z = new ConcurrentHashMap<>();
        this.f2090A = new ConcurrentHashMap<>();
        this.f2091B = new ConcurrentHashMap<>();
        this.f2093D = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.de, new Runnable() { // from class: com.anythink.core.c.e.1
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.as, new Runnable() { // from class: com.anythink.core.c.e.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.this.j();
                    }
                }));
            }
        });
        this.f2104v = this.f1998f.f3565I;
        List<by> list = aVar.f3576j;
        if (list != null && list.size() > 0) {
            c(aVar.f3576j);
            for (by byVar : aVar.f3576j) {
                if (byVar != null) {
                    this.f2107y.put(byVar.G(), byVar);
                    this.f2090A.put(byVar.G(), byVar);
                }
            }
        }
        List<by> list2 = aVar.f3577k;
        if (list2 != null && list2.size() > 0) {
            for (by byVar2 : aVar.f3577k) {
                this.f2108z.put(byVar2.G(), byVar2);
                this.f2091B.put(byVar2.G(), byVar2);
            }
        }
        com.anythink.core.c.c.a aVar2 = aVar.f3584r;
        if (aVar2 != null) {
            this.f2095m.add(aVar2);
        }
        this.f2098p = aVar.f3570d;
        this.f2099q = aVar.f3571e;
        this.f2100r = b();
    }

    private void c(List<by> list) {
        if (this.f2104v == null) {
            return;
        }
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        int[] iArrD = this.f2104v.d();
        if (iArrD != null && iArrD.length > 0) {
            for (int i2 = 0; i2 < iArrD.length; i2++) {
                concurrentHashMap.put(Integer.valueOf(iArrD[i2]), Integer.valueOf(i2));
            }
        }
        Collections.sort(list, new Comparator<by>() { // from class: com.anythink.core.c.e.3
            private int a(by byVar, by byVar2) {
                int iN = byVar.n();
                int iN2 = byVar2.n();
                boolean zContainsKey = concurrentHashMap.containsKey(Integer.valueOf(iN));
                boolean zContainsKey2 = concurrentHashMap.containsKey(Integer.valueOf(iN2));
                if (zContainsKey && zContainsKey2) {
                    return ((Integer) concurrentHashMap.get(Integer.valueOf(iN))).intValue() - ((Integer) concurrentHashMap.get(Integer.valueOf(iN2))).intValue();
                }
                if (zContainsKey) {
                    return -1;
                }
                if (zContainsKey2) {
                    return 1;
                }
                return Integer.compare(iN, iN2);
            }

            @Override // java.util.Comparator
            public final /* synthetic */ int compare(by byVar, by byVar2) {
                int iN = byVar.n();
                int iN2 = byVar2.n();
                boolean zContainsKey = concurrentHashMap.containsKey(Integer.valueOf(iN));
                boolean zContainsKey2 = concurrentHashMap.containsKey(Integer.valueOf(iN2));
                if (zContainsKey && zContainsKey2) {
                    return ((Integer) concurrentHashMap.get(Integer.valueOf(iN))).intValue() - ((Integer) concurrentHashMap.get(Integer.valueOf(iN2))).intValue();
                }
                if (zContainsKey) {
                    return -1;
                }
                if (zContainsKey2) {
                    return 1;
                }
                return Integer.compare(iN, iN2);
            }
        });
    }

    private void d(com.anythink.core.c.c.a aVar) {
        by byVarB = aVar.b();
        if (byVarB == null || !byVarB.bJ()) {
            return;
        }
        f fVarC = c();
        if (fVarC != null) {
            String str = this.f1998f.f3571e;
            com.anythink.core.c.c.a aVar2 = fVarC.f2137d.get(str + byVarB.G());
            if (aVar2 != null && aVar2 == aVar) {
                fVarC.f2137d.remove(str + byVarB.G());
            }
        }
        if (aVar.c()) {
            return;
        }
        if ((fVarC != null ? fVarC.b(this.f1998f.f3571e, byVarB) : null) == null) {
            c(byVarB);
        }
    }

    private void g() {
        this.f2092C = new LinkedList(this.f1998f.f3576j);
        com.anythink.core.common.b.c cVar = this.f2104v;
        int iG = cVar != null ? cVar.g() : 0;
        if (iG == 1) {
            h();
            return;
        }
        if (iG == 2) {
            Iterator<Map.Entry<String, by>> it = this.f2107y.entrySet().iterator();
            while (it.hasNext()) {
                b(it.next().getValue());
            }
        } else {
            final long jE = cVar != null ? cVar.e() : 0L;
            Runnable runnable = new Runnable() { // from class: com.anythink.core.c.e.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (e.this.f2092C.isEmpty()) {
                        return;
                    }
                    e.this.b(e.this.f2092C.poll());
                    if (e.this.f2092C.isEmpty()) {
                        return;
                    }
                    com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ap, this), jE);
                }
            };
            if (this.f2092C.isEmpty()) {
                return;
            }
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aq, runnable));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f2104v == null || this.f2092C.isEmpty() || this.f2104v.g() != 1) {
            return;
        }
        b(this.f2092C.poll());
    }

    private void i() {
        com.anythink.core.common.t.c.a().a(this.f2093D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() {
        if (this.f2000h.get()) {
            return;
        }
        this.f2105w.set(true);
        if (this.f2095m.size() > 0) {
            a(new b(SystemClock.elapsedRealtime(), System.currentTimeMillis()));
        }
    }

    private boolean k() {
        return this.f2105w.get() && !this.f2106x.get();
    }

    private synchronized void l() throws Throwable {
        try {
            try {
                this.f2001i.set(true);
                if (!this.f2000h.get()) {
                    this.f2000h.set(true);
                    i();
                    this.f2090A.clear();
                    a(0L, -3, ATBidRequestInfo.BIDDING_REQUEST_TIMEOUT_TYPE, this.f2107y);
                    a(0L, -3, ATBidRequestInfo.BIDDING_REQUEST_TIMEOUT_TYPE, this.f2108z);
                    o();
                    n();
                    m();
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    private void m() {
        com.anythink.core.c.b.b bVar;
        if ((this.f2097o.size() > 0 || this.f2096n.size() > 0) && (bVar = this.f2101s) != null) {
            bVar.a(this.f2097o, this.f2096n);
        }
        this.f2097o.clear();
        this.f2096n.clear();
    }

    private synchronized void n() {
        if (p()) {
            this.f2000h.set(true);
        }
    }

    private void o() throws JSONException {
        if (ATSDK.isNetworkLogDebug()) {
            if (this.f2097o.size() > 0 || this.f2096n.size() > 0) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("PlacementId", this.f1998f.f3571e);
                    if (this.f1998f.f3585s.al()) {
                        jSONObject.put("isAdxNetworkMode", true);
                    }
                    jSONObject.put("S2S HeadBidding Success List", d.a(this.f2097o));
                    jSONObject.put("S2S HeadBidding Fail List", d.a(this.f2096n));
                } catch (Exception unused) {
                }
                aa.a(aa.f8020a, jSONObject.toString(), false);
            }
        }
    }

    private boolean p() {
        return this.f2107y.size() == 0 && this.f2108z.size() == 0 && this.f2090A.size() == 0;
    }

    public abstract void a(List<JSONObject> list, s sVar);

    public abstract String b();

    public final synchronized void e() {
        if (f()) {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ar, new Runnable() { // from class: com.anythink.core.c.e.5
                @Override // java.lang.Runnable
                public final void run() {
                    synchronized (e.this) {
                        try {
                            if (e.this.f()) {
                                e.this.a(new b(SystemClock.elapsedRealtime(), System.currentTimeMillis()));
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }));
        }
    }

    public final boolean f() {
        return !this.f2106x.get() && this.f2095m.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(by byVar) {
        if (byVar == null) {
            return;
        }
        if (byVar.n() == 66) {
            com.anythink.core.common.a.h.a(this.f1998f.f3568b).a(byVar.G(), System.currentTimeMillis());
        }
        new a(byVar).a();
    }

    @Override // com.anythink.core.c.d
    public final void a(boolean z2) {
        this.f1999g = z2;
    }

    private void b(long j2) {
        com.anythink.core.common.t.c.a().a(this.f2093D, j2);
    }

    @Override // com.anythink.core.c.d
    public final void a(com.anythink.core.c.b.b bVar) throws JSONException {
        List<by> list;
        List<by> list2;
        this.f2102t = SystemClock.elapsedRealtime();
        this.f2103u = System.currentTimeMillis();
        this.f2101s = bVar;
        if (ATSDK.isNetworkLogDebug()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("PlacementId", this.f1998f.f3571e);
                if (this.f1998f.f3585s.al()) {
                    jSONObject.put("isAdxNetworkMode", true);
                }
                jSONObject.put("S2S Start HeadBidding List", d.a(this.f1998f.f3576j));
                jSONObject.put("S2S Start HeadBidding List(Directly)", d.b(this.f2095m));
            } catch (Exception unused) {
            }
            aa.a(aa.f8020a, jSONObject.toString(), false);
        }
        if (this.f1998f.f3576j.isEmpty() && ((list2 = this.f1998f.f3577k) == null || list2.isEmpty())) {
            a(new b(this.f2102t, this.f2103u));
            return;
        }
        if (this.f1998f.f3576j.size() == 0 && (list = this.f1998f.f3577k) != null && list.size() > 0) {
            a(new b(this.f2102t, this.f2103u));
            return;
        }
        long jN = this.f1998f.f3580n.n();
        if (jN <= 0) {
            jN = 500;
        }
        com.anythink.core.common.t.c.a().a(this.f2093D, jN);
        g();
    }

    private void b(com.anythink.core.c.c.a aVar) {
        by byVarB = aVar.b();
        long jE = aVar.e();
        byVarB.o(jE - this.f2102t);
        byVarB.a(jE);
        byVarB.b(aVar.f());
        int iN = byVarB.n();
        f fVarC = c();
        com.anythink.core.common.u.f.a(byVarB, this.f1998f, byVarB.ae(), true, fVarC == null || fVarC.b(iN), aVar.c());
        if (fVarC != null) {
            fVarC.a(iN);
        }
    }

    private void c(com.anythink.core.c.c.a aVar) {
        by byVarB = aVar.b();
        if (aVar.g()) {
            return;
        }
        int iN = byVarB.n();
        f fVarC = c();
        com.anythink.core.common.u.f.a(byVarB, this.f1998f, byVarB.ae(), false, fVarC == null || fVarC.b(iN), aVar.c());
        if (fVarC != null) {
            fVarC.a(iN);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(by byVar) {
        com.anythink.core.common.h.a aVar = this.f1998f;
        h hVar = new h(aVar.f3571e, aVar, SystemClock.elapsedRealtime());
        hVar.f2146g = true;
        hVar.f2147h = true;
        hVar.a(byVar, (h.a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(by byVar, String str, long j2, int i2) {
        long jAe = 0;
        if (j2 > 0) {
            try {
                jAe = byVar.ae() + j2;
            } catch (Throwable th) {
                throw th;
            }
        }
        d.a(byVar, str, jAe, i2);
        this.f2096n.add(byVar);
    }

    public static /* synthetic */ void c(e eVar, com.anythink.core.c.c.a aVar) {
        by byVarB = aVar.b();
        if (aVar.g()) {
            return;
        }
        int iN = byVarB.n();
        f fVarC = eVar.c();
        com.anythink.core.common.u.f.a(byVarB, eVar.f1998f, byVarB.ae(), false, fVarC == null || fVarC.b(iN), aVar.c());
        if (fVarC != null) {
            fVarC.a(iN);
        }
    }

    private static void b(by byVar, ad adVar) {
        aq aqVarBe;
        if (byVar == null || adVar == null || (aqVarBe = byVar.be()) == null) {
            return;
        }
        aqVarBe.b(adVar.l());
        aqVarBe.d(adVar.m());
        aqVarBe.a(adVar.n());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.anythink.core.c.c.a r8) throws java.lang.Throwable {
        /*
            r7 = this;
            r0 = 0
            if (r8 == 0) goto L8
            org.json.JSONObject r1 = r8.a()
            goto L9
        L8:
            r1 = r0
        L9:
            if (r8 == 0) goto Lf
            com.anythink.core.common.h.by r0 = r8.b()
        Lf:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.anythink.core.common.h.by> r2 = r7.f2090A
            int r2 = r2.size()
            if (r2 != 0) goto L24
            r7.i()
            java.util.concurrent.atomic.AtomicBoolean r2 = r7.f2106x
            boolean r2 = r2.get()
            if (r2 != 0) goto L24
            r2 = 1
            goto L25
        L24:
            r2 = 0
        L25:
            monitor-enter(r7)
            if (r1 == 0) goto L3d
            if (r0 == 0) goto L3d
            java.util.List<com.anythink.core.c.c.a> r1 = r7.f2095m     // Catch: java.lang.Throwable -> L39
            r1.add(r8)     // Catch: java.lang.Throwable -> L39
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.anythink.core.common.h.by> r8 = r7.f2091B     // Catch: java.lang.Throwable -> L39
            java.lang.String r1 = r0.G()     // Catch: java.lang.Throwable -> L39
            r8.put(r1, r0)     // Catch: java.lang.Throwable -> L39
            goto L3d
        L39:
            r0 = move-exception
            r8 = r0
            r1 = r7
            goto L8a
        L3d:
            java.util.List<com.anythink.core.c.c.a> r8 = r7.f2095m     // Catch: java.lang.Throwable -> L87
            int r8 = r8.size()     // Catch: java.lang.Throwable -> L87
            if (r8 <= 0) goto L65
            if (r2 != 0) goto L57
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.f2105w     // Catch: java.lang.Throwable -> L39
            boolean r8 = r8.get()     // Catch: java.lang.Throwable -> L39
            if (r8 == 0) goto L65
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.f2106x     // Catch: java.lang.Throwable -> L39
            boolean r8 = r8.get()     // Catch: java.lang.Throwable -> L39
            if (r8 != 0) goto L65
        L57:
            com.anythink.core.c.e$b r8 = new com.anythink.core.c.e$b     // Catch: java.lang.Throwable -> L39
            long r0 = r7.f2102t     // Catch: java.lang.Throwable -> L39
            long r2 = r7.f2103u     // Catch: java.lang.Throwable -> L39
            r8.<init>(r0, r2)     // Catch: java.lang.Throwable -> L39
            r7.a(r8)     // Catch: java.lang.Throwable -> L39
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L39
            return
        L65:
            monitor-exit(r7)
            java.util.List<com.anythink.core.common.h.by> r8 = r7.f2096n
            int r8 = r8.size()
            if (r8 <= 0) goto L85
            boolean r8 = r7.p()
            if (r8 == 0) goto L85
            com.anythink.core.c.e$b r3 = new com.anythink.core.c.e$b
            r0 = 0
            r3.<init>(r0, r0)
            java.lang.String r4 = ""
            r5 = 0
            r6 = 0
            r2 = 0
            r1 = r7
            r1.a(r2, r3, r4, r5, r6)
            return
        L85:
            r1 = r7
            return
        L87:
            r0 = move-exception
            r1 = r7
            r8 = r0
        L8a:
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.e.a(com.anythink.core.c.c.a):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void b(com.anythink.core.c.e r7, com.anythink.core.c.c.a r8) throws java.lang.Throwable {
        /*
            r0 = 0
            if (r8 == 0) goto L8
            org.json.JSONObject r1 = r8.a()
            goto L9
        L8:
            r1 = r0
        L9:
            if (r8 == 0) goto Lf
            com.anythink.core.common.h.by r0 = r8.b()
        Lf:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.anythink.core.common.h.by> r2 = r7.f2090A
            int r2 = r2.size()
            if (r2 != 0) goto L24
            r7.i()
            java.util.concurrent.atomic.AtomicBoolean r2 = r7.f2106x
            boolean r2 = r2.get()
            if (r2 != 0) goto L24
            r2 = 1
            goto L25
        L24:
            r2 = 0
        L25:
            monitor-enter(r7)
            if (r1 == 0) goto L3d
            if (r0 == 0) goto L3d
            java.util.List<com.anythink.core.c.c.a> r1 = r7.f2095m     // Catch: java.lang.Throwable -> L39
            r1.add(r8)     // Catch: java.lang.Throwable -> L39
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.anythink.core.common.h.by> r8 = r7.f2091B     // Catch: java.lang.Throwable -> L39
            java.lang.String r1 = r0.G()     // Catch: java.lang.Throwable -> L39
            r8.put(r1, r0)     // Catch: java.lang.Throwable -> L39
            goto L3d
        L39:
            r0 = move-exception
            r8 = r0
            r1 = r7
            goto L88
        L3d:
            java.util.List<com.anythink.core.c.c.a> r8 = r7.f2095m     // Catch: java.lang.Throwable -> L85
            int r8 = r8.size()     // Catch: java.lang.Throwable -> L85
            if (r8 <= 0) goto L65
            if (r2 != 0) goto L57
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.f2105w     // Catch: java.lang.Throwable -> L39
            boolean r8 = r8.get()     // Catch: java.lang.Throwable -> L39
            if (r8 == 0) goto L65
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.f2106x     // Catch: java.lang.Throwable -> L39
            boolean r8 = r8.get()     // Catch: java.lang.Throwable -> L39
            if (r8 != 0) goto L65
        L57:
            com.anythink.core.c.e$b r8 = new com.anythink.core.c.e$b     // Catch: java.lang.Throwable -> L39
            long r0 = r7.f2102t     // Catch: java.lang.Throwable -> L39
            long r2 = r7.f2103u     // Catch: java.lang.Throwable -> L39
            r8.<init>(r0, r2)     // Catch: java.lang.Throwable -> L39
            r7.a(r8)     // Catch: java.lang.Throwable -> L39
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L39
            return
        L65:
            monitor-exit(r7)
            java.util.List<com.anythink.core.common.h.by> r8 = r7.f2096n
            int r8 = r8.size()
            if (r8 <= 0) goto L84
            boolean r8 = r7.p()
            if (r8 == 0) goto L84
            com.anythink.core.c.e$b r3 = new com.anythink.core.c.e$b
            r0 = 0
            r3.<init>(r0, r0)
            java.lang.String r4 = ""
            r5 = 0
            r6 = 0
            r2 = 0
            r1 = r7
            r1.a(r2, r3, r4, r5, r6)
        L84:
            return
        L85:
            r0 = move-exception
            r1 = r7
            r8 = r0
        L88:
            monitor-exit(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.c.e.b(com.anythink.core.c.e, com.anythink.core.c.c.a):void");
    }

    public synchronized void a(List<JSONObject> list, Map<String, by> map, Map<String, JSONObject> map2) {
        try {
            for (com.anythink.core.c.c.a aVar : this.f2095m) {
                JSONObject jSONObjectA = aVar.a();
                list.add(jSONObjectA);
                map2.put(jSONObjectA.optString("ad_source_id"), jSONObjectA);
                by byVarB = aVar.b();
                if (byVarB != null && byVarB.bJ()) {
                    f fVarC = c();
                    if (fVarC != null) {
                        String str = this.f1998f.f3571e;
                        com.anythink.core.c.c.a aVar2 = fVarC.f2137d.get(str + byVarB.G());
                        if (aVar2 != null && aVar2 == aVar) {
                            fVarC.f2137d.remove(str + byVarB.G());
                        }
                    }
                    if (!aVar.c()) {
                        if ((fVarC != null ? fVarC.b(this.f1998f.f3571e, byVarB) : null) == null) {
                            c(byVarB);
                        }
                    }
                }
            }
            this.f2095m.clear();
            ConcurrentHashMap<String, by> concurrentHashMap = this.f2091B;
            if (concurrentHashMap != null) {
                Iterator<Map.Entry<String, by>> it = concurrentHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    by value = it.next().getValue();
                    if (value != null) {
                        value.c(SystemClock.elapsedRealtime());
                    }
                }
            }
            map.putAll(this.f2091B);
            this.f2091B.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(final b bVar) {
        if (this.f2106x.get()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        final ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        a(arrayList, concurrentHashMap, concurrentHashMap2);
        this.f2106x.set(true);
        a(arrayList, new s() { // from class: com.anythink.core.c.e.4
            @Override // com.anythink.core.common.m.s
            public final void onLoadCanceled(int i2) {
                synchronized (e.this) {
                    try {
                        if (e.this.f2000h.get()) {
                            return;
                        }
                        e.this.f2106x.set(false);
                        e.this.e();
                        if (bVar != null) {
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            b bVar2 = bVar;
                            bVar2.f2133c = jElapsedRealtime - bVar2.f2131a;
                        }
                        e.this.a(null, bVar, "onLoadCanceled.", concurrentHashMap, concurrentHashMap2);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadError(int i2, String str, AdError adError) {
                synchronized (e.this) {
                    try {
                        if (e.this.f2000h.get()) {
                            return;
                        }
                        e.this.f2106x.set(false);
                        e.this.e();
                        if (bVar != null) {
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            b bVar2 = bVar;
                            bVar2.f2133c = jElapsedRealtime - bVar2.f2131a;
                        }
                        e.this.a(null, bVar, adError != null ? adError.getPlatformMSG() : "", concurrentHashMap, concurrentHashMap2);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadFinish(int i2, Object obj) {
                synchronized (e.this) {
                    try {
                        if (e.this.f2000h.get()) {
                            return;
                        }
                        e.this.f2106x.set(false);
                        if (bVar != null) {
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            b bVar2 = bVar;
                            bVar2.f2133c = jElapsedRealtime - bVar2.f2131a;
                        }
                        e.this.a(e.a(e.this, obj), bVar, null, concurrentHashMap, concurrentHashMap2);
                        e.this.e();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadStart(int i2) {
            }
        });
    }

    private void a(long j2, int i2, String str, Map<String, by> map) {
        for (by byVar : map.values()) {
            if (a(byVar, str, i2)) {
                this.f2097o.add(byVar);
            } else {
                b(byVar, str, j2, i2);
            }
        }
        map.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(List<ad> list, b bVar, String str, Map<String, by> map, Map<String, JSONObject> map2) {
        long j2;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    Collections.sort(list);
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        ad adVar = list.get(i2);
                        this.f2107y.remove(adVar.f3678k);
                        by byVarRemove = map.remove(adVar.f3678k);
                        if (this.f2108z.containsKey(adVar.f3678k)) {
                            byVarRemove = this.f2108z.remove(adVar.f3678k);
                            this.f2108z.clear();
                        }
                        if (byVarRemove != null) {
                            if (adVar.isSuccessWithUseType()) {
                                int i3 = i2 + 1;
                                a(byVarRemove.n(), adVar, i3 < list.size() ? list.get(i3).getSortPrice() : 0.0d, adVar.isSamePrice());
                                aq aqVarBe = byVarRemove.be();
                                if (aqVarBe != null) {
                                    aqVarBe.b(adVar.l());
                                    aqVarBe.d(adVar.m());
                                    aqVarBe.a(adVar.n());
                                }
                                JSONObject jSONObject = map2.get(byVarRemove.G());
                                if (jSONObject != null) {
                                    String strOptString = jSONObject.optString(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BID_TOKEN);
                                    if (TextUtils.isEmpty(strOptString)) {
                                        strOptString = jSONObject.optString(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BUYERUID);
                                    }
                                    adVar.c(strOptString);
                                }
                            }
                            if (bVar != null) {
                                j2 = bVar.f2133c;
                                byVarRemove.u(bVar.f2132b);
                            } else {
                                j2 = 0;
                            }
                            a(byVarRemove, adVar, j2);
                            if (byVarRemove.n() == 66) {
                                com.anythink.core.common.a.h.a(this.f1998f.f3568b).a(byVarRemove.G(), adVar.f3690w);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (map != null) {
            for (String str2 : map.keySet()) {
                if (str2 != null) {
                    this.f2107y.remove(str2);
                }
                if (this.f2108z.containsKey(str2)) {
                    this.f2108z.clear();
                }
            }
        }
        if (map != null) {
            a(bVar != null ? bVar.f2133c : 0L, -4, TextUtils.isEmpty(str) ? "No Response error." : "No Response error." + str, map);
        }
        if (this.f2097o.size() >= 2) {
            Collections.sort(this.f2097o);
        }
        o();
        n();
        m();
    }

    private static void a(Map<String, JSONObject> map, by byVar, ad adVar) {
        JSONObject jSONObject = map.get(byVar.G());
        if (jSONObject != null) {
            String strOptString = jSONObject.optString(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BID_TOKEN);
            if (TextUtils.isEmpty(strOptString)) {
                strOptString = jSONObject.optString(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BUYERUID);
            }
            adVar.c(strOptString);
        }
    }

    private List<ad> a(Object obj) {
        ArrayList arrayList = new ArrayList();
        if (obj instanceof JSONObject) {
            JSONArray jSONArrayOptJSONArray = ((JSONObject) obj).optJSONArray("data");
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                ad adVarA = ad.a(jSONArrayOptJSONArray.optJSONObject(i2));
                if (adVarA != null) {
                    com.anythink.core.common.h.a aVar = this.f1998f;
                    adVarA.commonAdManager = aVar != null ? aVar.f3566J : null;
                    arrayList.add(adVarA);
                }
            }
        }
        return arrayList;
    }

    @Override // com.anythink.core.c.d
    public void a(by byVar, z zVar, long j2) throws Throwable {
        String str;
        int i2;
        if (zVar instanceof ad) {
            ad adVar = (ad) zVar;
            boolean zIsSuccessWithUseType = adVar.isSuccessWithUseType();
            boolean zA = d.a(zIsSuccessWithUseType, byVar, zVar);
            int i3 = 0;
            AdError adErrorA = zIsSuccessWithUseType ? ac.a(0, this.f1998f.f3585s, byVar, zVar) : null;
            boolean z2 = adErrorA != null;
            if (zIsSuccessWithUseType && !zA && !z2) {
                byVar.e(j2 > 0 ? byVar.ae() + j2 : 0L);
                this.f2097o.add(byVar);
                if (byVar.y() != 3 && byVar.y() != 7) {
                    adVar.f3673f = byVar.A() + System.currentTimeMillis();
                } else {
                    adVar.f3673f = adVar.f3672e + System.currentTimeMillis();
                }
                a(byVar, adVar);
                return;
            }
            if (zA) {
                b(byVar, ATBidRequestInfo.LESS_THAN_BID_FLOOR_TYPE, j2, -11);
                byVar.b(zVar.getPrice());
                byVar.e(zVar.getSortPrice());
                byVar.a(adVar);
                return;
            }
            if (z2) {
                b(byVar, adErrorA.getPlatformMSG(), j2, -13);
                byVar.b(zVar.getPrice());
                byVar.e(zVar.getSortPrice());
                byVar.a(adVar);
                return;
            }
            if (adVar.useType == 2) {
                byVar.ac();
                str = "filter by s2s bid max count";
                i2 = 0;
                i3 = 1;
            } else {
                str = "errorCode:[" + adVar.f3668a + "],errorMsg:[" + adVar.errorMsg + "]";
                i2 = -1;
            }
            if (a(byVar, str, i2, i3)) {
                this.f2097o.add(byVar);
            } else {
                b(byVar, str, j2, i2);
            }
        }
    }

    @Override // com.anythink.core.c.d
    public final void a() throws Throwable {
        l();
    }

    public static /* synthetic */ void a(e eVar, com.anythink.core.c.c.a aVar) {
        by byVarB = aVar.b();
        long jE = aVar.e();
        byVarB.o(jE - eVar.f2102t);
        byVarB.a(jE);
        byVarB.b(aVar.f());
        int iN = byVarB.n();
        f fVarC = eVar.c();
        com.anythink.core.common.u.f.a(byVarB, eVar.f1998f, byVarB.ae(), true, fVarC == null || fVarC.b(iN), aVar.c());
        if (fVarC != null) {
            fVarC.a(iN);
        }
    }

    public static /* synthetic */ List a(e eVar, Object obj) {
        ArrayList arrayList = new ArrayList();
        if (obj instanceof JSONObject) {
            JSONArray jSONArrayOptJSONArray = ((JSONObject) obj).optJSONArray("data");
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                ad adVarA = ad.a(jSONArrayOptJSONArray.optJSONObject(i2));
                if (adVarA != null) {
                    com.anythink.core.common.h.a aVar = eVar.f1998f;
                    adVarA.commonAdManager = aVar != null ? aVar.f3566J : null;
                    arrayList.add(adVarA);
                }
            }
        }
        return arrayList;
    }
}
