package com.anythink.core.common;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdRealTimeFilter;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.a.c;
import com.anythink.core.common.d.i;
import com.anythink.core.common.h;
import com.anythink.core.common.h.ac;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.af;
import com.anythink.core.common.h.as;
import com.anythink.core.common.h.bp;
import com.anythink.core.common.h.br;
import com.anythink.core.common.h.bs;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.ca;
import com.anythink.core.common.h.cc;
import com.anythink.core.common.h.ce;
import com.anythink.core.common.h.z;
import com.anythink.core.common.j;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ah;
import com.anythink.core.debugger.CoreDebuggerManager;
import com.anythink.core.e.o;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    protected Context f3109a;

    /* renamed from: b, reason: collision with root package name */
    protected String f3110b;

    /* renamed from: d, reason: collision with root package name */
    protected boolean f3112d;

    /* renamed from: g, reason: collision with root package name */
    n f3115g;

    /* renamed from: i, reason: collision with root package name */
    com.anythink.core.common.p.c f3117i;

    /* renamed from: j, reason: collision with root package name */
    com.anythink.core.common.p.d f3118j;

    /* renamed from: o, reason: collision with root package name */
    private boolean f3123o;

    /* renamed from: p, reason: collision with root package name */
    private long f3124p;

    /* renamed from: v, reason: collision with root package name */
    private final String f3130v;

    /* renamed from: w, reason: collision with root package name */
    private ATAdRequest f3131w;

    /* renamed from: x, reason: collision with root package name */
    private as f3132x;

    /* renamed from: m, reason: collision with root package name */
    private final String f3121m = f.class.getSimpleName();

    /* renamed from: e, reason: collision with root package name */
    protected String f3113e = "";

    /* renamed from: n, reason: collision with root package name */
    private String f3122n = "";

    /* renamed from: q, reason: collision with root package name */
    private boolean f3125q = false;

    /* renamed from: f, reason: collision with root package name */
    protected int f3114f = 1;

    /* renamed from: k, reason: collision with root package name */
    h.d f3119k = new h.d() { // from class: com.anythink.core.common.f.5
        @Override // com.anythink.core.common.h.d
        public final void a(g gVar) {
            if (gVar != null) {
                gVar.b();
            }
        }
    };

    /* renamed from: y, reason: collision with root package name */
    private final Object f3133y = new Object();

    /* renamed from: z, reason: collision with root package name */
    private boolean f3134z = false;

    /* renamed from: r, reason: collision with root package name */
    private final a f3126r = new a(this);

    /* renamed from: s, reason: collision with root package name */
    private final com.anythink.core.common.a.c f3127s = new com.anythink.core.common.a.c(this);

    /* renamed from: t, reason: collision with root package name */
    private final com.anythink.core.c.f f3128t = new com.anythink.core.c.f(this);

    /* renamed from: u, reason: collision with root package name */
    private final w f3129u = new w();

    /* renamed from: c, reason: collision with root package name */
    protected ConcurrentHashMap<String, g> f3111c = new ConcurrentHashMap<>(5);

    /* renamed from: h, reason: collision with root package name */
    final List<ca> f3116h = Collections.synchronizedList(new ArrayList(2));

    /* renamed from: l, reason: collision with root package name */
    volatile bp f3120l = new bp();

    /* renamed from: com.anythink.core.common.f$3, reason: invalid class name */
    public class AnonymousClass3 implements com.anythink.core.common.w.b.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ as f3152a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f3153b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f3154c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f3155d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.e.m f3156e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.h.n f3157f;

        public AnonymousClass3(as asVar, Context context, String str, String str2, com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar) {
            this.f3152a = asVar;
            this.f3153b = context;
            this.f3154c = str;
            this.f3155d = str2;
            this.f3156e = mVar;
            this.f3157f = nVar;
        }

        @Override // com.anythink.core.common.w.b.b
        public final void a() {
            com.anythink.core.common.h.h hVar = this.f3152a.f3821m;
            if (hVar != null) {
                hVar.g(System.currentTimeMillis());
            }
            com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.ax, new Runnable() { // from class: com.anythink.core.common.f.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                    f.b(f.this, anonymousClass3.f3153b, anonymousClass3.f3154c, anonymousClass3.f3155d, anonymousClass3.f3156e, anonymousClass3.f3157f, anonymousClass3.f3152a);
                }
            }), false);
        }
    }

    /* renamed from: com.anythink.core.common.f$7, reason: invalid class name */
    public class AnonymousClass7 implements com.anythink.core.common.d.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.d.a[] f3170a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3171b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f3172c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f3173d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ as f3174e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.e.m f3175f;

        public AnonymousClass7(com.anythink.core.common.d.a[] aVarArr, String str, String str2, String str3, as asVar, com.anythink.core.e.m mVar) {
            this.f3170a = aVarArr;
            this.f3171b = str;
            this.f3172c = str2;
            this.f3173d = str3;
            this.f3174e = asVar;
            this.f3175f = mVar;
        }

        @Override // com.anythink.core.common.d.a
        public final void onAdLoadFail(AdError adError) {
            if (this.f3170a[0] != null) {
                com.anythink.core.common.u.f.a(this.f3171b, this.f3172c, (com.anythink.core.common.h.n) null, this.f3173d, this.f3174e.f3809a, this.f3175f, false, "0", "0", "");
                this.f3170a[0].onAdLoadFail(adError);
            }
        }

        @Override // com.anythink.core.common.d.a
        public final void onAdLoaded() {
            if (this.f3170a[0] != null) {
                com.anythink.core.common.u.f.a(this.f3171b, this.f3172c, (com.anythink.core.common.h.n) null, this.f3173d, this.f3174e.f3809a, this.f3175f, true, "0", "1", "");
                this.f3170a[0].onAdLoaded();
            }
        }
    }

    /* renamed from: com.anythink.core.common.f$8, reason: invalid class name */
    public class AnonymousClass8 implements com.anythink.core.common.d.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f3177a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3178b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f3179c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ as f3180d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.e.m f3181e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.d.a[] f3182f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Context f3183g;

        public AnonymousClass8(String str, String str2, String str3, as asVar, com.anythink.core.e.m mVar, com.anythink.core.common.d.a[] aVarArr, Context context) {
            this.f3177a = str;
            this.f3178b = str2;
            this.f3179c = str3;
            this.f3180d = asVar;
            this.f3181e = mVar;
            this.f3182f = aVarArr;
            this.f3183g = context;
        }

        @Override // com.anythink.core.common.d.a
        public final void onAdLoadFail(AdError adError) {
            com.anythink.core.common.h.c cVarB = f.b(this.f3183g, this.f3178b, this.f3179c, this.f3180d);
            if (cVarB == null) {
                v.a().b(this.f3178b, this.f3180d.b());
                com.anythink.core.common.u.f.a(this.f3177a, this.f3178b, (com.anythink.core.common.h.n) null, this.f3179c, this.f3180d.f3809a, this.f3181e, false, "0", "0", "");
                com.anythink.core.common.d.a aVar = this.f3182f[0];
                if (aVar != null) {
                    aVar.onAdLoadFail(adError);
                    return;
                }
                return;
            }
            aa.a("Shared", "placementId:" + this.f3177a + ";result_callback:success;");
            com.anythink.core.common.h.n nVarI = cVarB.i();
            com.anythink.core.common.u.f.a(this.f3177a, this.f3178b, nVarI, this.f3179c, this.f3180d.f3809a, this.f3181e, true, "1", "0", nVarI != null ? nVarI.aR() : "");
            com.anythink.core.common.d.a aVar2 = this.f3182f[0];
            if (aVar2 != null) {
                aVar2.onAdLoaded();
            }
        }

        @Override // com.anythink.core.common.d.a
        public final void onAdLoaded() {
            com.anythink.core.common.u.f.a(this.f3177a, this.f3178b, (com.anythink.core.common.h.n) null, this.f3179c, this.f3180d.f3809a, this.f3181e, true, "2", "1", "");
            com.anythink.core.common.d.a aVar = this.f3182f[0];
            if (aVar != null) {
                aVar.onAdLoaded();
            }
        }
    }

    /* renamed from: com.anythink.core.common.f$9, reason: invalid class name */
    public class AnonymousClass9 implements Comparator<com.anythink.core.common.h.c> {
        public AnonymousClass9() {
        }

        private static int a(com.anythink.core.common.h.c cVar, com.anythink.core.common.h.c cVar2) {
            return com.anythink.core.common.v.k.a(cVar.o(), cVar2.o());
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(com.anythink.core.common.h.c cVar, com.anythink.core.common.h.c cVar2) {
            return com.anythink.core.common.v.k.a(cVar.o(), cVar2.o());
        }
    }

    public f(Context context, String str, String str2) {
        this.f3109a = context.getApplicationContext();
        this.f3110b = str;
        this.f3130v = str2;
        if (com.anythink.core.common.d.s.b().g() == null) {
            com.anythink.core.common.d.s.b().a(this.f3109a);
        }
    }

    private boolean A() {
        return !TextUtils.isEmpty(this.f3113e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean B() {
        com.anythink.core.common.p.d dVar = this.f3118j;
        return dVar != null && dVar.b();
    }

    private void C() {
        com.anythink.core.common.p.d dVar = this.f3118j;
        if (dVar != null) {
            dVar.d();
        }
    }

    private void D() {
        com.anythink.core.common.p.d dVar = this.f3118j;
        if (dVar != null) {
            dVar.c();
        }
    }

    private bp E() {
        if (this.f3120l == null) {
            synchronized (this.f3133y) {
                try {
                    if (this.f3120l == null) {
                        this.f3120l = new bp();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f3120l;
    }

    public static /* synthetic */ boolean i(f fVar) {
        fVar.f3123o = false;
        return false;
    }

    public static /* synthetic */ long j(f fVar) {
        fVar.f3124p = 0L;
        return 0L;
    }

    private f w() {
        return this;
    }

    private void x() {
        synchronized (this.f3116h) {
            this.f3116h.clear();
        }
    }

    private boolean y() {
        return System.currentTimeMillis() - this.f3124p <= 2000;
    }

    private as z() {
        return this.f3132x;
    }

    public final String c() {
        return this.f3110b;
    }

    public final a e() {
        return this.f3126r;
    }

    public final boolean l() {
        g gVar;
        if (this.f3112d) {
            return true;
        }
        return (TextUtils.isEmpty(this.f3113e) || (gVar = this.f3111c.get(this.f3113e)) == null || gVar.c()) ? false : true;
    }

    public final String m() {
        return this.f3113e;
    }

    public final ATAdRequest n() {
        return this.f3131w;
    }

    public final void o() {
        try {
            t.a().a(this.f3110b, com.anythink.core.common.v.o.a(new Throwable().getStackTrace()));
        } catch (Throwable unused) {
        }
    }

    public final void p() {
        a(-1, 6);
    }

    public final Object q() {
        return E().a();
    }

    public final Map<String, Object> r() {
        HashMap map = new HashMap(2);
        synchronized (this.f3133y) {
            try {
                Map<String, Object> mapB = E().b();
                if (mapB != null) {
                    map.putAll(mapB);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return map;
    }

    public final com.anythink.core.common.h.i s() {
        return E().c();
    }

    public final void t() {
        E().a((ATAdInfo) null);
    }

    public final void u() {
        this.f3134z = true;
    }

    public final boolean v() {
        return this.f3134z;
    }

    /* renamed from: com.anythink.core.common.f$2, reason: invalid class name */
    public class AnonymousClass2 implements o.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.h.n f3144a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3145b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ as f3146c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.e.m f3147d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f3148e;

        public AnonymousClass2(com.anythink.core.common.h.n nVar, String str, as asVar, com.anythink.core.e.m mVar, String str2) {
            this.f3144a = nVar;
            this.f3145b = str;
            this.f3146c = asVar;
            this.f3147d = mVar;
            this.f3148e = str2;
        }

        private void c(com.anythink.core.e.m mVar) {
            com.anythink.core.common.h.n nVar;
            synchronized (f.this) {
                try {
                    ah.a(this.f3144a, mVar);
                    if (!TextUtils.equals(String.valueOf(mVar != null ? mVar.ap() : 0), this.f3145b)) {
                        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.formatError, "", "Format corresponding to API: " + com.anythink.core.common.v.o.f(this.f3145b) + ", Format corresponding to placement strategy: " + com.anythink.core.common.v.o.f(String.valueOf(mVar.ap())));
                        f.this.a(this.f3146c, errorCode);
                        this.f3144a.b(false);
                        com.anythink.core.common.u.f.a(this.f3144a, errorCode);
                        f.this.f3112d = false;
                        return;
                    }
                    if (this.f3147d == null && mVar != null) {
                        try {
                            try {
                                f.this.c(mVar, this.f3144a);
                            } catch (Throwable th) {
                                f.this.a(true, this.f3144a, th, this.f3146c);
                                return;
                            }
                        } catch (com.anythink.core.common.h.m e2) {
                            f.this.a(true, this.f3144a, (Throwable) e2, this.f3146c);
                            return;
                        }
                    }
                    if (mVar != null && (nVar = this.f3144a) != null) {
                        nVar.j(SystemClock.elapsedRealtime());
                        if (mVar.bJ()) {
                            this.f3144a.a(2);
                        } else {
                            this.f3144a.a(1);
                        }
                    }
                    long jBH = mVar != null ? mVar.bH() : 0L;
                    int iBI = mVar != null ? mVar.bI() : 0;
                    com.anythink.core.common.h.h hVar = this.f3146c.f3821m;
                    if (hVar != null) {
                        hVar.e((mVar == null || mVar.bJ()) ? jBH : 0L);
                        hVar.f(System.currentTimeMillis());
                        hVar.a(iBI);
                    }
                    f fVar = f.this;
                    f.a(fVar, fVar.f3109a, fVar.f3110b, this.f3148e, mVar, this.f3144a, this.f3146c);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.anythink.core.e.o.b
        public final void a() {
            com.anythink.core.common.h.n nVar = this.f3144a;
            if (nVar != null) {
                nVar.h(SystemClock.elapsedRealtime());
            }
        }

        @Override // com.anythink.core.e.o.b
        public final void b() {
            com.anythink.core.common.h.n nVar = this.f3144a;
            if (nVar != null) {
                nVar.i(SystemClock.elapsedRealtime());
            }
        }

        @Override // com.anythink.core.e.o.b
        public final void a(final com.anythink.core.e.m mVar) {
            com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aw, new Runnable() { // from class: com.anythink.core.common.f.2.1
                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass2.a(AnonymousClass2.this, mVar);
                }
            }));
        }

        @Override // com.anythink.core.e.o.b
        public final void b(com.anythink.core.e.m mVar) {
            if (mVar.aZ()) {
                return;
            }
            f.e(f.this);
        }

        @Override // com.anythink.core.e.o.b
        public final void a(AdError adError) {
            String str = i.s.f2734n;
            String str2 = f.this.f3110b;
            String strF = com.anythink.core.common.v.o.f(this.f3145b);
            String strPrintStackTrace = adError.printStackTrace();
            if (ATSDK.isNetworkLogDebug()) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(com.umeng.ccg.a.f49772z, i.s.f2719E);
                    jSONObject.put("result", str);
                    jSONObject.put("placementId", str2);
                    jSONObject.put("adtype", strF);
                    jSONObject.put(MediationConstant.KEY_ERROR_MSG, strPrintStackTrace);
                    aa.a("anythink_network", jSONObject.toString(), TextUtils.equals(i.s.f2734n, str));
                } catch (Throwable unused) {
                }
            }
            if (adError.getCode().equals(ErrorCode.statuError)) {
                adError = ErrorCode.getErrorCode(ErrorCode.placeStrategyError, adError.getPlatformCode(), adError.getPlatformMSG());
            }
            this.f3144a.L(5);
            f.this.a(true, this.f3144a, adError, this.f3146c);
        }

        public static /* synthetic */ void a(AnonymousClass2 anonymousClass2, com.anythink.core.e.m mVar) {
            com.anythink.core.common.h.n nVar;
            synchronized (f.this) {
                try {
                    ah.a(anonymousClass2.f3144a, mVar);
                    if (!TextUtils.equals(String.valueOf(mVar != null ? mVar.ap() : 0), anonymousClass2.f3145b)) {
                        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.formatError, "", "Format corresponding to API: " + com.anythink.core.common.v.o.f(anonymousClass2.f3145b) + ", Format corresponding to placement strategy: " + com.anythink.core.common.v.o.f(String.valueOf(mVar.ap())));
                        f.this.a(anonymousClass2.f3146c, errorCode);
                        anonymousClass2.f3144a.b(false);
                        com.anythink.core.common.u.f.a(anonymousClass2.f3144a, errorCode);
                        f.this.f3112d = false;
                        return;
                    }
                    if (anonymousClass2.f3147d == null && mVar != null) {
                        try {
                            try {
                                f.this.c(mVar, anonymousClass2.f3144a);
                            } catch (Throwable th) {
                                f.this.a(true, anonymousClass2.f3144a, th, anonymousClass2.f3146c);
                                return;
                            }
                        } catch (com.anythink.core.common.h.m e2) {
                            f.this.a(true, anonymousClass2.f3144a, (Throwable) e2, anonymousClass2.f3146c);
                            return;
                        }
                    }
                    if (mVar != null && (nVar = anonymousClass2.f3144a) != null) {
                        nVar.j(SystemClock.elapsedRealtime());
                        if (mVar.bJ()) {
                            anonymousClass2.f3144a.a(2);
                        } else {
                            anonymousClass2.f3144a.a(1);
                        }
                    }
                    long jBH = mVar != null ? mVar.bH() : 0L;
                    int iBI = mVar != null ? mVar.bI() : 0;
                    com.anythink.core.common.h.h hVar = anonymousClass2.f3146c.f3821m;
                    if (hVar != null) {
                        hVar.e((mVar == null || mVar.bJ()) ? jBH : 0L);
                        hVar.f(System.currentTimeMillis());
                        hVar.a(iBI);
                    }
                    f fVar = f.this;
                    f.a(fVar, fVar.f3109a, fVar.f3110b, anonymousClass2.f3148e, mVar, anonymousClass2.f3144a, anonymousClass2.f3146c);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private com.anythink.core.e.m e(Context context) {
        return com.anythink.core.e.o.a(context).c(this.f3110b);
    }

    public final String b() {
        return this.f3130v;
    }

    public final void c(com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar) {
        com.anythink.core.common.b.f fVarA = com.anythink.core.common.b.f.a();
        int iG = com.anythink.core.common.b.f.g();
        int iH = com.anythink.core.common.b.f.h();
        int i2 = com.anythink.core.common.b.f.i();
        int iA = fVarA.a(this.f3110b, mVar);
        com.anythink.core.common.b.a aVarJ = fVarA.j();
        com.anythink.core.common.b.d dVarA = fVarA.a(this.f3110b);
        nVar.ao(iG);
        nVar.an(iH);
        nVar.am(i2);
        nVar.ap(iA);
        if (com.anythink.core.common.b.f.b()) {
            com.anythink.core.common.u.f.a(nVar, iA, iH, i2, aVarJ != null ? aVarJ.d() : "", (dVarA == null || dVarA.b() == null) ? "" : dVarA.b().i(), aVarJ != null ? aVarJ.a() : null, dVarA != null ? dVarA.a() : null);
            if (fVarA.e()) {
                nVar.L(11);
                throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode("2036", "", "SDK disabled due to ANR circuit breaker"), "SDK disabled.");
            }
        }
    }

    public final com.anythink.core.common.a.c d() {
        return this.f3127s;
    }

    public final com.anythink.core.c.f f() {
        return this.f3128t;
    }

    public final w g() {
        return this.f3129u;
    }

    public final int h() {
        List<ca> list = this.f3116h;
        int i2 = 0;
        if (list == null) {
            return 0;
        }
        synchronized (list) {
            try {
                Iterator<ca> it = this.f3116h.iterator();
                while (it.hasNext()) {
                    ca next = it.next();
                    if (next == null || !next.a()) {
                        it.remove();
                    } else {
                        i2++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i2;
    }

    public final void i() {
        List<ca> list = this.f3116h;
        if (list != null) {
            synchronized (list) {
                try {
                    if (this.f3116h.size() > 0) {
                        this.f3116h.remove(0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void j() {
        this.f3123o = false;
        this.f3124p = 0L;
        this.f3125q = false;
    }

    public final void k() {
        com.anythink.core.e.m mVarB = com.anythink.core.e.o.a(this.f3109a).b(this.f3110b);
        if (this.f3123o || mVarB == null) {
            return;
        }
        this.f3123o = true;
        this.f3124p = System.currentTimeMillis();
    }

    private static void d(com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar) {
        if (mVar.bk()) {
            return;
        }
        nVar.L(5);
        throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(ErrorCode.placementAdClose, "", ""), "Strategy is close.");
    }

    public static /* synthetic */ void e(f fVar) {
        synchronized (fVar.f3116h) {
            fVar.f3116h.clear();
        }
    }

    public final g b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f3111c.get(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v59 */
    /* JADX WARN: Type inference failed for: r2v60 */
    private void b(Context context, String str, String str2, com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar, as asVar) {
        boolean z2;
        boolean z3;
        g gVar;
        boolean z4;
        by byVar;
        com.anythink.core.common.h.c cVarA;
        boolean z5;
        long jBM;
        int i2;
        bs bsVar;
        ac acVar;
        boolean z6;
        com.anythink.core.e.m mVar2;
        boolean z7;
        List<by> list;
        g gVar2;
        com.anythink.core.common.a.c cVar;
        Map<String, cc> map;
        com.anythink.core.e.m mVar3 = mVar;
        com.anythink.core.common.u.f.a("1", nVar, str2, str, "", 0, mVar3.ap(), 0L);
        ce ceVar = new ce(asVar, mVar3);
        ah.a(nVar, ceVar);
        try {
            try {
            } catch (Throwable th) {
                th = th;
                z3 = true;
            }
        } catch (com.anythink.core.common.h.m e2) {
            e = e2;
            z2 = true;
        }
        try {
            if (mVar3.bk()) {
                com.anythink.core.a.b.a(this.f3109a).a(this.f3110b, mVar3);
                a(mVar, nVar);
                b(mVar, nVar);
                br brVarA = com.anythink.core.common.v.ac.a(mVar, nVar);
                com.anythink.core.common.h.n nVarC = brVarA.c();
                if (brVarA.b() == 0) {
                    try {
                        nVarC.L(5);
                        if (brVarA.a().E() == 1) {
                            throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfigInDebugerMode, "", ""), "No Adsource.");
                        }
                        throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfig, "", ""), "No Adsource.");
                    } catch (Throwable th2) {
                        th = th2;
                        z3 = true;
                        a(z3, nVar, th, asVar);
                        return;
                    }
                }
                if (brVarA.i()) {
                    boolean zK = brVarA.k();
                    ArrayList arrayList = new ArrayList(1);
                    com.anythink.core.common.v.ac.b(brVarA, arrayList);
                    List<by> listD = brVarA.d();
                    if (listD != null && !listD.isEmpty()) {
                        com.anythink.core.common.v.ac.a(mVar3, brVarA.c(), listD);
                    }
                    List<by> listA = com.anythink.core.common.v.ac.a(brVarA, brVarA.d());
                    this.f3126r.b(str);
                    boolean z8 = arrayList.size() > 0;
                    boolean z9 = !z8 && (brVarA.e() == null || brVarA.e().size() == 0);
                    nVar.g(SystemClock.elapsedRealtime());
                    if (z9 && ((listA == null || listA.size() == 0) && ((brVarA.f() == null || brVarA.f().size() == 0) && ((brVarA.g() == null || brVarA.g().size() == 0) && (brVarA.h() == null || brVarA.h().size() == 0))))) {
                        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.noAvailableAdsource, "", "");
                        nVar.L(6);
                        a(true, nVar, errorCode, asVar);
                        this.f3112d = false;
                        return;
                    }
                    com.anythink.core.a.c.a();
                    com.anythink.core.a.c.b(this.f3109a, str, mVar3);
                    Map<String, Object> mapR = r();
                    w wVar = this.f3129u;
                    cc ccVarRemove = (wVar == null || (map = wVar.f8360a) == null) ? null : map.remove(str);
                    bs bsVarA = u.a(this.f3109a).a(str, str2);
                    ac acVarA = d.a().a(str);
                    ac acVar2 = new ac(str2);
                    boolean z10 = z8;
                    List<by> list2 = listA;
                    d.a().a(this.f3110b, acVar2);
                    nVar.b(true);
                    nVar.B(ceVar.f());
                    g gVar3 = new g(asVar.a(), this);
                    gVar3.f3436h = mapR;
                    gVar3.f3437i = nVar;
                    gVar3.a(asVar);
                    gVar3.a(asVar.f3812d);
                    this.f3113e = str2;
                    this.f3122n = nVar.aJ();
                    List<by> listA2 = com.anythink.core.e.v.a(mVar3, mVar3.Z());
                    if (listA2.size() > 0) {
                        gVar = gVar3;
                        z4 = false;
                        byVar = listA2.get(0);
                    } else {
                        gVar = gVar3;
                        z4 = false;
                        byVar = null;
                    }
                    if (byVar != null) {
                        for (by byVar2 : brVarA.e()) {
                            if (!byVar2.G().equals(byVar.G()) || (cVar = this.f3127s) == null) {
                                bsVar = bsVarA;
                                acVar = acVarA;
                                z6 = z9;
                                mVar2 = mVar3;
                                z7 = z10;
                                list = list2;
                                gVar2 = gVar;
                                z4 = false;
                            } else {
                                z6 = z9;
                                bsVar = bsVarA;
                                acVar = acVarA;
                                mVar2 = mVar3;
                                z7 = z10;
                                list = list2;
                                g gVar4 = gVar;
                                c.a aVarA = cVar.a(context, str, str2, byVar2, mVar2, mapR, this.f3131w);
                                if (aVarA != null) {
                                    by byVarD = aVarA.d();
                                    if (com.anythink.core.common.v.ac.a(0, nVar, byVarD, (z) null) != null) {
                                        this.f3127s.a(str, byVarD.G());
                                        gVar2 = gVar4;
                                    } else {
                                        gVar2 = gVar4;
                                        gVar2.f3416J = aVarA;
                                    }
                                    z4 = false;
                                    nVar.e(SystemClock.elapsedRealtime());
                                    gVar = gVar2;
                                    mVar3 = mVar2;
                                    list2 = list;
                                    z10 = z7;
                                    z9 = z6;
                                    bsVarA = bsVar;
                                    acVarA = acVar;
                                } else {
                                    z4 = false;
                                    gVar2 = gVar4;
                                }
                            }
                            gVar = gVar2;
                            mVar3 = mVar2;
                            list2 = list;
                            z10 = z7;
                            z9 = z6;
                            bsVarA = bsVar;
                            acVarA = acVar;
                        }
                    }
                    bs bsVar2 = bsVarA;
                    ac acVar3 = acVarA;
                    boolean z11 = z9;
                    com.anythink.core.e.m mVar4 = mVar3;
                    boolean z12 = z10;
                    List<by> list3 = list2;
                    g gVar5 = gVar;
                    com.anythink.core.common.u.e.a(this.f3109a);
                    com.anythink.core.common.u.e.a(10, nVar);
                    Double[] dArr = new Double[1];
                    Boolean boolBo = mVar4.bo();
                    if ((brVarA.j() || (boolBo != null && boolBo.booleanValue())) && (cVarA = this.f3126r.a(context, str)) != null) {
                        dArr[z4 ? 1 : 0] = Double.valueOf(cVarA.n());
                    }
                    com.anythink.core.common.b.c cVarA2 = com.anythink.core.common.b.f.a().a(mVar4);
                    boolean z13 = (cVarA2 == null || !cVarA2.f()) ? z4 ? 1 : 0 : true;
                    boolean zBL = mVar4.bL();
                    if (z13 || zBL) {
                        z5 = z4 ? 1 : 0;
                        z4 = true;
                    } else {
                        z5 = z4 ? 1 : 0;
                    }
                    if (!z4 || z13) {
                        jBM = -1;
                    } else {
                        Long biddingWaitMaxTime = ATAdRealTimeFilter.getInstance().getBiddingWaitMaxTime();
                        if (biddingWaitMaxTime != null) {
                            jBM = biddingWaitMaxTime.longValue();
                        } else {
                            jBM = mVar4.bM() > 0 ? mVar4.bM() : 5000L;
                        }
                    }
                    com.anythink.core.common.w.i iVar = new com.anythink.core.common.w.i(list3);
                    boolean z14 = z4;
                    com.anythink.core.common.w.h hVar = new com.anythink.core.common.w.h();
                    hVar.f8508a = str;
                    hVar.f8509b = str2;
                    hVar.f8510c = ceVar;
                    hVar.f8511d = list3;
                    hVar.f8512e = brVarA.h();
                    hVar.f8516i = z11;
                    hVar.f8517j = nVar.aM();
                    hVar.f8518k = ccVarRemove;
                    hVar.f8520m = bsVar2;
                    hVar.f8519l = iVar;
                    hVar.f8522o = acVar3;
                    hVar.f8521n = acVar2;
                    hVar.f8513f = brVarA.f();
                    hVar.f8514g = brVarA.g();
                    Double d2 = dArr[z5];
                    hVar.f8515h = d2 != null ? d2.doubleValue() : 0.0d;
                    hVar.f8523p = brVarA.e();
                    hVar.f8524q = z13;
                    gVar5.a(hVar);
                    this.f3111c.put(str2, gVar5);
                    com.anythink.core.common.h.h hVar2 = asVar.f3821m;
                    if (hVar2 != null) {
                        hVar2.h(System.currentTimeMillis());
                    }
                    com.anythink.core.common.u.f.a(asVar.f3821m, nVar);
                    h hVar3 = new h(str, gVar5);
                    gVar5.a(hVar3);
                    hVar3.a(mVar4, zK);
                    hVar3.a(this.f3119k);
                    if (z11 || !z14) {
                        hVar3.a();
                    }
                    this.f3112d = z5;
                    if (!z11) {
                        List<by> listE = brVarA.e();
                        try {
                            com.anythink.core.common.h.a aVar = new com.anythink.core.common.h.a();
                            aVar.f3568b = context;
                            aVar.f3569c = asVar;
                            aVar.f3570d = str2;
                            aVar.f3571e = str;
                            aVar.f3572f = mVar4.ap();
                            aVar.f3573g = mVar4.aa();
                            aVar.f3574h = mVar4.W();
                            aVar.f3575i = mVar4.F();
                            i.a();
                            aVar.f3578l = i.a(mVar4, z12);
                            i.a();
                            aVar.f3581o = i.a(mVar4);
                            i.a();
                            aVar.f3582p = i.b(mVar4);
                            aVar.f3576j = listE;
                            aVar.f3580n = ceVar;
                            aVar.f3585s = nVar;
                            aVar.f3588v = ccVarRemove;
                            aVar.f3589w = bsVar2;
                            aVar.f3590x = acVar3;
                            aVar.f3583q = r();
                            aVar.f3579m = z12;
                            if (asVar.f3811c == 8) {
                                aVar.f3586t = 7;
                            }
                            aVar.f3591y = iVar;
                            aVar.f3557A = asVar.f3820l;
                            aVar.f3558B = d.a().b(this.f3110b);
                            if (boolBo == null || !boolBo.booleanValue()) {
                                i2 = 0;
                            } else {
                                i2 = 0;
                                Double d3 = dArr[0];
                                if (d3 != null) {
                                    aVar.f3559C = d3.doubleValue();
                                }
                            }
                            aVar.f3560D = (!zK || mVar4.bv() <= 0) ? i2 : mVar4.bv();
                            aVar.f3561E = mVar4.bE();
                            aVar.f3562F = hVar3;
                            aVar.f3565I = cVarA2;
                            aVar.f3563G = z14;
                            aVar.f3564H = jBM;
                            aVar.f3566J = this;
                            aVar.f3567K = mVar4.k();
                            com.anythink.core.c.b bVar = new com.anythink.core.c.b(aVar);
                            bVar.a(ATSDK.isNetworkLogDebug());
                            bVar.a(new AnonymousClass4(ceVar, gVar5));
                        } catch (Throwable th3) {
                            com.anythink.core.common.u.f.b("notifyBiddingFinish error", th3.getMessage() + ", " + com.anythink.core.common.v.p.a(th3.getStackTrace()), com.anythink.core.common.d.s.b().r());
                            gVar5.e();
                        }
                    }
                    int i3 = asVar.f3811c;
                    if (i3 == 0 || i3 == 3) {
                        v.a().a(mVar4, 15, asVar, nVar);
                        return;
                    }
                    return;
                }
                nVarC.L(6);
                AdError errorCode2 = ErrorCode.getErrorCode(ErrorCode.noAvailableAdsource, "", "");
                throw new com.anythink.core.common.h.m(errorCode2, errorCode2.printStackTrace());
            }
            nVar.L(5);
            throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(ErrorCode.placementAdClose, "", ""), "Strategy is close.");
        } catch (com.anythink.core.common.h.m e3) {
            e = e3;
            z2 = true;
            a(z2, nVar, e, asVar);
        }
    }

    private List<com.anythink.core.common.h.c> d(Context context) {
        if (a(false, false, (ae) null)) {
            return null;
        }
        a aVar = this.f3126r;
        if (aVar != null) {
            return aVar.a(context, this.f3110b, false, false, true, (ae) null);
        }
        return new ArrayList();
    }

    public final void a(com.anythink.core.common.p.c cVar) {
        this.f3117i = cVar;
    }

    private void a(com.anythink.core.common.p.d dVar) {
        this.f3118j = dVar;
    }

    public final com.anythink.core.common.p.d a() {
        return this.f3118j;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0046 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:6:0x000d, B:8:0x0017, B:26:0x004d, B:25:0x0046, B:13:0x002a, B:18:0x0036, B:27:0x0054), top: B:32:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.anythink.core.common.f a(android.content.Context r4, java.lang.String r5, java.lang.String r6) {
        /*
            com.anythink.core.common.t r0 = com.anythink.core.common.t.a()
            com.anythink.core.common.f r0 = r0.a(r5, r6)
            if (r0 != 0) goto L58
            java.lang.Class<com.anythink.core.common.f> r0 = com.anythink.core.common.f.class
            monitor-enter(r0)
            com.anythink.core.common.t r1 = com.anythink.core.common.t.a()     // Catch: java.lang.Throwable -> L34
            com.anythink.core.common.f r1 = r1.a(r5, r6)     // Catch: java.lang.Throwable -> L34
            if (r1 != 0) goto L54
            com.anythink.core.common.f r1 = new com.anythink.core.common.f     // Catch: java.lang.Throwable -> L34
            r1.<init>(r4, r5, r6)     // Catch: java.lang.Throwable -> L34
            int r4 = r6.hashCode()     // Catch: java.lang.Throwable -> L34
            r2 = 49
            r3 = 1
            if (r4 == r2) goto L36
            r2 = 51
            if (r4 == r2) goto L2a
            goto L40
        L2a:
            java.lang.String r4 = "3"
            boolean r4 = r6.equals(r4)     // Catch: java.lang.Throwable -> L34
            if (r4 == 0) goto L40
            r4 = r3
            goto L41
        L34:
            r4 = move-exception
            goto L56
        L36:
            java.lang.String r4 = "1"
            boolean r4 = r6.equals(r4)     // Catch: java.lang.Throwable -> L34
            if (r4 == 0) goto L40
            r4 = 0
            goto L41
        L40:
            r4 = -1
        L41:
            if (r4 == 0) goto L46
            if (r4 == r3) goto L46
            goto L4d
        L46:
            com.anythink.core.common.p.a r4 = new com.anythink.core.common.p.a     // Catch: java.lang.Throwable -> L34
            r4.<init>(r5, r6)     // Catch: java.lang.Throwable -> L34
            r1.f3118j = r4     // Catch: java.lang.Throwable -> L34
        L4d:
            com.anythink.core.common.t r4 = com.anythink.core.common.t.a()     // Catch: java.lang.Throwable -> L34
            r4.a(r5, r6, r1)     // Catch: java.lang.Throwable -> L34
        L54:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L34
            return r1
        L56:
            monitor-exit(r0)
            throw r4
        L58:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.a(android.content.Context, java.lang.String, java.lang.String):com.anythink.core.common.f");
    }

    public final String d(String str) {
        return E().b(str);
    }

    /* renamed from: com.anythink.core.common.f$4, reason: invalid class name */
    public class AnonymousClass4 implements j.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ce f3160a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ g f3161b;

        public AnonymousClass4(ce ceVar, g gVar) {
            this.f3160a = ceVar;
            this.f3161b = gVar;
        }

        @Override // com.anythink.core.common.j.a
        public final void a(String str, List<by> list, List<by> list2, boolean z2) {
            boolean zD = this.f3160a.d();
            ArrayList arrayList = null;
            for (by byVar : list2) {
                if (zD && (byVar.y() == 1 || byVar.y() == 3)) {
                    if (byVar.ab() != 1) {
                        if (arrayList == null) {
                            arrayList = new ArrayList(4);
                        }
                        byVar.G(7);
                        arrayList.add(byVar);
                    }
                }
                if (!zD && byVar.x() != 0) {
                    c cVarA = c.a();
                    cVarA.f2382c.put(byVar.G(), Long.valueOf(System.currentTimeMillis()));
                }
            }
            this.f3161b.a(list, list2, arrayList, list2);
            if (z2) {
                this.f3161b.e();
            }
        }

        @Override // com.anythink.core.common.j.a
        public final void a(String str) {
            this.f3161b.d();
        }

        @Override // com.anythink.core.common.j.a
        public final void a(Double d2) {
            com.anythink.core.common.w.g gVar = this.f3161b.f3415I;
            if (gVar != null) {
                gVar.a(d2);
            }
        }
    }

    public final void a(ca caVar, com.anythink.core.e.m mVar) {
        com.anythink.core.e.m mVarA = com.anythink.core.e.o.a(com.anythink.core.common.d.s.b().g()).a(this.f3110b);
        if (mVarA != null) {
            if (mVar == null) {
                return;
            }
            if (!TextUtils.equals(mVarA.am(), mVar.am()) && !mVarA.aZ()) {
                return;
            }
        }
        synchronized (this.f3116h) {
            this.f3116h.add(caVar);
        }
    }

    private List<com.anythink.core.common.h.c> c(Context context) {
        a aVar = this.f3126r;
        if (aVar != null) {
            return aVar.a(context, this.f3110b, false, false, true, (ae) null);
        }
        return new ArrayList();
    }

    public final void a(String str) {
        this.f3111c.remove(str);
    }

    public final void c(String str) {
        g gVar;
        if (TextUtils.isEmpty(str) || (gVar = this.f3111c.get(str)) == null) {
            return;
        }
        gVar.g();
    }

    public final void a(String str, double d2, by byVar) {
        g gVar = this.f3111c.get(str);
        if (gVar != null) {
            gVar.a(d2, byVar);
        }
    }

    public static /* synthetic */ void c(f fVar) {
        com.anythink.core.common.p.d dVar = fVar.f3118j;
        if (dVar != null) {
            dVar.d();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(final android.content.Context r16, final java.lang.String r17, final java.lang.String r18, final com.anythink.core.common.h.as r19, final com.anythink.core.common.d.a r20) {
        /*
            r15 = this;
            r2 = r19
            com.anythink.core.common.d.s r0 = com.anythink.core.common.d.s.b()
            boolean r0 = r0.A()
            r1 = 1
            if (r0 != 0) goto L13
            com.anythink.core.common.d.s r0 = com.anythink.core.common.d.s.b()
            r0.f2958c = r1
        L13:
            long r3 = android.os.SystemClock.elapsedRealtime()
            if (r2 == 0) goto L23
            long r5 = r2.f3822n
            r7 = 0
            int r0 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r0 == 0) goto L23
            r7 = r5
            goto L24
        L23:
            r7 = r3
        L24:
            java.util.Map r4 = r15.r()
            int[] r6 = new int[r1]
            r11 = 0
            r6[r11] = r11
            java.lang.String r0 = "ofm_tid_key"
            boolean r1 = r4.containsKey(r0)
            if (r1 == 0) goto L41
            java.lang.Object r0 = r4.get(r0)     // Catch: java.lang.Throwable -> L41
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L41
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L41
            r6[r11] = r0     // Catch: java.lang.Throwable -> L41
        L41:
            com.anythink.core.common.v.b.c r12 = com.anythink.core.common.v.b.c.a()
            com.anythink.core.common.v.b.d r13 = new com.anythink.core.common.v.b.d
            java.lang.String r14 = com.anythink.core.common.v.b.e.ay
            com.anythink.core.common.f$1 r0 = new com.anythink.core.common.f$1
            r1 = r15
            r3 = r16
            r9 = r17
            r5 = r18
            r10 = r20
            r0.<init>()
            r13.<init>(r14, r0)
            r12.a(r13, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.a(android.content.Context, java.lang.String, java.lang.String, com.anythink.core.common.h.as, com.anythink.core.common.d.a):void");
    }

    private static void a(String str, String str2, as asVar) {
        int i2 = asVar.f3811c;
        if (i2 == 0 || i2 == 3) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            t.a().a(str2, stackTrace);
            if (TextUtils.equals(str, "4")) {
                return;
            }
            t.a().a(str2, com.anythink.core.common.v.o.a(stackTrace));
        }
    }

    private void a(Context context, String str, String str2, com.anythink.core.e.m mVar, as asVar, com.anythink.core.common.h.n nVar, String str3, String str4, int i2) {
        com.anythink.core.e.o.a(context).a(mVar, str, str2, this.f3110b, asVar.f3815g, new AnonymousClass2(nVar, str3, asVar, mVar, str4), i2, false, asVar.b(), true, null);
    }

    private void a(Context context, String str, String str2, com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar, as asVar) {
        if (nVar != null) {
            nVar.f(SystemClock.elapsedRealtime());
        }
        com.anythink.core.common.w.b.h hVar = new com.anythink.core.common.w.b.h(context, str, mVar, new AnonymousClass3(asVar, context, str, str2, mVar, nVar));
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new com.anythink.core.common.w.b.e());
        new com.anythink.core.common.w.b.g(arrayList, hVar, 0).a(hVar);
    }

    private static void a(br brVar) {
        com.anythink.core.common.h.n nVarC = brVar.c();
        if (brVar.b() == 0) {
            nVarC.L(5);
            if (brVar.a().E() == 1) {
                throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfigInDebugerMode, "", ""), "No Adsource.");
            }
            throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfig, "", ""), "No Adsource.");
        }
        if (brVar.i()) {
            return;
        }
        nVarC.L(6);
        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.noAvailableAdsource, "", "");
        throw new com.anythink.core.common.h.m(errorCode, errorCode.printStackTrace());
    }

    private void a(com.anythink.core.e.m mVar) {
        com.anythink.core.a.b.a(this.f3109a).a(this.f3110b, mVar);
    }

    public static void a(com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar) {
        com.anythink.core.a.a.a(com.anythink.core.common.d.s.b().g());
        int iA = com.anythink.core.a.a.a(mVar, nVar.aQ());
        if (iA != -1) {
            String str = ErrorCode.outOfCapError;
            if (iA != 2) {
                switch (iA) {
                    case 7:
                        str = ErrorCode.outOfCapError_day_Global;
                        break;
                    case 8:
                        str = ErrorCode.outOfCapError_day_Format;
                        break;
                    case 9:
                        str = ErrorCode.outOfCapError_hour_Global;
                        break;
                    case 10:
                        str = ErrorCode.outOfCapError_hour_Format;
                        break;
                }
            }
            nVar.L(1);
            throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(str, "", ""), "Capping.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, com.anythink.core.common.h.n nVar, Throwable th, as asVar) {
        AdError errorCode;
        if (th instanceof com.anythink.core.common.h.m) {
            errorCode = ((com.anythink.core.common.h.m) th).f4298a;
        } else {
            errorCode = ErrorCode.getErrorCode("9999", "", th.getMessage());
        }
        a(z2, nVar, errorCode, asVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, com.anythink.core.common.h.n nVar, AdError adError, as asVar) {
        this.f3112d = false;
        nVar.b(false);
        if (z2) {
            com.anythink.core.common.u.e.a(this.f3109a);
            com.anythink.core.common.u.e.a(10, nVar);
            com.anythink.core.common.u.f.a(nVar, adError);
        }
        a(asVar, adError);
    }

    public final void a(com.anythink.core.common.h.c cVar) {
        List<ca> list;
        if (cVar == null || (list = this.f3116h) == null) {
            return;
        }
        synchronized (list) {
            try {
                if (this.f3116h.size() > 0) {
                    this.f3116h.remove(0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        boolean zL = l();
        ae aeVar = new ae();
        aeVar.a(map);
        aeVar.a(this.f3131w);
        com.anythink.core.common.h.c cVarB = b(context, true, false, aeVar);
        ATAdStatusInfo aTAdStatusInfo = new ATAdStatusInfo(zL, cVarB != null, cVarB != null ? cVarB.p() : null);
        if (this.f3118j != null && System.currentTimeMillis() - this.f3124p > 2000 && a(aTAdStatusInfo, 5) && (h() <= 0 || !aTAdStatusInfo.isReady())) {
            com.anythink.core.common.p.d dVar = this.f3118j;
            dVar.a(context, ((com.anythink.core.common.p.a) dVar).a(), 5);
        }
        return aTAdStatusInfo;
    }

    public final List<ATAdInfo> a(Context context, ae aeVar) {
        List<com.anythink.core.common.h.c> listD = d(context);
        if (listD == null || listD.size() <= 0) {
            return null;
        }
        return a(aeVar, listD);
    }

    private static List<ATAdInfo> a(ae aeVar, List<com.anythink.core.common.h.c> list) {
        com.anythink.core.common.h.n detail;
        com.anythink.core.common.h.n trackingInfo;
        ArrayList arrayList = new ArrayList(3);
        if (list != null && list.size() > 0) {
            Iterator<com.anythink.core.common.h.c> it = list.iterator();
            com.anythink.core.common.h.d dVarB = null;
            while (it.hasNext()) {
                com.anythink.core.common.h.c next = it.next();
                if (aeVar != null) {
                    dVarB = aeVar.b();
                }
                BaseAd baseAdF = next != null ? next.f() : null;
                ATBaseAdAdapter aTBaseAdAdapterE = next != null ? next.e() : null;
                if (baseAdF != null) {
                    if (dVarB != null && (detail = baseAdF.getDetail()) != null) {
                        detail.a(dVarB);
                    }
                    arrayList.add(com.anythink.core.common.d.k.a(baseAdF, aTBaseAdAdapterE, 4));
                } else if (aTBaseAdAdapterE != null) {
                    if (dVarB != null && (trackingInfo = aTBaseAdAdapterE.getTrackingInfo()) != null) {
                        trackingInfo.a(dVarB);
                    }
                    arrayList.add(com.anythink.core.common.d.k.a(aTBaseAdAdapterE, 4));
                }
            }
        }
        return arrayList;
    }

    public final com.anythink.core.common.h.c a(Context context, boolean z2, boolean z3, ae aeVar) {
        a aVar;
        List<com.anythink.core.common.h.c> listA;
        if (a(z3, z2, aeVar) || (aVar = this.f3126r) == null || (listA = aVar.a(context, this.f3110b, z2, z3, false, aeVar)) == null || listA.isEmpty()) {
            return null;
        }
        return listA.get(0);
    }

    private boolean a(boolean z2, boolean z3, ae aeVar) {
        Map<String, Object> mapA = aeVar != null ? aeVar.a() : null;
        com.anythink.core.common.h.d dVarB = aeVar != null ? aeVar.b() : null;
        Context contextG = com.anythink.core.common.d.s.b().g();
        if (contextG == null) {
            contextG = this.f3109a;
        }
        com.anythink.core.e.m mVarE = e(contextG);
        String str = TextUtils.isEmpty(this.f3113e) ? "" : this.f3113e;
        if (mVarE == null) {
            if (z2) {
                com.anythink.core.common.u.f.a(str, this.f3110b, mVarE, 4, "", mapA, aeVar);
            } else if (z3) {
                com.anythink.core.common.u.f.a(str, this.f3110b, false, 4, mVarE, (com.anythink.core.common.h.c) null, (af) null, "", mapA, dVarB, aeVar);
            }
            return true;
        }
        com.anythink.core.a.d.a();
        int iA = com.anythink.core.a.d.a(this.f3110b, mVarE);
        if (iA != -1) {
            if (z2) {
                com.anythink.core.common.u.f.a(str, this.f3110b, mVarE, iA, "", mapA, aeVar);
            } else if (z3) {
                com.anythink.core.common.u.f.a(str, this.f3110b, false, iA, mVarE, (com.anythink.core.common.h.c) null, (af) null, "", mapA, dVarB, aeVar);
            }
            return true;
        }
        com.anythink.core.a.a.a(this.f3109a);
        int iA2 = com.anythink.core.a.a.a(mVarE, this.f3110b);
        if (iA2 == -1) {
            return false;
        }
        if (z2) {
            com.anythink.core.common.u.f.a(str, this.f3110b, mVarE, iA2, "", mapA, aeVar);
        } else if (z3) {
            com.anythink.core.common.u.f.a(str, this.f3110b, false, iA2, mVarE, (com.anythink.core.common.h.c) null, (af) null, "", mapA, dVarB, aeVar);
        }
        return true;
    }

    private void a(String str, com.anythink.core.common.d.a aVar) {
        com.anythink.core.common.p.c cVar = this.f3117i;
        if (cVar != null) {
            cVar.a(str, aVar);
        }
    }

    public final void a(as asVar, AdError adError) {
        n nVar = this.f3115g;
        if (nVar != null) {
            nVar.a(1, asVar, (ce) null, adError);
        }
    }

    public final boolean a(ATAdStatusInfo aTAdStatusInfo, int i2) {
        com.anythink.core.e.m mVarE = e(com.anythink.core.common.d.s.b().g());
        if (mVarE == null) {
            return false;
        }
        if ((h() >= mVarE.r() && aTAdStatusInfo != null && aTAdStatusInfo.isReady()) || ATAdxSetting.getInstance().isAdxNetworkMode(this.f3110b)) {
            return false;
        }
        if (i2 == 6 || i2 == 18) {
            int iG = mVarE.g();
            if (iG != -1) {
                if (iG == 1) {
                    return false;
                }
                if (i2 == 6 && iG == 2) {
                    return true;
                }
                return i2 == 18 && iG == 3;
            }
            if (i2 == 18) {
                return false;
            }
        }
        if (!B()) {
            return b(mVarE);
        }
        if (a(i2, mVarE.bz())) {
            return true;
        }
        return b(mVarE) && (i2 == 5 || i2 == 6 || i2 == 7);
    }

    private boolean a(int i2, List<String> list) {
        com.anythink.core.common.p.d dVar = this.f3118j;
        if (dVar != null) {
            return dVar.a(i2, list);
        }
        return true;
    }

    public final void a(AdError adError) {
        com.anythink.core.common.p.d dVar = this.f3118j;
        if (dVar != null) {
            dVar.a(adError, this.f3114f, a((ATAdStatusInfo) null, 4));
        }
    }

    private static String a(com.anythink.core.common.h.x xVar) {
        return xVar.f4481a + xVar.f4485e + xVar.f4490j + System.currentTimeMillis();
    }

    public static String a(String str, String str2, String str3) {
        return str + str2 + str3 + System.currentTimeMillis();
    }

    public final List<ATAdInfo> a(Context context) {
        List<com.anythink.core.common.h.c> listD = null;
        if (v.a().b()) {
            com.anythink.core.e.m mVarE = e(context);
            if (mVarE != null && v.a().a(this.f3110b)) {
                return null;
            }
            if (v.a().a(mVarE)) {
                String strV = mVarE.v();
                v.a();
                f fVarB = v.b(strV, String.valueOf(mVarE.ap()));
                ae aeVar = new ae();
                com.anythink.core.common.h.d dVar = new com.anythink.core.common.h.d();
                if (fVarB != null) {
                    a(dVar, this.f3110b, mVarE);
                    aeVar.a(dVar);
                    aeVar.a(fVarB.f3131w);
                    listD = fVarB.d(context);
                }
                List<com.anythink.core.common.h.c> listD2 = d(context);
                if (listD == null) {
                    return a(aeVar, listD2);
                }
                if (listD2 != null && listD2.size() != 0) {
                    listD2.addAll(listD);
                    Collections.sort(listD2, new AnonymousClass9());
                    return a(aeVar, listD2);
                }
                return a(aeVar, listD);
            }
        }
        return a(context, (ae) null);
    }

    public static void b(com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar) {
        com.anythink.core.a.d.a();
        int iA = com.anythink.core.a.d.a(nVar.aQ(), mVar);
        if (iA != -1) {
            nVar.L(2);
            String str = ErrorCode.inPacingError;
            if (iA != 3) {
                if (iA == 11) {
                    str = ErrorCode.inPacingError_Global;
                } else if (iA == 12) {
                    str = ErrorCode.inPacingError_Format;
                }
            }
            throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(str, "", ""), "Pacing.");
        }
    }

    private void a(Context context, String str, String str2, as asVar, com.anythink.core.common.d.a aVar, f fVar, com.anythink.core.e.m mVar) {
        String strAR;
        String strV = mVar.v();
        com.anythink.core.common.h.d dVar = new com.anythink.core.common.h.d();
        a(dVar, str2, mVar);
        asVar.f3817i = dVar;
        com.anythink.core.common.d.a[] aVarArr = {aVar};
        if (mVar.z() == 1) {
            com.anythink.core.common.h.c cVarB = b(context, strV, str, asVar);
            if (cVarB != null) {
                String strA = com.anythink.core.common.v.o.a(context);
                asVar.f3809a = strA;
                aa.a("Shared", "placementId:" + str2 + ";result_callback:success;");
                com.anythink.core.common.h.n nVarI = cVarB.i();
                if (nVarI != null) {
                    strAR = nVarI.aR();
                } else {
                    strAR = "";
                }
                com.anythink.core.common.u.f.a(str2, strV, nVarI, str, strA, mVar, true, "1", "2", strAR);
                com.anythink.core.common.d.a aVar2 = aVarArr[0];
                if (aVar2 != null) {
                    aVar2.onAdLoaded();
                }
                aVarArr[0] = null;
            } else {
                v.a().b(strV, asVar.b());
            }
            fVar.a(context, str, str2, asVar, new AnonymousClass7(aVarArr, str2, strV, str, asVar, mVar));
            return;
        }
        fVar.a(context, str, str2, asVar, new AnonymousClass8(str2, strV, str, asVar, mVar, aVarArr, context));
    }

    private static boolean b(com.anythink.core.e.m mVar) {
        return com.anythink.core.common.b.e.b(mVar, mVar.an() == 1);
    }

    public final com.anythink.core.common.h.c b(Context context, boolean z2, boolean z3, ae aeVar) {
        if (v.a().b()) {
            com.anythink.core.e.m mVarE = e(context);
            if (mVarE != null && v.a().a(this.f3110b)) {
                return null;
            }
            if (mVarE != null && v.a().a(mVarE)) {
                return a(context, z2, z3, aeVar, this, mVarE);
            }
        }
        return a(context, z2, z3, aeVar);
    }

    public final List<com.anythink.core.common.h.c> b(Context context) {
        com.anythink.core.e.m mVarE;
        List<com.anythink.core.common.h.c> listC;
        try {
            List<com.anythink.core.common.h.c> listC2 = c(context);
            ArrayList arrayList = new ArrayList();
            if (listC2 != null) {
                arrayList.addAll(listC2);
            }
            if (v.a().b() && (mVarE = e(context)) != null && v.a().a(mVarE)) {
                String strV = mVarE.v();
                int iAp = mVarE.ap();
                v.a();
                f fVarB = v.b(strV, String.valueOf(iAp));
                if (fVarB != null && (listC = fVarB.c(context)) != null && !listC.isEmpty()) {
                    arrayList.addAll(listC);
                }
            }
            return arrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private com.anythink.core.common.h.c a(Context context, boolean z2, boolean z3, ae aeVar, f fVar, com.anythink.core.e.m mVar) {
        com.anythink.core.common.h.c cVarA;
        boolean z4;
        com.anythink.core.common.h.n nVarI;
        String strAR;
        String strValueOf;
        boolean z5;
        String str;
        boolean z6;
        String strV = mVar.v();
        int iAp = mVar.ap();
        v.a();
        f fVarB = v.b(strV, String.valueOf(iAp));
        if (fVarB != null) {
            com.anythink.core.common.h.d dVar = new com.anythink.core.common.h.d();
            a(dVar, this.f3110b, mVar);
            if (aeVar != null) {
                aeVar.a(dVar);
                aeVar.a(fVarB.f3131w);
            }
            cVarA = fVarB.a(context, z2, z3, aeVar);
            if (cVarA != null) {
                ah.a(this.f3110b, mVar, cVarA.i());
            }
        } else {
            cVarA = null;
        }
        com.anythink.core.common.h.c cVarA2 = fVar.a(context, z2, z3, aeVar);
        String strAR2 = "";
        if (cVarA2 == null) {
            z4 = false;
            nVarI = null;
            strAR = "";
            strValueOf = strAR;
        } else {
            nVarI = cVarA2.i();
            if (nVarI == null) {
                nVarI = null;
                strAR = "";
                strValueOf = strAR;
            } else {
                strAR = nVarI.aR();
                strValueOf = String.valueOf(nVarI.V());
            }
            z4 = true;
        }
        if (cVarA != null) {
            com.anythink.core.common.h.n nVarI2 = cVarA.i();
            if (nVarI2 != null) {
                strAR2 = nVarI2.aR();
            }
            z5 = false;
            str = strV;
            z6 = true;
        } else {
            if (aeVar != null && aeVar.e()) {
                v.a().b(strV, fVar.f3131w);
                v.a().a(mVar, 17, fVar.f3132x, nVarI);
            }
            z5 = false;
            str = strV;
            z6 = false;
        }
        com.anythink.core.common.h.c cVar = (cVarA == null || (cVarA2 != null && com.anythink.core.common.v.k.a(cVarA.o(), cVarA2.o()) >= 0)) ? cVarA2 : cVarA;
        com.anythink.core.common.u.f.a(this.f3110b, str, mVar, cVar != null ? cVar.i() : null, (z4 || z6) ? true : z5, z4, z6, strAR, strAR2, strValueOf);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.anythink.core.common.h.c b(Context context, String str, String str2, as asVar) {
        v.a();
        f fVarB = v.b(str, str2);
        if (fVarB == null) {
            return null;
        }
        ae aeVar = new ae();
        aeVar.a(asVar.f3815g);
        aeVar.a(asVar.f3817i);
        aeVar.a(asVar.b());
        return fVarB.a(context, true, false, aeVar);
    }

    private static com.anythink.core.e.m b(boolean z2, Map<String, Object> map) {
        if (!z2 && map != null) {
            Object obj = map.get(CoreDebuggerManager.f8620a);
            if (obj instanceof com.anythink.core.e.m) {
                return (com.anythink.core.e.m) obj;
            }
        }
        return null;
    }

    public final void b(Map<String, Object> map) {
        synchronized (this.f3133y) {
            E().a(com.anythink.core.common.v.i.a(map));
        }
    }

    public final String b(int i2) {
        return E().c(String.valueOf(i2));
    }

    private void b(String str, String str2) {
        E().a(this.f3110b, str, str2);
    }

    public final void b(final Context context, final String str, final String str2, final as asVar, final com.anythink.core.common.d.a aVar) {
        int i2 = asVar.f3811c;
        if (i2 == 0 || i2 == 3) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            t.a().a(str2, stackTrace);
            if (!TextUtils.equals(str, "4")) {
                t.a().a(str2, com.anythink.core.common.v.o.a(stackTrace));
            }
        }
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dx, new Runnable() { // from class: com.anythink.core.common.f.6
            @Override // java.lang.Runnable
            public final void run() {
                if (v.a().b()) {
                    com.anythink.core.e.m mVarA = com.anythink.core.e.o.a(context).a(f.this.f3110b);
                    if (mVarA != null && v.a().a(f.this.f3110b)) {
                        com.anythink.core.common.d.a aVar2 = aVar;
                        if (aVar2 != null) {
                            aVar2.onAdLoadFail(ErrorCode.getErrorCode(ErrorCode.sharedPlacementIdError, "", ""));
                            return;
                        }
                        return;
                    }
                    if (v.a().a(mVarA)) {
                        f fVar = f.this;
                        f.a(fVar, context, str, str2, asVar, aVar, fVar, mVarA);
                        return;
                    }
                }
                f.this.a(context, str, str2, asVar, aVar);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v58 */
    public static /* synthetic */ void b(f fVar, Context context, String str, String str2, com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar, as asVar) {
        boolean z2;
        boolean z3;
        g gVar;
        boolean z4;
        by byVar;
        com.anythink.core.common.h.c cVarA;
        boolean z5;
        long jBM;
        int i2;
        bs bsVar;
        ac acVar;
        boolean z6;
        com.anythink.core.e.m mVar2;
        boolean z7;
        List<by> list;
        g gVar2;
        com.anythink.core.common.a.c cVar;
        Map<String, cc> map;
        com.anythink.core.e.m mVar3 = mVar;
        com.anythink.core.common.u.f.a("1", nVar, str2, str, "", 0, mVar3.ap(), 0L);
        ce ceVar = new ce(asVar, mVar3);
        ah.a(nVar, ceVar);
        try {
            try {
            } catch (Throwable th) {
                th = th;
                z3 = true;
            }
        } catch (com.anythink.core.common.h.m e2) {
            e = e2;
            z2 = true;
        }
        try {
            if (mVar3.bk()) {
                com.anythink.core.a.b.a(fVar.f3109a).a(fVar.f3110b, mVar3);
                a(mVar, nVar);
                b(mVar, nVar);
                br brVarA = com.anythink.core.common.v.ac.a(mVar, nVar);
                com.anythink.core.common.h.n nVarC = brVarA.c();
                if (brVarA.b() == 0) {
                    try {
                        nVarC.L(5);
                        if (brVarA.a().E() == 1) {
                            throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfigInDebugerMode, "", ""), "No Adsource.");
                        }
                        throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfig, "", ""), "No Adsource.");
                    } catch (Throwable th2) {
                        th = th2;
                        z3 = true;
                        fVar.a(z3, nVar, th, asVar);
                        return;
                    }
                }
                if (brVarA.i()) {
                    boolean zK = brVarA.k();
                    ArrayList arrayList = new ArrayList(1);
                    com.anythink.core.common.v.ac.b(brVarA, arrayList);
                    List<by> listD = brVarA.d();
                    if (listD != null && !listD.isEmpty()) {
                        com.anythink.core.common.v.ac.a(mVar3, brVarA.c(), listD);
                    }
                    List<by> listA = com.anythink.core.common.v.ac.a(brVarA, brVarA.d());
                    fVar.f3126r.b(str);
                    boolean z8 = arrayList.size() > 0;
                    boolean z9 = !z8 && (brVarA.e() == null || brVarA.e().size() == 0);
                    nVar.g(SystemClock.elapsedRealtime());
                    if (z9 && ((listA == null || listA.size() == 0) && ((brVarA.f() == null || brVarA.f().size() == 0) && ((brVarA.g() == null || brVarA.g().size() == 0) && (brVarA.h() == null || brVarA.h().size() == 0))))) {
                        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.noAvailableAdsource, "", "");
                        nVar.L(6);
                        fVar.a(true, nVar, errorCode, asVar);
                        fVar.f3112d = false;
                        return;
                    }
                    com.anythink.core.a.c.a();
                    com.anythink.core.a.c.b(fVar.f3109a, str, mVar3);
                    Map<String, Object> mapR = fVar.r();
                    w wVar = fVar.f3129u;
                    cc ccVarRemove = (wVar == null || (map = wVar.f8360a) == null) ? null : map.remove(str);
                    bs bsVarA = u.a(fVar.f3109a).a(str, str2);
                    ac acVarA = d.a().a(str);
                    ac acVar2 = new ac(str2);
                    boolean z10 = z8;
                    List<by> list2 = listA;
                    d.a().a(fVar.f3110b, acVar2);
                    nVar.b(true);
                    nVar.B(ceVar.f());
                    g gVar3 = new g(asVar.a(), fVar);
                    gVar3.f3436h = mapR;
                    gVar3.f3437i = nVar;
                    gVar3.a(asVar);
                    gVar3.a(asVar.f3812d);
                    fVar.f3113e = str2;
                    fVar.f3122n = nVar.aJ();
                    List<by> listA2 = com.anythink.core.e.v.a(mVar3, mVar3.Z());
                    if (listA2.size() > 0) {
                        gVar = gVar3;
                        z4 = false;
                        byVar = listA2.get(0);
                    } else {
                        gVar = gVar3;
                        z4 = false;
                        byVar = null;
                    }
                    if (byVar != null) {
                        for (by byVar2 : brVarA.e()) {
                            if (!byVar2.G().equals(byVar.G()) || (cVar = fVar.f3127s) == null) {
                                bsVar = bsVarA;
                                acVar = acVarA;
                                z6 = z9;
                                mVar2 = mVar3;
                                z7 = z10;
                                list = list2;
                                gVar2 = gVar;
                                z4 = false;
                            } else {
                                z6 = z9;
                                bsVar = bsVarA;
                                acVar = acVarA;
                                mVar2 = mVar3;
                                z7 = z10;
                                list = list2;
                                g gVar4 = gVar;
                                c.a aVarA = cVar.a(context, str, str2, byVar2, mVar2, mapR, fVar.f3131w);
                                if (aVarA != null) {
                                    by byVarD = aVarA.d();
                                    if (com.anythink.core.common.v.ac.a(0, nVar, byVarD, (z) null) != null) {
                                        fVar.f3127s.a(str, byVarD.G());
                                        gVar2 = gVar4;
                                    } else {
                                        gVar2 = gVar4;
                                        gVar2.f3416J = aVarA;
                                    }
                                    z4 = false;
                                    nVar.e(SystemClock.elapsedRealtime());
                                    gVar = gVar2;
                                    mVar3 = mVar2;
                                    list2 = list;
                                    z10 = z7;
                                    z9 = z6;
                                    bsVarA = bsVar;
                                    acVarA = acVar;
                                } else {
                                    z4 = false;
                                    gVar2 = gVar4;
                                }
                            }
                            gVar = gVar2;
                            mVar3 = mVar2;
                            list2 = list;
                            z10 = z7;
                            z9 = z6;
                            bsVarA = bsVar;
                            acVarA = acVar;
                        }
                    }
                    bs bsVar2 = bsVarA;
                    ac acVar3 = acVarA;
                    boolean z11 = z9;
                    com.anythink.core.e.m mVar4 = mVar3;
                    boolean z12 = z10;
                    List<by> list3 = list2;
                    g gVar5 = gVar;
                    com.anythink.core.common.u.e.a(fVar.f3109a);
                    com.anythink.core.common.u.e.a(10, nVar);
                    Double[] dArr = new Double[1];
                    Boolean boolBo = mVar4.bo();
                    if ((brVarA.j() || (boolBo != null && boolBo.booleanValue())) && (cVarA = fVar.f3126r.a(context, str)) != null) {
                        dArr[z4 ? 1 : 0] = Double.valueOf(cVarA.n());
                    }
                    com.anythink.core.common.b.c cVarA2 = com.anythink.core.common.b.f.a().a(mVar4);
                    boolean z13 = (cVarA2 == null || !cVarA2.f()) ? z4 ? 1 : 0 : true;
                    boolean zBL = mVar4.bL();
                    if (z13 || zBL) {
                        z5 = z4 ? 1 : 0;
                        z4 = true;
                    } else {
                        z5 = z4 ? 1 : 0;
                    }
                    if (!z4 || z13) {
                        jBM = -1;
                    } else {
                        Long biddingWaitMaxTime = ATAdRealTimeFilter.getInstance().getBiddingWaitMaxTime();
                        if (biddingWaitMaxTime != null) {
                            jBM = biddingWaitMaxTime.longValue();
                        } else {
                            jBM = mVar4.bM() > 0 ? mVar4.bM() : 5000L;
                        }
                    }
                    com.anythink.core.common.w.i iVar = new com.anythink.core.common.w.i(list3);
                    boolean z14 = z4;
                    com.anythink.core.common.w.h hVar = new com.anythink.core.common.w.h();
                    hVar.f8508a = str;
                    hVar.f8509b = str2;
                    hVar.f8510c = ceVar;
                    hVar.f8511d = list3;
                    hVar.f8512e = brVarA.h();
                    hVar.f8516i = z11;
                    hVar.f8517j = nVar.aM();
                    hVar.f8518k = ccVarRemove;
                    hVar.f8520m = bsVar2;
                    hVar.f8519l = iVar;
                    hVar.f8522o = acVar3;
                    hVar.f8521n = acVar2;
                    hVar.f8513f = brVarA.f();
                    hVar.f8514g = brVarA.g();
                    Double d2 = dArr[z5];
                    hVar.f8515h = d2 != null ? d2.doubleValue() : 0.0d;
                    hVar.f8523p = brVarA.e();
                    hVar.f8524q = z13;
                    gVar5.a(hVar);
                    fVar.f3111c.put(str2, gVar5);
                    com.anythink.core.common.h.h hVar2 = asVar.f3821m;
                    if (hVar2 != null) {
                        hVar2.h(System.currentTimeMillis());
                    }
                    com.anythink.core.common.u.f.a(asVar.f3821m, nVar);
                    h hVar3 = new h(str, gVar5);
                    gVar5.a(hVar3);
                    hVar3.a(mVar4, zK);
                    hVar3.a(fVar.f3119k);
                    if (z11 || !z14) {
                        hVar3.a();
                    }
                    fVar.f3112d = z5;
                    if (!z11) {
                        List<by> listE = brVarA.e();
                        try {
                            com.anythink.core.common.h.a aVar = new com.anythink.core.common.h.a();
                            aVar.f3568b = context;
                            aVar.f3569c = asVar;
                            aVar.f3570d = str2;
                            aVar.f3571e = str;
                            aVar.f3572f = mVar4.ap();
                            aVar.f3573g = mVar4.aa();
                            aVar.f3574h = mVar4.W();
                            aVar.f3575i = mVar4.F();
                            i.a();
                            aVar.f3578l = i.a(mVar4, z12);
                            i.a();
                            aVar.f3581o = i.a(mVar4);
                            i.a();
                            aVar.f3582p = i.b(mVar4);
                            aVar.f3576j = listE;
                            aVar.f3580n = ceVar;
                            aVar.f3585s = nVar;
                            aVar.f3588v = ccVarRemove;
                            aVar.f3589w = bsVar2;
                            aVar.f3590x = acVar3;
                            aVar.f3583q = fVar.r();
                            aVar.f3579m = z12;
                            if (asVar.f3811c == 8) {
                                aVar.f3586t = 7;
                            }
                            aVar.f3591y = iVar;
                            aVar.f3557A = asVar.f3820l;
                            aVar.f3558B = d.a().b(fVar.f3110b);
                            if (boolBo == null || !boolBo.booleanValue()) {
                                i2 = 0;
                            } else {
                                i2 = 0;
                                Double d3 = dArr[0];
                                if (d3 != null) {
                                    aVar.f3559C = d3.doubleValue();
                                }
                            }
                            aVar.f3560D = (!zK || mVar4.bv() <= 0) ? i2 : mVar4.bv();
                            aVar.f3561E = mVar4.bE();
                            aVar.f3562F = hVar3;
                            aVar.f3565I = cVarA2;
                            aVar.f3563G = z14;
                            aVar.f3564H = jBM;
                            aVar.f3566J = fVar;
                            aVar.f3567K = mVar4.k();
                            com.anythink.core.c.b bVar = new com.anythink.core.c.b(aVar);
                            bVar.a(ATSDK.isNetworkLogDebug());
                            bVar.a(fVar.new AnonymousClass4(ceVar, gVar5));
                        } catch (Throwable th3) {
                            com.anythink.core.common.u.f.b("notifyBiddingFinish error", th3.getMessage() + ", " + com.anythink.core.common.v.p.a(th3.getStackTrace()), com.anythink.core.common.d.s.b().r());
                            gVar5.e();
                        }
                    }
                    int i3 = asVar.f3811c;
                    if (i3 == 0 || i3 == 3) {
                        v.a().a(mVar4, 15, asVar, nVar);
                        return;
                    }
                    return;
                }
                nVarC.L(6);
                AdError errorCode2 = ErrorCode.getErrorCode(ErrorCode.noAvailableAdsource, "", "");
                throw new com.anythink.core.common.h.m(errorCode2, errorCode2.printStackTrace());
            }
            nVar.L(5);
            throw new com.anythink.core.common.h.m(ErrorCode.getErrorCode(ErrorCode.placementAdClose, "", ""), "Strategy is close.");
        } catch (com.anythink.core.common.h.m e3) {
            e = e3;
            z2 = true;
            fVar.a(z2, nVar, e, asVar);
        }
    }

    private List<ATAdInfo> a(Context context, f fVar, com.anythink.core.e.m mVar) {
        List<com.anythink.core.common.h.c> listD;
        String strV = mVar.v();
        v.a();
        f fVarB = v.b(strV, String.valueOf(mVar.ap()));
        ae aeVar = new ae();
        com.anythink.core.common.h.d dVar = new com.anythink.core.common.h.d();
        if (fVarB != null) {
            a(dVar, this.f3110b, mVar);
            aeVar.a(dVar);
            aeVar.a(fVarB.f3131w);
            listD = fVarB.d(context);
        } else {
            listD = null;
        }
        List<com.anythink.core.common.h.c> listD2 = fVar.d(context);
        if (listD == null) {
            return a(aeVar, listD2);
        }
        if (listD2 != null && listD2.size() != 0) {
            listD2.addAll(listD);
            Collections.sort(listD2, new AnonymousClass9());
            return a(aeVar, listD2);
        }
        return a(aeVar, listD);
    }

    private static void a(com.anythink.core.common.h.d dVar, String str, com.anythink.core.e.m mVar) {
        dVar.a(str, mVar.ax(), mVar.ah());
    }

    public final List<ATAdInfo> a(String str, int i2, boolean z2) {
        try {
            if (TextUtils.isEmpty(str) || com.anythink.core.common.d.s.b().g() == null) {
                return null;
            }
            synchronized (E().a()) {
                try {
                    List<ATAdInfo> listA = z2 ? a(com.anythink.core.common.d.s.b().g()) : a(com.anythink.core.common.d.s.b().g(), (ae) null);
                    if (listA != null && !listA.isEmpty()) {
                        if (i2 >= listA.size() - 1) {
                            return null;
                        }
                        ArrayList arrayList = new ArrayList();
                        if (i2 >= 0) {
                            while (true) {
                                i2++;
                                if (i2 >= listA.size()) {
                                    break;
                                }
                                arrayList.add(listA.get(i2));
                            }
                        } else {
                            arrayList.addAll(listA);
                        }
                        return arrayList;
                    }
                    return null;
                } finally {
                }
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void a(int i2) {
        a(i2, 1);
    }

    public final void a(int i2, int i3) {
        a(a(this.f3110b, i2, true), i3);
    }

    public final void a(List<ATAdInfo> list) {
        a(list, 1);
    }

    private void a(List<ATAdInfo> list, int i2) {
        a aVar;
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String sharedPlacementId = null;
        for (ATAdInfo aTAdInfo : list) {
            if (aTAdInfo != null) {
                if (aTAdInfo.getPlacementType() == 2) {
                    if (sharedPlacementId == null) {
                        sharedPlacementId = aTAdInfo.getSharedPlacementId();
                    }
                    arrayList.add(aTAdInfo);
                } else {
                    arrayList2.add(aTAdInfo);
                }
            }
        }
        if (!arrayList2.isEmpty()) {
            this.f3126r.a(this.f3110b, arrayList2, i2);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        com.anythink.core.e.m mVarA = com.anythink.core.e.o.a(com.anythink.core.common.d.s.b().g()).a(this.f3110b);
        String strValueOf = mVarA != null ? String.valueOf(mVarA.ap()) : null;
        if (!TextUtils.isEmpty(strValueOf) && v.a().a(mVarA)) {
            v.a();
            f fVarA = v.a(sharedPlacementId, strValueOf);
            if (fVarA == null || (aVar = fVarA.f3126r) == null) {
                return;
            }
            aVar.a(sharedPlacementId, arrayList, i2);
        }
    }

    public final void a(Map<String, Object> map) {
        if (map != null) {
            try {
                Object obj = map.get("event_type");
                if (obj instanceof Integer) {
                    if (((Integer) obj).intValue() == 1) {
                        com.anythink.core.common.d.q.a(this, this.f3110b, map);
                    } else if (((Integer) obj).intValue() == 2) {
                        com.anythink.core.common.d.q.b(this, this.f3110b, map);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void a(ATAdInfo aTAdInfo) {
        E().a(aTAdInfo);
    }

    public final void a(String str, String str2) {
        E().a(str, str2);
    }

    public final void a(int i2, String str) {
        E().b(String.valueOf(i2), str);
    }

    public final void a(String str, List<com.anythink.core.common.h.c> list) {
        E().a(str, list);
    }

    public static /* synthetic */ com.anythink.core.e.m a(boolean z2, Map map) {
        if (z2 || map == null) {
            return null;
        }
        Object obj = map.get(CoreDebuggerManager.f8620a);
        if (obj instanceof com.anythink.core.e.m) {
            return (com.anythink.core.e.m) obj;
        }
        return null;
    }

    public static /* synthetic */ boolean a(f fVar) {
        return !TextUtils.isEmpty(fVar.f3113e);
    }

    public static /* synthetic */ void a(f fVar, Context context, String str, String str2, com.anythink.core.e.m mVar, as asVar, com.anythink.core.common.h.n nVar, String str3, String str4, int i2) {
        com.anythink.core.e.o.a(context).a(mVar, str, str2, fVar.f3110b, asVar.f3815g, fVar.new AnonymousClass2(nVar, str3, asVar, mVar, str4), i2, false, asVar.b(), true, null);
    }

    public static /* synthetic */ void a(f fVar, Context context, String str, String str2, com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar, as asVar) {
        if (nVar != null) {
            nVar.f(SystemClock.elapsedRealtime());
        }
        com.anythink.core.common.w.b.h hVar = new com.anythink.core.common.w.b.h(context, str, mVar, fVar.new AnonymousClass3(asVar, context, str, str2, mVar, nVar));
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new com.anythink.core.common.w.b.e());
        new com.anythink.core.common.w.b.g(arrayList, hVar, 0).a(hVar);
    }

    public static /* synthetic */ void a(f fVar, Context context, String str, String str2, as asVar, com.anythink.core.common.d.a aVar, f fVar2, com.anythink.core.e.m mVar) {
        String strAR;
        String strV = mVar.v();
        com.anythink.core.common.h.d dVar = new com.anythink.core.common.h.d();
        a(dVar, str2, mVar);
        asVar.f3817i = dVar;
        com.anythink.core.common.d.a[] aVarArr = {aVar};
        if (mVar.z() == 1) {
            com.anythink.core.common.h.c cVarB = b(context, strV, str, asVar);
            if (cVarB != null) {
                String strA = com.anythink.core.common.v.o.a(context);
                asVar.f3809a = strA;
                aa.a("Shared", "placementId:" + str2 + ";result_callback:success;");
                com.anythink.core.common.h.n nVarI = cVarB.i();
                if (nVarI != null) {
                    strAR = nVarI.aR();
                } else {
                    strAR = "";
                }
                com.anythink.core.common.u.f.a(str2, strV, nVarI, str, strA, mVar, true, "1", "2", strAR);
                com.anythink.core.common.d.a aVar2 = aVarArr[0];
                if (aVar2 != null) {
                    aVar2.onAdLoaded();
                }
                aVarArr[0] = null;
            } else {
                v.a().b(strV, asVar.b());
            }
            fVar2.a(context, str, str2, asVar, fVar.new AnonymousClass7(aVarArr, str2, strV, str, asVar, mVar));
            return;
        }
        fVar2.a(context, str, str2, asVar, fVar.new AnonymousClass8(str2, strV, str, asVar, mVar, aVarArr, context));
    }
}
