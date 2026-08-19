package com.anythink.core.common.w;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.u;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.bz;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.p;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.ai;
import com.anythink.core.common.v.k;
import com.anythink.core.common.v.o;
import com.anythink.core.common.v.t;
import com.anythink.core.e.m;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8442a = "e";

    /* renamed from: b, reason: collision with root package name */
    String f8443b;

    /* renamed from: c, reason: collision with root package name */
    by f8444c;

    /* renamed from: d, reason: collision with root package name */
    n f8445d;

    /* renamed from: e, reason: collision with root package name */
    String f8446e;

    /* renamed from: f, reason: collision with root package name */
    int f8447f;

    /* renamed from: g, reason: collision with root package name */
    ATBaseAdAdapter f8448g;

    /* renamed from: h, reason: collision with root package name */
    c f8449h;

    /* renamed from: i, reason: collision with root package name */
    boolean f8450i;

    /* renamed from: j, reason: collision with root package name */
    boolean f8451j;

    /* renamed from: k, reason: collision with root package name */
    long f8452k;

    /* renamed from: l, reason: collision with root package name */
    long f8453l;

    /* renamed from: m, reason: collision with root package name */
    com.anythink.core.common.v.b.d f8454m;

    /* renamed from: n, reason: collision with root package name */
    com.anythink.core.common.v.b.d f8455n;

    /* renamed from: o, reason: collision with root package name */
    d f8456o;

    /* renamed from: p, reason: collision with root package name */
    Boolean f8457p;

    /* renamed from: q, reason: collision with root package name */
    int f8458q;

    /* renamed from: r, reason: collision with root package name */
    String f8459r;

    /* renamed from: s, reason: collision with root package name */
    boolean f8460s;

    /* renamed from: t, reason: collision with root package name */
    private final com.anythink.core.common.f f8461t;

    /* renamed from: com.anythink.core.common.w.e$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ATBaseAdAdapter f8462a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ by f8463b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f8464c;

        public AnonymousClass1(ATBaseAdAdapter aTBaseAdAdapter, by byVar, Map map) {
            this.f8462a = aTBaseAdAdapter;
            this.f8463b = byVar;
            this.f8464c = map;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context contextA = e.a(e.this);
            byte b3 = 0;
            if (contextA == null) {
                if (e.this.f8449h != null) {
                    b bVar = new b();
                    bVar.f8416c = 0;
                    bVar.f8418e = SystemClock.elapsedRealtime() - e.this.f8452k;
                    bVar.f8417d = ErrorCode.getErrorCode(ErrorCode.adapterInnerError, "", "Request Context is null! Please check the Ad init Context.");
                    e.this.a(this.f8462a, bVar);
                    return;
                }
                return;
            }
            e.a(e.this, contextA, this.f8463b, this.f8462a);
            try {
                Map<String, Object> mapJ = e.this.j();
                e.this.f8448g = this.f8462a;
                com.anythink.core.common.o.e.a().c();
                ATBaseAdAdapter aTBaseAdAdapter = this.f8462a;
                Map<String, Object> map = this.f8464c;
                e eVar = e.this;
                aTBaseAdAdapter.internalLoad(contextA, map, mapJ, new com.anythink.core.common.w.a(eVar.f8445d, eVar.f8446e, this.f8464c, new a(eVar, eVar, this.f8462a, b3)));
                n trackingInfo = this.f8462a.getTrackingInfo();
                String internalNetworkPlacementId = this.f8462a.getInternalNetworkPlacementId();
                if (!TextUtils.isEmpty(internalNetworkPlacementId)) {
                    trackingInfo.m(internalNetworkPlacementId);
                }
                c cVar = e.this.f8449h;
                if (cVar != null) {
                    cVar.a(trackingInfo, this.f8462a);
                }
            } catch (Throwable th) {
                b bVar2 = new b();
                bVar2.f8416c = 0;
                bVar2.f8418e = SystemClock.elapsedRealtime() - e.this.f8452k;
                bVar2.f8417d = ErrorCode.getErrorCode(ErrorCode.adapterInnerError, "", th.getMessage());
                e.this.a(this.f8462a, bVar2);
            }
        }
    }

    /* renamed from: com.anythink.core.common.w.e$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8092A, new Runnable() { // from class: com.anythink.core.common.w.e.2.1
                @Override // java.lang.Runnable
                public final void run() {
                    e.this.m();
                }
            }));
        }
    }

    /* renamed from: com.anythink.core.common.w.e$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8092A, new Runnable() { // from class: com.anythink.core.common.w.e.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    e.this.m();
                }
            }));
        }
    }

    public class a implements ATCustomLoadListener {

        /* renamed from: a, reason: collision with root package name */
        ATBaseAdAdapter f8472a;

        /* renamed from: b, reason: collision with root package name */
        e f8473b;

        public /* synthetic */ a(e eVar, e eVar2, ATBaseAdAdapter aTBaseAdAdapter, byte b3) {
            this(eVar2, aTBaseAdAdapter);
        }

        @Override // com.anythink.core.api.ATCustomLoadListener
        public final void onAdCacheLoaded(final BaseAd... baseAdArr) {
            com.anythink.core.common.o.e.a().d();
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8141x, new Runnable() { // from class: com.anythink.core.common.w.e.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    ATBaseAdAdapter aTBaseAdAdapter;
                    synchronized (a.this) {
                        try {
                            a aVar = a.this;
                            e eVar = aVar.f8473b;
                            if (eVar != null && (aTBaseAdAdapter = aVar.f8472a) != null) {
                                eVar.a(aTBaseAdAdapter, baseAdArr);
                                a aVar2 = a.this;
                                aVar2.f8473b = null;
                                aVar2.f8472a = null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }));
        }

        @Override // com.anythink.core.api.ATCustomLoadListener
        public final void onAdDataLoaded() {
            e.d(e.this);
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8142y, new Runnable() { // from class: com.anythink.core.common.w.e.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    synchronized (a.this) {
                        try {
                            a aVar = a.this;
                            e eVar = aVar.f8473b;
                            if (eVar != null && aVar.f8472a != null) {
                                eVar.q();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }));
        }

        @Override // com.anythink.core.api.ATCustomLoadListener
        public final void onAdLoadError(final String str, final String str2) {
            com.anythink.core.common.o.e.a().d();
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8143z, new Runnable() { // from class: com.anythink.core.common.w.e.a.3
                @Override // java.lang.Runnable
                public final void run() {
                    synchronized (a.this) {
                        try {
                            a aVar = a.this;
                            if (aVar.f8473b != null && aVar.f8472a != null) {
                                b bVar = new b();
                                bVar.f8416c = 0;
                                bVar.f8417d = ErrorCode.getErrorCode(ErrorCode.noADError, str, str2);
                                long jElapsedRealtime = SystemClock.elapsedRealtime();
                                a aVar2 = a.this;
                                bVar.f8418e = jElapsedRealtime - e.this.f8452k;
                                aVar2.f8473b.a(aVar2.f8472a, bVar);
                                a aVar3 = a.this;
                                aVar3.f8473b = null;
                                aVar3.f8472a = null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }));
        }

        private a(e eVar, ATBaseAdAdapter aTBaseAdAdapter) {
            this.f8473b = eVar;
            this.f8472a = aTBaseAdAdapter;
        }
    }

    public e(by byVar, int i2, com.anythink.core.common.f fVar) {
        this.f8444c = byVar;
        this.f8458q = i2;
        this.f8461t = fVar;
        this.f8446e = byVar.G();
        this.f8459r = this.f8446e + "_" + hashCode();
    }

    private void g() {
        if (this.f8454m != null) {
            com.anythink.core.common.t.c.a().a(this.f8454m);
            this.f8454m = null;
        }
    }

    private void h() {
        if (this.f8455n != null) {
            com.anythink.core.common.t.c.a().a(this.f8455n);
            this.f8455n = null;
        }
    }

    private Map<String, Object> i() throws JSONException {
        d dVar = this.f8456o;
        m mVar = dVar.f8437e;
        String str = dVar.f8435c;
        if (mVar == null) {
            return new HashMap();
        }
        n nVar = this.f8445d;
        Map<String, Object> mapA = mVar.a(this.f8443b, str, this.f8444c, nVar != null ? nVar.b() : null);
        int iN = this.f8444c.n();
        if (iN == 2) {
            com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f8456o.f8433a).b(s.b().p());
            if (bVarB != null) {
                mapA.put("mediation_switch", Boolean.valueOf(bVarB.n() == 1));
            }
            if (mVar.m() == 1) {
                mapA.put("admob_show_with_pay_info", Integer.valueOf(mVar.m()));
            } else {
                mapA.put("admob_show_with_pay_info", Integer.valueOf(this.f8444c.aH()));
            }
        } else if (iN == 6) {
            JSONObject jSONObjectA = o.a(this.f8456o.f8433a, str, this.f8443b, mVar.ap(), this.f8447f);
            if (mVar.aM() == 1) {
                mapA.put("tp_info", jSONObjectA.toString());
            }
        } else if (iN == 22) {
            com.anythink.core.common.v.f.a(mVar, mapA, this.f8444c, this.f8456o.f8441i);
        } else if (iN == 76) {
            mapA.put("internal_vast_load_timeout", Long.valueOf(this.f8444c.D()));
        }
        if (ai.a(this.f8444c) && this.f8456o.f8437e.aJ() == 1) {
            com.anythink.core.a.a.a(this.f8456o.f8433a);
            mapA.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_LOAD_SEQ, Integer.valueOf(com.anythink.core.a.a.a(this.f8443b, this.f8456o.f8437e.ap()).f4019c));
            com.anythink.core.common.f fVar = this.f8461t;
            if (fVar != null) {
                synchronized (fVar.q()) {
                    try {
                        String strB = this.f8461t.b(this.f8444c.n());
                        if (!TextUtils.isEmpty(strB)) {
                            mapA.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.CONTENT, strB);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return mapA;
            }
        }
        return mapA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> j() {
        Map<String, Object> map = this.f8456o.f8438f;
        if (map == null) {
            return new HashMap(2);
        }
        if (this.f8444c.n() == 2) {
            Object obj = map.get("admob_content_urls");
            String string = "";
            try {
                Object obj2 = map.get("admob_keywords");
                if (obj2 instanceof List) {
                    string = obj2.toString();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if ((obj instanceof List) || !TextUtils.isEmpty(string)) {
                com.anythink.core.common.u.f.a(this.f8443b, this.f8445d, "admob_content_urls", obj, string);
            }
        }
        return map;
    }

    private Context k() {
        Context contextM = this.f8456o.f8434b.get();
        if (!(contextM instanceof Activity)) {
            contextM = s.b().M();
        }
        if (ATSDK.isNetworkLogDebug()) {
            "requestContext = ".concat(String.valueOf(contextM));
        }
        return contextM;
    }

    private boolean l() {
        return !this.f8460s || this.f8451j || s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void m() {
        if (l()) {
            return;
        }
        this.f8450i = true;
        c cVar = this.f8449h;
        if (cVar != null) {
            cVar.a(this.f8459r);
        }
    }

    private com.anythink.core.common.v.b.d n() {
        return new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dg, new AnonymousClass2());
    }

    private com.anythink.core.common.v.b.d o() {
        return new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dh, new AnonymousClass3());
    }

    private void p() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = jElapsedRealtime - this.f8452k;
        this.f8453l = j2;
        n nVar = this.f8445d;
        if (nVar != null) {
            nVar.r(j2);
            this.f8445d.l(jElapsedRealtime);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void q() {
        g();
    }

    private void r() {
        this.f8448g = null;
    }

    private boolean s() {
        return this.f8457p != null;
    }

    private long t() {
        return this.f8452k;
    }

    private boolean u() {
        return this.f8450i;
    }

    public final boolean d() {
        return (s() && this.f8450i) ? false : true;
    }

    public final by f() {
        return this.f8444c;
    }

    public static /* synthetic */ void d(e eVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = jElapsedRealtime - eVar.f8452k;
        eVar.f8453l = j2;
        n nVar = eVar.f8445d;
        if (nVar != null) {
            nVar.r(j2);
            eVar.f8445d.l(jElapsedRealtime);
        }
    }

    public final String a() {
        return this.f8459r;
    }

    public final synchronized void b() {
        if (l()) {
            return;
        }
        this.f8457p = Boolean.FALSE;
        this.f8451j = true;
        b bVar = new b();
        bVar.f8416c = 0;
        bVar.f8418e = SystemClock.elapsedRealtime() - this.f8452k;
        bVar.f8417d = ErrorCode.getErrorCode(ErrorCode.timeOutError, "", "");
        a(this.f8448g, bVar);
    }

    public final Boolean c() {
        return this.f8457p;
    }

    public final int e() {
        return this.f8458q;
    }

    public final void a(d dVar) {
        this.f8456o = dVar;
        this.f8443b = dVar.f8436d;
        this.f8445d = dVar.f8440h;
        this.f8447f = dVar.f8439g;
    }

    public final void a(c cVar) {
        this.f8449h = cVar;
    }

    public final void a(by byVar) throws JSONException {
        boolean z2;
        com.anythink.core.common.h.c cVarA;
        BaseAd baseAdB;
        ATBaseAdAdapter aTBaseAdAdapterA;
        p pVarA;
        String strB;
        String strA;
        boolean z3 = true;
        this.f8460s = true;
        ad adVarY = this.f8444c.Y();
        if (adVarY != null && adVarY.o()) {
            if (this.f8449h != null) {
                b bVar = new b();
                bVar.f8416c = 0;
                bVar.f8418e = 0L;
                bVar.f8417d = ErrorCode.getErrorCode(ErrorCode.biddingResultHasShow, "", "Bidding result has been used");
                bVar.f8421h = 1;
                a((ATBaseAdAdapter) null, bVar);
                return;
            }
            return;
        }
        if (this.f8444c.w() && this.f8444c.Y() != null && !TextUtils.isEmpty(this.f8456o.f8435c)) {
            this.f8444c.Y().b(this.f8456o.f8435c);
        }
        com.anythink.core.common.f fVar = this.f8461t;
        bz bzVarA = (fVar == null || fVar.e() == null) ? null : this.f8461t.e().a(this.f8443b, this.f8444c);
        if (bzVarA != null) {
            com.anythink.core.common.h.j jVarA = bzVarA.a(this.f8444c.Y());
            int iD = jVarA.d();
            if (this.f8444c.v() == 1) {
                cVarA = jVarA.e();
            } else {
                cVarA = jVarA.a();
            }
            if (cVarA != null) {
                com.anythink.core.common.f fVar2 = this.f8461t;
                List<com.anythink.core.common.h.c> listA = (fVar2 == null || fVar2.e() == null) ? null : this.f8461t.e().a(this.f8443b);
                if (listA == null || !listA.contains(cVarA)) {
                    com.anythink.core.common.u.f.b("adsource upstatus error", "cache no found in list", s.b().r());
                    cVarA = null;
                }
            }
            z2 = this.f8444c.v() != 1 ? !(!jVarA.c() || cVarA == null || (k.a(this.f8444c, byVar) < 0 && iD < this.f8444c.aG())) : cVarA != null;
        } else {
            z2 = false;
            cVarA = null;
        }
        if (z2) {
            c cVar = this.f8449h;
            if (cVar != null) {
                cVar.a(cVarA.e().getTrackingInfo(), cVarA.e());
            }
            a(cVarA.e(), this.f8444c, cVarA);
            return;
        }
        if (adVarY == null || !adVarY.f3687t) {
            z3 = false;
            baseAdB = null;
            aTBaseAdAdapterA = null;
        } else {
            com.anythink.core.c.c.c cVar2 = adVarY.f3686s;
            if (cVar2 != null) {
                aTBaseAdAdapterA = cVar2.a();
                baseAdB = cVar2.b();
            } else {
                baseAdB = null;
                aTBaseAdAdapterA = null;
            }
            adVarY.f3686s = null;
        }
        if (aTBaseAdAdapterA != null || z3) {
            pVarA = null;
        } else {
            pVarA = t.a(this.f8444c);
            aTBaseAdAdapterA = pVarA != null ? pVarA.f4352a : null;
        }
        if (aTBaseAdAdapterA == null) {
            if (this.f8449h != null) {
                b bVar2 = new b();
                bVar2.f8416c = 0;
                bVar2.f8418e = z3 ? this.f8444c.x() : 0L;
                if (z3) {
                    strB = "";
                } else {
                    strB = this.f8444c.u() + " does not exist!";
                }
                if (pVarA != null) {
                    strB = pVarA.b(strB);
                    strA = pVarA.a();
                } else {
                    strA = null;
                }
                if (TextUtils.isEmpty(strA)) {
                    bVar2.f8417d = ErrorCode.getErrorCode(z3 ? ErrorCode.c2sBiddingCacheError : "2002", "", strB);
                } else {
                    if (strA.equals(ErrorCode.adapterBridgeVersionError)) {
                        bVar2.f8416c = 39;
                    }
                    bVar2.f8417d = ErrorCode.getErrorCode(strA, "", strB);
                }
                a((ATBaseAdAdapter) null, bVar2);
                return;
            }
            return;
        }
        ah.a(aTBaseAdAdapterA, this.f8445d, this.f8444c);
        this.f8445d.m(ai.a(this.f8444c, null));
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f8452k = jElapsedRealtime;
        this.f8445d.a(jElapsedRealtime);
        try {
            if (baseAdB != null) {
                this.f8445d.a(baseAdB.getNetworkInfoMap());
            } else {
                this.f8445d.a(aTBaseAdAdapterA.getInternalNetworkInfoMap());
            }
        } catch (Exception unused) {
        }
        c cVar3 = this.f8449h;
        if (cVar3 != null) {
            cVar3.a(aTBaseAdAdapterA, String.valueOf(this.f8456o.f8437e.ap()));
        }
        c cVar4 = this.f8449h;
        if (cVar4 != null) {
            cVar4.a(this.f8445d);
        }
        long jO = this.f8444c.O();
        if (jO != -1) {
            this.f8454m = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dh, new AnonymousClass3());
            com.anythink.core.common.t.c.a().a(this.f8454m, jO);
        }
        long jD = this.f8444c.D();
        if (jD != -1) {
            this.f8455n = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dg, new AnonymousClass2());
            com.anythink.core.common.t.c.a().a(this.f8455n, jD);
        }
        Context context = this.f8456o.f8434b.get();
        if (context != null && (context instanceof Activity)) {
            aTBaseAdAdapterA.refreshActivityContext((Activity) context);
        }
        if (z3) {
            c cVar5 = this.f8449h;
            if (cVar5 != null) {
                cVar5.a(this.f8445d, aTBaseAdAdapterA);
            }
            if (baseAdB != null) {
                a(aTBaseAdAdapterA, baseAdB);
                return;
            } else {
                a(aTBaseAdAdapterA, new BaseAd[0]);
                return;
            }
        }
        by byVar2 = this.f8444c;
        Map<String, Object> mapI = i();
        String.valueOf(this.f8456o.f8437e.ap());
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8140w, new AnonymousClass1(aTBaseAdAdapterA, byVar2, mapI)), false);
    }

    private void b(long j2) {
        if (j2 == -1) {
            return;
        }
        this.f8454m = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dh, new AnonymousClass3());
        com.anythink.core.common.t.c.a().a(this.f8454m, j2);
    }

    private void a(ATBaseAdAdapter aTBaseAdAdapter, by byVar) throws JSONException {
        Map<String, Object> mapI = i();
        String.valueOf(this.f8456o.f8437e.ap());
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8140w, new AnonymousClass1(aTBaseAdAdapter, byVar, mapI)), false);
    }

    private void a(Context context, by byVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (com.anythink.core.e.b.aQ()) {
            u uVarA = u.a(s.b().g());
            try {
                boolean zB = uVarA.b(byVar.n());
                if (uVarA.b(byVar.n(), zB) && aTBaseAdAdapter.internalSetUserDataConsent(context, zB, ATSDK.isEUTraffic(this.f8456o.f8433a))) {
                    uVarA.a(byVar.n(), zB);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void a(ATBaseAdAdapter aTBaseAdAdapter) {
        this.f8448g = aTBaseAdAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(ATBaseAdAdapter aTBaseAdAdapter, BaseAd... baseAdArr) {
        try {
            if (l()) {
                return;
            }
            by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
            long jX = unitGroupInfo.y() == 2 ? unitGroupInfo.x() : 0L;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f8445d.s((jElapsedRealtime - this.f8452k) + jX);
            this.f8445d.m(jElapsedRealtime);
            ah.a(this.f8445d, aTBaseAdAdapter);
            g();
            h();
            this.f8448g = null;
            this.f8457p = Boolean.TRUE;
            if (this.f8450i) {
                this.f8445d.f4343u = 1;
            }
            c cVar = this.f8449h;
            if (cVar != null) {
                cVar.a(this.f8459r, aTBaseAdAdapter, baseAdArr);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void a(ATBaseAdAdapter aTBaseAdAdapter, by byVar, com.anythink.core.common.h.c cVar) {
        try {
            if (l()) {
                return;
            }
            g();
            h();
            this.f8448g = null;
            this.f8457p = Boolean.TRUE;
            if (this.f8450i) {
                this.f8445d.f4343u = 1;
            }
            c cVar2 = this.f8449h;
            if (cVar2 != null) {
                cVar2.a(this.f8459r, aTBaseAdAdapter, byVar, cVar);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(final ATBaseAdAdapter aTBaseAdAdapter, b bVar) {
        try {
            if (l()) {
                return;
            }
            g();
            h();
            if (aTBaseAdAdapter != null) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.core.common.w.e.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            ATBaseAdAdapter aTBaseAdAdapter2 = aTBaseAdAdapter;
                            if (aTBaseAdAdapter2 != null) {
                                aTBaseAdAdapter2.internalDestroy();
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            }
            this.f8448g = null;
            this.f8457p = Boolean.FALSE;
            boolean z2 = this.f8451j;
            if (z2) {
                this.f8445d.f4343u = 2;
            } else if (this.f8450i) {
                this.f8445d.f4343u = 1;
            }
            if (!z2) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                com.anythink.core.common.c.a().a(this.f8446e, jCurrentTimeMillis);
                com.anythink.core.common.c.a().a(this.f8446e, jCurrentTimeMillis, bVar.f8417d);
            }
            bVar.f8419f = this.f8445d;
            bVar.f8420g = this.f8444c;
            c cVar = this.f8449h;
            if (cVar != null) {
                cVar.a(this.f8459r, aTBaseAdAdapter, bVar);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(long j2) {
        if (j2 == -1) {
            return;
        }
        this.f8455n = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dg, new AnonymousClass2());
        com.anythink.core.common.t.c.a().a(this.f8455n, j2);
    }

    public static /* synthetic */ Context a(e eVar) {
        Context contextM = eVar.f8456o.f8434b.get();
        if (!(contextM instanceof Activity)) {
            contextM = s.b().M();
        }
        if (ATSDK.isNetworkLogDebug()) {
            "requestContext = ".concat(String.valueOf(contextM));
        }
        return contextM;
    }

    public static /* synthetic */ void a(e eVar, Context context, by byVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (com.anythink.core.e.b.aQ()) {
            u uVarA = u.a(s.b().g());
            try {
                boolean zB = uVarA.b(byVar.n());
                if (uVarA.b(byVar.n(), zB) && aTBaseAdAdapter.internalSetUserDataConsent(context, zB, ATSDK.isEUTraffic(eVar.f8456o.f8433a))) {
                    uVarA.a(byVar.n(), zB);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
