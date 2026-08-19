package com.meishu.sdk.core.loader.strategy;

import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.loader.cache.CacheManager;
import com.meishu.sdk.core.loader.concurrent.g;
import com.meishu.sdk.core.loader.serverbidding.S2sbResultBean;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.h0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.u0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.bd.banner.BDBannerAdLoader;
import com.qq.e.comm.pi.IBidding;
import com.sigmob.windad.WindAds;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* loaded from: classes4.dex */
public class e implements com.meishu.sdk.core.loader.strategy.a {

    /* renamed from: A, reason: collision with root package name */
    public List<Integer> f31649A;

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.core.loader.c f31650a;

    /* renamed from: b, reason: collision with root package name */
    public MeishuAdInfo f31651b;

    /* renamed from: g, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.loadbean.a> f31656g;

    /* renamed from: i, reason: collision with root package name */
    public Map<String, Object> f31658i;

    /* renamed from: j, reason: collision with root package name */
    public volatile boolean f31659j;

    /* renamed from: k, reason: collision with root package name */
    public g f31660k;

    /* renamed from: m, reason: collision with root package name */
    public long f31662m;

    /* renamed from: q, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.loadbean.a> f31666q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f31667r;

    /* renamed from: s, reason: collision with root package name */
    public long f31668s;

    /* renamed from: t, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.d> f31669t;

    /* renamed from: u, reason: collision with root package name */
    public volatile boolean f31670u;

    /* renamed from: v, reason: collision with root package name */
    public volatile boolean f31671v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f31672w;

    /* renamed from: x, reason: collision with root package name */
    public volatile boolean f31673x;

    /* renamed from: y, reason: collision with root package name */
    public int f31674y;

    /* renamed from: z, reason: collision with root package name */
    public List<Integer> f31675z;

    /* renamed from: c, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.cache.a> f31652c = new LinkedList();

    /* renamed from: d, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.d> f31653d = Collections.synchronizedList(new ArrayList());

    /* renamed from: e, reason: collision with root package name */
    public List<SdkAdInfo> f31654e = Collections.synchronizedList(new ArrayList());

    /* renamed from: f, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.loadbean.a> f31655f = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public LinkedList<com.meishu.sdk.core.loader.loadbean.a> f31657h = new LinkedList<>();

    /* renamed from: l, reason: collision with root package name */
    public Handler f31661l = new Handler();

    /* renamed from: n, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.loadbean.a> f31663n = Collections.synchronizedList(new ArrayList());

    /* renamed from: o, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.loadbean.a> f31664o = Collections.synchronizedList(new ArrayList());

    /* renamed from: p, reason: collision with root package name */
    public List<com.meishu.sdk.core.loader.loadbean.a> f31665p = Collections.synchronizedList(new ArrayList());

    public class a implements Comparator<com.meishu.sdk.core.loader.loadbean.a> {
        public a(e eVar) {
        }

        @Override // java.util.Comparator
        public int compare(com.meishu.sdk.core.loader.loadbean.a aVar, com.meishu.sdk.core.loader.loadbean.a aVar2) {
            return aVar2.a() - aVar.a();
        }
    }

    public class b extends l {
        public b() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            g gVar = e.this.f31660k;
            if (gVar != null) {
                com.meishu.sdk.core.loader.concurrent.e eVar = (com.meishu.sdk.core.loader.concurrent.e) gVar;
                if (eVar.f31627g) {
                    return;
                }
                eVar.f31627g = true;
                eVar.a(false);
            }
        }
    }

    public class c implements Comparator<Integer> {
        public c(e eVar) {
        }

        @Override // java.util.Comparator
        public int compare(Integer num, Integer num2) {
            return num2.intValue() - num.intValue();
        }
    }

    public class d implements Comparator<Integer> {
        public d(e eVar) {
        }

        @Override // java.util.Comparator
        public int compare(Integer num, Integer num2) {
            return num2.intValue() - num.intValue();
        }
    }

    /* renamed from: com.meishu.sdk.core.loader.strategy.e$e, reason: collision with other inner class name */
    public class C0654e implements Comparator<com.meishu.sdk.core.loader.loadbean.a> {
        public C0654e(e eVar) {
        }

        @Override // java.util.Comparator
        public int compare(com.meishu.sdk.core.loader.loadbean.a aVar, com.meishu.sdk.core.loader.loadbean.a aVar2) {
            return aVar2.a() - aVar.a();
        }
    }

    public e(com.meishu.sdk.core.loader.c cVar, MeishuAdInfo meishuAdInfo) {
        Collections.synchronizedList(new ArrayList());
        this.f31666q = Collections.synchronizedList(new ArrayList());
        this.f31668s = 10000L;
        this.f31669t = Collections.synchronizedList(new ArrayList());
        this.f31674y = 1;
        this.f31675z = new ArrayList();
        this.f31649A = new ArrayList();
        this.f31650a = cVar;
        this.f31651b = meishuAdInfo;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042 A[Catch: Exception -> 0x0051, TryCatch #2 {Exception -> 0x0051, blocks: (B:17:0x0035, B:21:0x0046, B:20:0x0042), top: B:30:0x0035 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.meishu.sdk.core.loader.strategy.e r12, com.meishu.sdk.core.loader.loadbean.a r13) {
        /*
            r12.getClass()
            r0 = 0
            r2 = 10000(0x2710, double:4.9407E-320)
            com.meishu.sdk.core.domain.MeishuAdInfo r4 = r12.f31651b     // Catch: java.lang.Exception -> L18
            long r4 = r4.getAll_timeout()     // Catch: java.lang.Exception -> L18
            int r4 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r4 <= 0) goto L1b
            com.meishu.sdk.core.domain.MeishuAdInfo r4 = r12.f31651b     // Catch: java.lang.Exception -> L18
            long r4 = r4.getAll_timeout()     // Catch: java.lang.Exception -> L18
            goto L1c
        L18:
            r4 = move-exception
            r5 = r2
            goto L31
        L1b:
            r4 = r2
        L1c:
            com.meishu.sdk.core.domain.MeishuAdInfo r6 = r12.f31651b     // Catch: java.lang.Exception -> L2d
            long r6 = r6.getOnce_timeout()     // Catch: java.lang.Exception -> L2d
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 <= 0) goto L35
            com.meishu.sdk.core.domain.MeishuAdInfo r6 = r12.f31651b     // Catch: java.lang.Exception -> L2d
            long r2 = r6.getOnce_timeout()     // Catch: java.lang.Exception -> L2d
            goto L35
        L2d:
            r6 = move-exception
            r10 = r4
            r4 = r6
            r5 = r10
        L31:
            r4.printStackTrace()
            r4 = r5
        L35:
            long r6 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Exception -> L51
            long r8 = r12.f31662m     // Catch: java.lang.Exception -> L51
            long r6 = r6 - r8
            long r4 = r4 - r6
            int r6 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r6 > 0) goto L42
            goto L46
        L42:
            long r0 = java.lang.Math.min(r4, r2)     // Catch: java.lang.Exception -> L51
        L46:
            android.os.Handler r2 = r12.f31661l     // Catch: java.lang.Exception -> L51
            com.meishu.sdk.core.loader.strategy.c r3 = new com.meishu.sdk.core.loader.strategy.c     // Catch: java.lang.Exception -> L51
            r3.<init>(r12, r13)     // Catch: java.lang.Exception -> L51
            r2.postDelayed(r3, r0)     // Catch: java.lang.Exception -> L51
            goto L55
        L51:
            r12 = move-exception
            r12.printStackTrace()
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.loader.strategy.e.a(com.meishu.sdk.core.loader.strategy.e, com.meishu.sdk.core.loader.loadbean.a):void");
    }

    public static void b(e eVar, com.meishu.sdk.core.loader.loadbean.a aVar) {
        eVar.getClass();
        try {
            SdkAdInfo sdkAdInfo = aVar.f31638a;
            com.meishu.sdk.core.loader.cache.a aVar2 = new com.meishu.sdk.core.loader.cache.a();
            aVar2.f31609d = aVar.f31639b;
            aVar2.f31613h = eVar.f31651b;
            sdkAdInfo.setCache(true);
            aVar2.f31607b = sdkAdInfo;
            aVar2.f31606a = eVar.f31651b.getCacheKey();
            aVar2.f31608c = aVar.a();
            eVar.f31652c.add(aVar2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x0012, B:10:0x0026, B:12:0x002d, B:17:0x003a), top: B:26:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(com.meishu.sdk.core.loader.strategy.e r4, com.meishu.sdk.core.loader.loadbean.a r5) {
        /*
            monitor-enter(r4)
            com.meishu.sdk.core.domain.MeishuAdInfo r0 = r4.f31651b     // Catch: java.lang.Throwable -> L38
            int r0 = r0.getCache()     // Catch: java.lang.Throwable -> L38
            r1 = 0
            if (r0 > 0) goto L3a
            java.util.List<com.meishu.sdk.core.loader.loadbean.a> r0 = r4.f31663n     // Catch: java.lang.Throwable -> L38
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L38
            if (r0 <= 0) goto L3a
            java.util.List<com.meishu.sdk.core.loader.loadbean.a> r0 = r4.f31663n     // Catch: java.lang.Throwable -> L38
            r4.a(r0)     // Catch: java.lang.Throwable -> L38
            java.util.List<com.meishu.sdk.core.loader.loadbean.a> r0 = r4.f31663n     // Catch: java.lang.Throwable -> L38
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L38
            com.meishu.sdk.core.loader.loadbean.a r0 = (com.meishu.sdk.core.loader.loadbean.a) r0     // Catch: java.lang.Throwable -> L38
            int r2 = r0.f31642e     // Catch: java.lang.Throwable -> L38
            int r3 = r5.f31642e     // Catch: java.lang.Throwable -> L38
            if (r2 <= r3) goto L26
            goto L48
        L26:
            int r2 = r5.a()     // Catch: java.lang.Throwable -> L38
            r3 = -1
            if (r2 == r3) goto L3a
            int r0 = r0.a()     // Catch: java.lang.Throwable -> L38
            int r2 = r5.a()     // Catch: java.lang.Throwable -> L38
            if (r0 < r2) goto L3a
            goto L48
        L38:
            r5 = move-exception
            goto L4d
        L3a:
            java.lang.String r0 = ""
            com.meishu.sdk.core.domain.SdkAdInfo r5 = r5.f31638a     // Catch: java.lang.Throwable -> L38
            java.lang.String r5 = r5.getS2sb()     // Catch: java.lang.Throwable -> L38
            boolean r5 = r0.equals(r5)     // Catch: java.lang.Throwable -> L38
            if (r5 == 0) goto L4b
        L48:
            monitor-exit(r4)
            r4 = 1
            return r4
        L4b:
            monitor-exit(r4)
            return r1
        L4d:
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.loader.strategy.e.c(com.meishu.sdk.core.loader.strategy.e, com.meishu.sdk.core.loader.loadbean.a):boolean");
    }

    public final List<com.meishu.sdk.core.loader.loadbean.a> d() {
        List<WeakReference<com.meishu.sdk.core.loader.cache.a>> cacheListByKey;
        ArrayList arrayList = new ArrayList();
        try {
            String cacheKey = this.f31651b.getCacheKey();
            if (this.f31651b.getCache() > 0 && (cacheListByKey = CacheManager.INSTANCE.getCacheListByKey(cacheKey)) != null && cacheListByKey.size() > 0) {
                Iterator<WeakReference<com.meishu.sdk.core.loader.cache.a>> it = cacheListByKey.iterator();
                while (it.hasNext()) {
                    com.meishu.sdk.core.loader.cache.a aVar = it.next().get();
                    if (aVar != null && aVar.a()) {
                        com.meishu.sdk.core.loader.loadbean.a aVar2 = new com.meishu.sdk.core.loader.loadbean.a();
                        aVar2.f31638a = aVar.f31607b;
                        aVar2.f31639b = aVar.f31609d;
                        aVar2.f31643f = aVar.f31608c;
                        synchronized (aVar2) {
                            aVar2.f31640c = 2;
                        }
                        aVar2.f31644g = aVar.f31610e;
                        aVar2.f31645h = true;
                        arrayList.add(aVar2);
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            th.printStackTrace();
            return arrayList;
        }
    }

    public final synchronized void e() {
        SdkHandler.runOnMainThread(new b());
    }

    public final void f() {
        if (this.f31666q.size() == 0 && this.f31663n.size() == 0) {
            LogUtil.d("PriceFirstStrategy", "handleFinish loadFinish=true");
            this.f31659j = true;
            this.f31665p.clear();
            e();
            return;
        }
        i();
        if (!this.f31659j) {
            this.f31666q.addAll(this.f31663n);
            a(this.f31666q);
        }
        g();
        c();
    }

    public final synchronized void g() {
        try {
            if (!this.f31670u) {
                if (this.f31666q.size() > 0) {
                    com.meishu.sdk.core.loader.loadbean.a aVar = this.f31666q.get(0);
                    if (this.f31651b.getCache() <= 0 || (this.f31651b.getCache() > 0 && !this.f31667r)) {
                        if (this.f31660k != null) {
                            if (!aVar.f31644g || this.f31659j) {
                                if (this.f31651b.getCache() <= 0) {
                                    LogUtil.e("PriceFirstStrategy", "handleReturnAd, loadFinished=true");
                                    this.f31659j = true;
                                    this.f31665p.clear();
                                }
                                this.f31670u = true;
                                a(aVar.f31638a);
                                this.f31657h.clear();
                                g gVar = this.f31660k;
                                Object obj = aVar.f31639b;
                                SdkAdInfo sdkAdInfo = aVar.f31638a;
                                com.meishu.sdk.core.loader.concurrent.e eVar = (com.meishu.sdk.core.loader.concurrent.e) gVar;
                                MeishuAdInfo meishuAdInfo = eVar.f31622b;
                                String accept_id = sdkAdInfo.getAccept_id();
                                if (meishuAdInfo != null) {
                                    try {
                                        meishuAdInfo.setEventUrl(i0.a(meishuAdInfo.getSourceEventUrl(), accept_id));
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                if (!eVar.f31627g) {
                                    eVar.f31627g = true;
                                    com.meishu.sdk.core.loader.a.a(eVar.f31625e.getContext(), i0.a(i0.a(sdkAdInfo.getFinalRsp().replace("__TIMEOUT__", String.valueOf(0)), System.currentTimeMillis() - eVar.f31625e.startLoadTime)));
                                    if (eVar.f31625e.getLoaderListener() != null) {
                                        StringBuilder sbA = com.meishu.sdk.activity.a.a("onFinalAdLoaded: ");
                                        sbA.append(sdkAdInfo.getSdk());
                                        sbA.append(",group：");
                                        sbA.append(sdkAdInfo.getGroup());
                                        LogUtil.d("ConCurrentManager", sbA.toString());
                                        eVar.f31625e.getLoaderListener().onAdLoaded(obj);
                                    }
                                }
                                a();
                            } else if (this.f31660k != null) {
                                a(aVar.f31638a);
                                this.f31670u = true;
                                e();
                            }
                        }
                    }
                } else if (this.f31660k != null) {
                    this.f31670u = true;
                    LogUtil.e("PriceFirstStrategy", "无广告返回，onAllError");
                    e();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void h() {
        if (!this.f31659j) {
            try {
                if (this.f31673x) {
                    f();
                    return;
                }
                LinkedList<com.meishu.sdk.core.loader.loadbean.a> linkedList = this.f31657h;
                if (linkedList != null && linkedList.size() > 0) {
                    com.meishu.sdk.core.loader.loadbean.a aVarRemoveFirst = this.f31657h.removeFirst();
                    this.f31665p.add(aVarRemoveFirst);
                    ExecutorService executorService = h0.f31906a;
                    h0.b.f31910a.a(new f(aVarRemoveFirst));
                } else if (this.f31665p.size() == 0) {
                    f();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void i() {
        try {
            Iterator it = new ArrayList(this.f31663n).iterator();
            while (it.hasNext()) {
                com.meishu.sdk.core.loader.loadbean.a aVar = (com.meishu.sdk.core.loader.loadbean.a) it.next();
                if (!this.f31659j && c(aVar)) {
                    b(aVar);
                    it.remove();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public class f extends l {

        /* renamed from: a, reason: collision with root package name */
        public com.meishu.sdk.core.loader.loadbean.a f31677a;

        public f(com.meishu.sdk.core.loader.loadbean.a aVar) {
            this.f31677a = aVar;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                com.meishu.sdk.core.loader.loadbean.a aVar = this.f31677a;
                if (aVar == null) {
                    return;
                }
                e.a(e.this, aVar);
                SdkAdInfo sdkAdInfo = this.f31677a.f31638a;
                if (sdkAdInfo == null) {
                    return;
                }
                AdSdk.initSdkIfNot(e.this.f31650a.getContext(), sdkAdInfo);
                e eVar = e.this;
                com.meishu.sdk.core.loader.d dVarCreateDelegate = eVar.f31650a.createDelegate(sdkAdInfo, eVar.f31651b);
                if (dVarCreateDelegate == null) {
                    e.a(e.this, dVarCreateDelegate, this.f31677a, (AdPlatformError) null);
                    return;
                }
                if (e.c(e.this, this.f31677a)) {
                    e.a(e.this, dVarCreateDelegate, this.f31677a, (AdPlatformError) null);
                    return;
                }
                dVarCreateDelegate.setLocalParams(e.this.f31658i);
                e.this.getClass();
                dVarCreateDelegate.setGroupIndex(0);
                dVarCreateDelegate.setConCurrentLoadListener(new a(dVarCreateDelegate));
                if (dVarCreateDelegate instanceof BDBannerAdLoader) {
                    return;
                }
                sdkAdInfo.setLoadTime(SystemClock.uptimeMillis());
                sdkAdInfo.setAlreadyLoaded(true);
                com.meishu.sdk.core.loader.loadbean.a aVar2 = this.f31677a;
                synchronized (aVar2) {
                    aVar2.f31640c = 4;
                }
                dVarCreateDelegate.loadAd();
                e.this.f31669t.add(dVarCreateDelegate);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public class a implements com.meishu.sdk.core.loader.concurrent.f {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ com.meishu.sdk.core.loader.d f31679a;

            public a(com.meishu.sdk.core.loader.d dVar) {
                this.f31679a = dVar;
            }

            @Override // com.meishu.sdk.core.loader.concurrent.f
            public void a(AdPlatformError adPlatformError, int i2) {
                StringBuilder sbA = com.meishu.sdk.activity.a.a("onAdError: ");
                sbA.append(adPlatformError.getPlatform());
                sbA.append("  ");
                sbA.append(adPlatformError.getMessage());
                LogUtil.e("PriceFirstStrategy", sbA.toString());
                try {
                    f fVar = f.this;
                    e.a(e.this, this.f31679a, fVar.f31677a, adPlatformError);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.meishu.sdk.core.loader.concurrent.f
            public void b(Object obj, int i2) {
                try {
                    f fVar = f.this;
                    e.a(e.this, this.f31679a, fVar.f31677a, obj);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.meishu.sdk.core.loader.concurrent.f
            public void onAdExposure() {
                g gVar = e.this.f31660k;
            }

            @Override // com.meishu.sdk.core.loader.concurrent.f
            public void a(Object obj, int i2) {
                try {
                    f fVar = f.this;
                    e eVar = e.this;
                    com.meishu.sdk.core.loader.loadbean.a aVar = fVar.f31677a;
                    synchronized (eVar) {
                        eVar.f31664o.add(aVar);
                        eVar.a();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.meishu.sdk.core.loader.concurrent.f
            public void a(String str, int i2, int i3) {
                LogUtil.e("PriceFirstStrategy", "onRenderFail :" + str);
                try {
                    f fVar = f.this;
                    e.a(e.this, this.f31679a, fVar.f31677a, i2, str);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static void a(e eVar, com.meishu.sdk.core.loader.d dVar, com.meishu.sdk.core.loader.loadbean.a aVar, int i2, String str) {
        g gVar;
        SdkAdInfo sdkAdInfo;
        synchronized (eVar) {
            synchronized (eVar) {
                try {
                    eVar.f31656g.remove(aVar);
                    if (aVar != null && (sdkAdInfo = aVar.f31638a) != null) {
                        p1.b(sdkAdInfo.getEventUrl(), i2, str);
                        String strReplace = aVar.f31638a.getErr().replace("__MS_ERRNO__", "1026").replace("__ERROR_CODE__", String.valueOf(i2)).replace("__TIMEOUT__", String.valueOf(aVar.f31641d));
                        if (!TextUtils.isEmpty(strReplace)) {
                            a0.a(eVar.f31650a.getContext().getApplicationContext(), i0.a(strReplace), new i());
                        }
                    }
                    if (eVar.f31659j && eVar.f31666q.size() > 0 && aVar.equals(eVar.f31666q.get(0)) && ((eVar.f31651b.getCache() <= 0 || (eVar.f31651b.getCache() > 0 && !eVar.f31667r)) && (gVar = eVar.f31660k) != null)) {
                        com.meishu.sdk.core.loader.concurrent.e eVar2 = (com.meishu.sdk.core.loader.concurrent.e) gVar;
                        if (eVar2.f31625e.getLoaderListener() != null && !eVar2.f31630j) {
                            LogUtil.d("ConCurrentManager", "onRenderFail");
                            eVar2.f31625e.getLoaderListener().onAdRenderFail(str, -1);
                        }
                    }
                } finally {
                }
            }
        }
    }

    public final void c() {
        if (this.f31672w) {
            return;
        }
        this.f31672w = true;
        this.f31659j = true;
        synchronized (this) {
            try {
                try {
                    ArrayList arrayList = (ArrayList) d();
                    if (arrayList.size() > 0) {
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            com.meishu.sdk.core.loader.loadbean.a aVar = (com.meishu.sdk.core.loader.loadbean.a) arrayList.get(i2);
                            SdkAdInfo sdkAdInfo = aVar.f31638a;
                            int ecpm = sdkAdInfo.getEcpm();
                            if ("bidding".equals(sdkAdInfo.getOtype()) && ecpm > 0 && "GDT".equals(sdkAdInfo.getSdk())) {
                                this.f31655f.add(aVar);
                            }
                            if ("GDT".equals(sdkAdInfo.getSdk()) && !TextUtils.isEmpty(sdkAdInfo.getS2sb())) {
                                this.f31655f.add(aVar);
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ExecutorService executorService = h0.f31906a;
        h0.b.f31910a.a(new com.meishu.sdk.core.loader.strategy.f(this));
        try {
            List<com.meishu.sdk.core.loader.d> list = this.f31653d;
            if (list != null && list.size() > 0) {
                for (int i3 = 0; i3 < this.f31653d.size(); i3++) {
                    com.meishu.sdk.core.loader.d dVar = this.f31653d.get(i3);
                    SdkAdInfo sdkAdInfo2 = dVar.getSdkAdInfo();
                    a(sdkAdInfo2.getEcpm(), sdkAdInfo2.getPrice(), sdkAdInfo2.getOtype());
                    if (this.f31675z.size() > 0) {
                        try {
                            ((BasePlatformLoader) dVar).sendGdtWinResult(false, this.f31675z.get(0).intValue());
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                        }
                    }
                }
            }
            List<SdkAdInfo> list2 = this.f31654e;
            if (list2 == null || list2.size() <= 0) {
                return;
            }
            for (int i4 = 0; i4 < this.f31654e.size(); i4++) {
                SdkAdInfo sdkAdInfo3 = this.f31654e.get(i4);
                a(sdkAdInfo3.getEcpm(), sdkAdInfo3.getPrice(), sdkAdInfo3.getOtype());
                if (this.f31675z.size() > 0) {
                    a(sdkAdInfo3, this.f31675z.get(0).intValue());
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void b() {
        com.meishu.sdk.core.loader.loadbean.a aVar = new com.meishu.sdk.core.loader.loadbean.a();
        aVar.f31642e = (1000 - this.f31651b.getPriority()) * 1000000;
        aVar.f31643f = this.f31651b.getCacheScore();
        synchronized (aVar) {
            aVar.f31640c = 2;
        }
        aVar.f31644g = true;
        this.f31656g.add(aVar);
    }

    public final void b(com.meishu.sdk.core.loader.loadbean.a aVar) {
        try {
            if (this.f31651b.getCache() > 0 && this.f31667r) {
                if (this.f31666q.size() >= (this.f31651b.getCache() <= 0 ? 1 : this.f31651b.getCache()) && !this.f31659j) {
                    this.f31659j = true;
                    this.f31665p.clear();
                    c();
                    return;
                } else {
                    this.f31656g.remove(aVar);
                    this.f31663n.remove(aVar);
                    if (!this.f31666q.contains(aVar)) {
                        this.f31666q.add(aVar);
                    }
                    Collections.sort(this.f31666q, new a(this));
                    return;
                }
            }
            if (!this.f31666q.contains(aVar)) {
                this.f31666q.add(aVar);
            }
            this.f31656g.remove(aVar);
            this.f31663n.remove(aVar);
            g();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(e eVar) {
        eVar.getClass();
        try {
            if (eVar.f31655f.size() > 0) {
                List<com.meishu.sdk.core.loader.loadbean.a> listD = eVar.d();
                for (com.meishu.sdk.core.loader.loadbean.a aVar : eVar.f31655f) {
                    SdkAdInfo sdkAdInfo = aVar.f31638a;
                    try {
                        ArrayList arrayList = (ArrayList) listD;
                        if (arrayList.size() > 0) {
                            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                if (((com.meishu.sdk.core.loader.loadbean.a) arrayList.get(i2)).f31638a.getReq_uid() == aVar.f31638a.getReq_uid()) {
                                    break;
                                }
                            }
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    Object obj = aVar.f31639b;
                    if (obj instanceof com.meishu.sdk.core.ad.a) {
                        Object sdkAd = ((com.meishu.sdk.core.ad.a) obj).getSdkAd();
                        if (sdkAd instanceof IBidding) {
                            eVar.a(sdkAdInfo.getEcpm(), sdkAdInfo.getPrice(), sdkAdInfo.getOtype());
                            if (eVar.f31675z.size() > 0) {
                                HashMap map = new HashMap();
                                map.put("winPrice", eVar.f31675z.get(0));
                                map.put("lossReason", 1);
                                map.put("adnId", "2");
                                ((IBidding) sdkAd).sendLossNotification(map);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public final void b(SdkAdInfo sdkAdInfo, int i2) {
        S2sbResultBean s2sbResultBean;
        try {
            if (TextUtils.isEmpty(sdkAdInfo.getS2sb()) || (s2sbResultBean = (S2sbResultBean) new Gson().fromJson(sdkAdInfo.getS2sb(), S2sbResultBean.class)) == null) {
                return;
            }
            a0.a(this.f31650a.getContext(), s2sbResultBean.getNurl().replace(WindAds.AUCTION_PRICE, String.valueOf(sdkAdInfo.getPrice())).replace(WindAds.HIGHEST_LOSS_PRICE, String.valueOf(Math.min(i2, sdkAdInfo.getPrice()))), new i());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final boolean c(com.meishu.sdk.core.loader.loadbean.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f31656g);
        arrayList.addAll(this.f31663n);
        if (arrayList.size() <= 0) {
            return true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.meishu.sdk.core.loader.loadbean.a aVar2 = (com.meishu.sdk.core.loader.loadbean.a) it.next();
            if (!aVar2.equals(aVar) && aVar2.f31640c == 2 && !this.f31663n.contains(aVar2)) {
                this.f31663n.add(aVar2);
                it.remove();
            }
            int i2 = aVar2.f31642e;
            int i3 = aVar.f31642e;
            if (i2 > i3) {
                return false;
            }
            if (i2 == i3 && ((!aVar2.f31644g && "bidding".equals(aVar2.f31638a.getOtype()) && aVar2.a() == -1) || aVar2.a() > aVar.a())) {
                return false;
            }
        }
        return true;
    }

    public final void b(int i2, int i3, String str) {
        try {
            this.f31649A.clear();
            this.f31649A.addAll(b(this.f31663n, i2));
            this.f31649A.addAll(b(this.f31656g, i2));
            this.f31649A.addAll(b(d(), i2));
            if (i3 > 0 && "bidding".equals(str)) {
                this.f31649A.add(Integer.valueOf(i3));
            }
            Collections.sort(this.f31649A, new d(this));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final List<Integer> b(List<com.meishu.sdk.core.loader.loadbean.a> list, int i2) {
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < list.size(); i3++) {
            try {
                com.meishu.sdk.core.loader.loadbean.a aVar = list.get(i3);
                SdkAdInfo sdkAdInfo = aVar.f31638a;
                if (sdkAdInfo != null) {
                    int ecpm = sdkAdInfo.getEcpm();
                    if (ecpm < i2 && ecpm > 0 && aVar.f31638a.getOriginEcpm() >= ecpm) {
                        arrayList.add(Integer.valueOf(aVar.f31638a.getOriginEcpm()));
                    }
                    int codPrice = aVar.f31638a.getCodPrice();
                    if (codPrice < i2 && codPrice > 0 && aVar.f31638a.getPrice() >= codPrice) {
                        arrayList.add(Integer.valueOf(aVar.f31638a.getPrice()));
                    }
                } else if (aVar.f31644g && this.f31651b.getEcpm() > 0 && this.f31651b.getEcpm() < i2) {
                    arrayList.add(Integer.valueOf(this.f31651b.getEcpm()));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return arrayList;
            }
        }
        return arrayList;
    }

    public static void a(e eVar, com.meishu.sdk.core.loader.d dVar, com.meishu.sdk.core.loader.loadbean.a aVar, AdPlatformError adPlatformError) {
        synchronized (eVar) {
            synchronized (aVar) {
                aVar.f31640c = 3;
            }
            aVar.f31638a.replaceErrorPst(adPlatformError);
            eVar.f31656g.remove(aVar);
            eVar.i();
            eVar.f31665p.remove(aVar);
            eVar.h();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00e9 A[Catch: all -> 0x00c6, TryCatch #1 {all -> 0x00c6, blocks: (B:25:0x008e, B:27:0x00b4, B:29:0x00ba, B:32:0x00c9, B:33:0x00d1, B:36:0x00d5, B:37:0x00d6, B:39:0x00e1, B:40:0x00e2, B:41:0x00e3, B:43:0x00e9, B:45:0x00f6, B:47:0x00fd, B:49:0x0106, B:51:0x010a, B:53:0x011d, B:55:0x0149, B:48:0x0102, B:56:0x0160, B:58:0x0164, B:59:0x0168, B:60:0x016a, B:62:0x016e, B:64:0x0172, B:65:0x0176, B:69:0x0199, B:71:0x01a6, B:72:0x01ab, B:74:0x01af, B:76:0x01b2, B:77:0x01b3, B:79:0x01b9, B:91:0x01e6, B:93:0x01eb, B:94:0x01ec, B:68:0x0196, B:95:0x01ed, B:97:0x01f1, B:99:0x0204, B:101:0x0230, B:102:0x0246, B:24:0x008b, B:35:0x00d3, B:75:0x01b0, B:81:0x01be, B:83:0x01c6, B:86:0x01ce, B:89:0x01d8, B:3:0x0001, B:6:0x001b, B:8:0x002b, B:10:0x003b, B:12:0x004b, B:17:0x005e, B:18:0x0063, B:20:0x0073, B:22:0x0081), top: B:109:0x0001, inners: #0, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x016e A[Catch: all -> 0x00c6, TryCatch #1 {all -> 0x00c6, blocks: (B:25:0x008e, B:27:0x00b4, B:29:0x00ba, B:32:0x00c9, B:33:0x00d1, B:36:0x00d5, B:37:0x00d6, B:39:0x00e1, B:40:0x00e2, B:41:0x00e3, B:43:0x00e9, B:45:0x00f6, B:47:0x00fd, B:49:0x0106, B:51:0x010a, B:53:0x011d, B:55:0x0149, B:48:0x0102, B:56:0x0160, B:58:0x0164, B:59:0x0168, B:60:0x016a, B:62:0x016e, B:64:0x0172, B:65:0x0176, B:69:0x0199, B:71:0x01a6, B:72:0x01ab, B:74:0x01af, B:76:0x01b2, B:77:0x01b3, B:79:0x01b9, B:91:0x01e6, B:93:0x01eb, B:94:0x01ec, B:68:0x0196, B:95:0x01ed, B:97:0x01f1, B:99:0x0204, B:101:0x0230, B:102:0x0246, B:24:0x008b, B:35:0x00d3, B:75:0x01b0, B:81:0x01be, B:83:0x01c6, B:86:0x01ce, B:89:0x01d8, B:3:0x0001, B:6:0x001b, B:8:0x002b, B:10:0x003b, B:12:0x004b, B:17:0x005e, B:18:0x0063, B:20:0x0073, B:22:0x0081), top: B:109:0x0001, inners: #0, #2, #3, #4, #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.meishu.sdk.core.loader.strategy.e r6, com.meishu.sdk.core.loader.d r7, com.meishu.sdk.core.loader.loadbean.a r8, java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.loader.strategy.e.a(com.meishu.sdk.core.loader.strategy.e, com.meishu.sdk.core.loader.d, com.meishu.sdk.core.loader.loadbean.a, java.lang.Object):void");
    }

    public final synchronized boolean a(com.meishu.sdk.core.loader.loadbean.a aVar) {
        boolean z2;
        z2 = false;
        try {
            SdkAdInfo sdkAdInfo = aVar.f31638a;
            int ecpm = sdkAdInfo.getEcpm();
            if ("bidding".equals(sdkAdInfo.getOtype())) {
                if (sdkAdInfo.getCodPrice() > ecpm) {
                    try {
                        SdkAdInfo sdkAdInfo2 = aVar.f31638a;
                        if (sdkAdInfo2 != null && sdkAdInfo2.getErr().contains("__MS_ERRNO__")) {
                            String strReplace = aVar.f31638a.getErr().replace("__MS_ERRNO__", "1027").replace("__ERROR_CODE__", String.valueOf(0)).replace("__TIMEOUT__", String.valueOf(aVar.f31641d)).replace("__P__", String.valueOf(sdkAdInfo.getPrice())).replace("__S__", String.valueOf(ecpm));
                            if (!TextUtils.isEmpty(strReplace)) {
                                a0.a(this.f31650a.getContext().getApplicationContext(), i0.a(strReplace), new i());
                            }
                        }
                        z2 = true;
                    } catch (Exception e2) {
                        e = e2;
                        z2 = true;
                        e.printStackTrace();
                        return z2;
                    }
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return z2;
    }

    public final synchronized void a() {
        try {
            if (this.f31671v) {
                return;
            }
            if (this.f31666q.size() > 0) {
                com.meishu.sdk.core.loader.loadbean.a aVar = this.f31666q.get(0);
                if (!this.f31664o.contains(aVar)) {
                    return;
                }
                if (this.f31651b.getCache() <= 0 || (this.f31651b.getCache() > 0 && !this.f31667r)) {
                    if (this.f31660k != null) {
                        this.f31671v = true;
                        StringBuilder sbA = com.meishu.sdk.activity.a.a("回调adReady,成功的平台为：");
                        sbA.append(aVar.f31638a.getSdk());
                        sbA.append(", readyAd=");
                        sbA.append(aVar.f31639b);
                        LogUtil.e("PriceFirstStrategy", sbA.toString());
                        g gVar = this.f31660k;
                        Object obj = aVar.f31639b;
                        com.meishu.sdk.core.loader.concurrent.e eVar = (com.meishu.sdk.core.loader.concurrent.e) gVar;
                        if (eVar.f31625e.getLoaderListener() != null && !eVar.f31630j) {
                            LogUtil.d("ConCurrentManager", "onAdReady");
                            eVar.f31625e.getLoaderListener().onAdReady(obj);
                            if (!eVar.f31630j) {
                                eVar.f31629i.post(new com.meishu.sdk.core.loader.concurrent.d(eVar, obj));
                            }
                        }
                    }
                }
                if (this.f31651b.getCache() > 0) {
                    try {
                        Iterator<com.meishu.sdk.core.loader.loadbean.a> it = this.f31666q.iterator();
                        while (it.hasNext()) {
                            com.meishu.sdk.core.loader.loadbean.a next = it.next();
                            if (next != null && next.equals(aVar)) {
                                it.remove();
                            }
                        }
                        Iterator<com.meishu.sdk.core.loader.loadbean.a> it2 = this.f31663n.iterator();
                        while (it2.hasNext()) {
                            com.meishu.sdk.core.loader.loadbean.a next2 = it2.next();
                            if (next2 != null && next2.equals(aVar)) {
                                it2.remove();
                            }
                        }
                        Iterator<com.meishu.sdk.core.loader.loadbean.a> it3 = this.f31656g.iterator();
                        while (it3.hasNext()) {
                            com.meishu.sdk.core.loader.loadbean.a next3 = it3.next();
                            if (next3 != null && next3.equals(aVar)) {
                                it3.remove();
                            }
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(SdkAdInfo sdkAdInfo) {
        try {
            List<com.meishu.sdk.core.loader.d> list = this.f31653d;
            if (list != null && list.size() > 0) {
                Iterator<com.meishu.sdk.core.loader.d> it = this.f31653d.iterator();
                while (it.hasNext()) {
                    com.meishu.sdk.core.loader.d next = it.next();
                    if (next.getSdkAdInfo().getReq_uid() == sdkAdInfo.getReq_uid()) {
                        try {
                            a(sdkAdInfo.getEcpm(), sdkAdInfo.getPrice(), sdkAdInfo.getOtype());
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        int iIntValue = this.f31675z.size() > 0 ? this.f31675z.get(0).intValue() : 0;
                        b(sdkAdInfo.getEcpm(), sdkAdInfo.getPrice(), sdkAdInfo.getOtype());
                        if (this.f31649A.size() == 0) {
                            this.f31649A.add(0);
                        }
                        if (this.f31649A.size() > 0) {
                            int iIntValue2 = this.f31649A.get(0).intValue();
                            try {
                                int iA = u0.a(iIntValue, iIntValue2, sdkAdInfo.getAt_rate(), sdkAdInfo.getPrice());
                                String finalRsp = sdkAdInfo.getFinalRsp();
                                if (!TextUtils.isEmpty(finalRsp)) {
                                    sdkAdInfo.setFinalRsp(finalRsp.replace("__S2__", String.valueOf(iA)));
                                }
                            } catch (Throwable th2) {
                                th2.printStackTrace();
                            }
                            try {
                                ((BasePlatformLoader) next).sendGdtWinResult(true, iIntValue2);
                            } catch (Throwable th3) {
                                th3.printStackTrace();
                            }
                            it.remove();
                            return;
                        }
                    }
                }
            }
            List<SdkAdInfo> list2 = this.f31654e;
            if (list2 == null || list2.size() <= 0) {
                return;
            }
            Iterator<SdkAdInfo> it2 = this.f31654e.iterator();
            while (it2.hasNext()) {
                SdkAdInfo next2 = it2.next();
                if (next2.getReq_uid() == next2.getReq_uid()) {
                    b(sdkAdInfo.getCodPrice(), 0, sdkAdInfo.getOtype());
                    if (this.f31649A.size() > 0) {
                        b(sdkAdInfo, this.f31649A.get(0).intValue());
                        it2.remove();
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(SdkAdInfo sdkAdInfo, int i2) {
        S2sbResultBean s2sbResultBean;
        try {
            if (TextUtils.isEmpty(sdkAdInfo.getS2sb()) || (s2sbResultBean = (S2sbResultBean) new Gson().fromJson(sdkAdInfo.getS2sb(), S2sbResultBean.class)) == null) {
                return;
            }
            a0.a(this.f31650a.getContext(), s2sbResultBean.getLurl().replace(WindAds.AUCTION_PRICE, String.valueOf(i2)).replace("AUCTION_SEAT_ID", String.valueOf(2)).replace("AUCTION_LOSS", String.valueOf(1)), new i());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(int i2, int i3, String str) {
        try {
            this.f31675z.clear();
            this.f31675z.addAll(a(this.f31663n, i2));
            this.f31675z.addAll(a(this.f31666q, i2));
            this.f31675z.addAll(a(this.f31656g, i2));
            this.f31675z.addAll(a(d(), i2));
            if (i3 > 0 && "bidding".equals(str)) {
                this.f31675z.add(Integer.valueOf(i3));
            }
            Collections.sort(this.f31675z, new c(this));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final List<Integer> a(List<com.meishu.sdk.core.loader.loadbean.a> list, int i2) {
        ArrayList arrayList = new ArrayList();
        try {
            if (list.size() > 0) {
                for (int i3 = 0; i3 < list.size(); i3++) {
                    com.meishu.sdk.core.loader.loadbean.a aVar = list.get(i3);
                    SdkAdInfo sdkAdInfo = aVar.f31638a;
                    if (sdkAdInfo != null) {
                        if (sdkAdInfo.getEcpm() > 0 && sdkAdInfo.getEcpm() >= i2 && sdkAdInfo.getOriginEcpm() >= sdkAdInfo.getEcpm()) {
                            arrayList.add(Integer.valueOf(sdkAdInfo.getOriginEcpm()));
                        }
                        if (sdkAdInfo.getCodPrice() > 0 && sdkAdInfo.getCodPrice() >= i2 && sdkAdInfo.getPrice() >= sdkAdInfo.getCodPrice()) {
                            arrayList.add(Integer.valueOf(sdkAdInfo.getPrice()));
                        }
                    } else if (aVar.f31644g && this.f31651b.getEcpm() > 0 && this.f31651b.getEcpm() >= i2) {
                        arrayList.add(Integer.valueOf(this.f31651b.getEcpm()));
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return arrayList;
        }
    }

    public final void a(List<com.meishu.sdk.core.loader.loadbean.a> list) {
        try {
            Collections.sort(list, new C0654e(this));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
