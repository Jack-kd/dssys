package com.sigmob.sdk.manager;

import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.utils.s;
import com.sigmob.sdk.base.utils.v;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f37781a = "WindAdExpirationManager";

    /* renamed from: b, reason: collision with root package name */
    private static volatile d f37782b;

    /* renamed from: c, reason: collision with root package name */
    private volatile boolean f37783c;

    /* renamed from: d, reason: collision with root package name */
    private volatile long f37784d;

    /* renamed from: e, reason: collision with root package name */
    private Timer f37785e;

    /* renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap<SoftReference<b>, a> f37786f = new ConcurrentHashMap<>();

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f37787g = false;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        Boolean f37789a;

        /* renamed from: b, reason: collision with root package name */
        int f37790b;

        /* renamed from: c, reason: collision with root package name */
        int f37791c;

        /* renamed from: d, reason: collision with root package name */
        String f37792d;

        /* renamed from: e, reason: collision with root package name */
        String f37793e;

        /* renamed from: f, reason: collision with root package name */
        String f37794f;

        /* renamed from: g, reason: collision with root package name */
        String f37795g;

        /* renamed from: h, reason: collision with root package name */
        String f37796h;

        /* renamed from: i, reason: collision with root package name */
        Long f37797i;

        /* renamed from: j, reason: collision with root package name */
        Integer f37798j;

        /* renamed from: k, reason: collision with root package name */
        boolean f37799k = false;

        /* renamed from: l, reason: collision with root package name */
        boolean f37800l;

        public a(BaseAdUnit baseAdUnit, boolean z2) {
            if (baseAdUnit == null) {
                return;
            }
            this.f37792d = baseAdUnit.getVid();
            this.f37793e = baseAdUnit.getOriginVid();
            this.f37794f = baseAdUnit.getRequestId();
            this.f37796h = baseAdUnit.getAdslot_id();
            this.f37795g = baseAdUnit.getAdxEncPrice();
            this.f37798j = baseAdUnit.getAdExpiredTime();
            this.f37797i = Long.valueOf(baseAdUnit.getCreate_time());
            this.f37789a = Boolean.valueOf(baseAdUnit.expiredAdCanReload());
            int iExpiredAdReloadNum = baseAdUnit.expiredAdReloadNum();
            this.f37790b = iExpiredAdReloadNum;
            this.f37791c = iExpiredAdReloadNum;
            this.f37800l = z2;
        }

        public boolean a() {
            return (this.f37797i.longValue() == 0 || this.f37798j.intValue() == 0 || System.currentTimeMillis() - this.f37797i.longValue() < ((long) this.f37798j.intValue())) ? false : true;
        }

        public Map<String, String> b() {
            HashMap map = new HashMap();
            map.put(PointParamKey.EXPIRE_RELOAD_COUNT, String.valueOf(this.f37791c));
            map.put(PointParamKey.ORIGIN_VID, s.b(this.f37793e) ? this.f37793e : this.f37792d);
            if (s.b(this.f37795g)) {
                map.put(PointParamKey.ORIGIN_PRICE, this.f37795g);
            }
            map.put("request_id", this.f37794f);
            return map;
        }
    }

    private d() {
    }

    public static d a() {
        if (f37782b == null) {
            synchronized (d.class) {
                try {
                    if (f37782b == null) {
                        f37782b = new d();
                    }
                } finally {
                }
            }
        }
        return f37782b;
    }

    private a e(b bVar) {
        if (bVar == null) {
            return null;
        }
        for (Map.Entry<SoftReference<b>, a> entry : this.f37786f.entrySet()) {
            b bVar2 = entry.getKey().get();
            a value = entry.getValue();
            if (bVar2 != null && value != null && bVar2.equals(bVar)) {
                return value;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f37787g) {
            SigmobLogger.e(f37781a, "checkAdExpiration: The screen is locked.", new Object[0]);
            return;
        }
        if (this.f37786f.isEmpty()) {
            SigmobLogger.e(f37781a, "checkAdExpiration: adManagerMap is unavailable.", new Object[0]);
            return;
        }
        if (!com.sigmob.sdk.manager.a.c()) {
            SigmobLogger.e(f37781a, "checkAdExpiration: The app is on background.", new Object[0]);
            return;
        }
        Iterator<Map.Entry<SoftReference<b>, a>> it = this.f37786f.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<SoftReference<b>, a> next = it.next();
            SoftReference<b> key = next.getKey();
            final a value = next.getValue();
            if (key == null || value == null) {
                SigmobLogger.e(f37781a, "checkAdExpiration: entry is unavailable, remove entry.", new Object[0]);
                it.remove();
            } else {
                b bVar = key.get();
                if (bVar == null) {
                    SigmobLogger.e(f37781a, "checkAdExpiration: manager is unavailable, remove entry.", new Object[0]);
                } else if (!value.f37789a.booleanValue() || value.f37791c <= 0) {
                    SigmobLogger.e(f37781a, "checkAdExpiration: retry not available.", new Object[0]);
                } else if (value.f37799k) {
                    SigmobLogger.e(f37781a, "checkAdExpiration: reloading.", new Object[0]);
                } else {
                    boolean zA = value.a();
                    com.sigmob.sdk.base.j jVar = value.f37800l ? com.sigmob.sdk.base.j.ActiveFailureReload : com.sigmob.sdk.base.j.ReloadAfterExpiration;
                    SigmobLogger.d(f37781a, "checkAdExpiration: expiredAd = " + zA + ", requestId = " + value.f37794f + ", placementId = " + value.f37796h + ", reloadLeftNum = " + value.f37791c + ", requestSceneType = " + jVar.a(), new Object[0]);
                    boolean z2 = zA && v.b(Boolean.valueOf(value.f37800l));
                    if (z2 || v.a(Boolean.valueOf(value.f37800l))) {
                        if (z2) {
                            BaseAdUnit baseAdUnitE = bVar.e();
                            if (value.f37790b == value.f37791c) {
                                ad.a(PointCategory.OBJECT_EXPIRE, (String) null, baseAdUnitE, new ad.a() { // from class: com.sigmob.sdk.manager.m
                                    @Override // com.sigmob.sdk.base.common.ad.a
                                    public final void onAddExtra(Object obj) {
                                        d.a(value, obj);
                                    }
                                });
                            }
                        }
                        value.f37799k = true;
                        bVar.a(value.f37792d, value.f37795g, jVar);
                        value.f37791c--;
                    }
                }
                it.remove();
            }
        }
    }

    public synchronized void c() {
        SigmobLogger.d(f37781a, "stopExpirationCheck: running = " + this.f37783c, new Object[0]);
        if (this.f37783c) {
            e();
            this.f37783c = false;
        }
    }

    public void d() {
        c();
        b();
        f37782b = null;
    }

    private void d(b bVar) {
        Iterator<Map.Entry<SoftReference<b>, a>> it = this.f37786f.entrySet().iterator();
        while (it.hasNext()) {
            b bVar2 = it.next().getKey().get();
            if (bVar2 != null && bVar2.equals(bVar)) {
                it.remove();
                SigmobLogger.i(f37781a, "removeAdManager", new Object[0]);
                return;
            }
        }
    }

    private synchronized void e() {
        SigmobLogger.d(f37781a, "cancelTimer", new Object[0]);
        Timer timer = this.f37785e;
        if (timer == null) {
            return;
        }
        timer.cancel();
        this.f37785e = null;
    }

    public Map<String, String> a(b bVar, Integer num) {
        a aVarE;
        return (b.a(num) && (aVarE = e(bVar)) != null) ? aVarE.b() : new HashMap();
    }

    public void b() {
        if (this.f37786f.isEmpty()) {
            return;
        }
        this.f37786f.clear();
    }

    public void c(b bVar) {
        if (bVar == null) {
            SigmobLogger.e(f37781a, "resetAdManager: adManager is unavailable.", new Object[0]);
        } else {
            d(bVar);
            a(bVar, true);
        }
    }

    public synchronized void a(long j2) {
        if (j2 <= 0) {
            SigmobLogger.e(f37781a, "startExpirationCheck: interval is unavailable.", new Object[0]);
            return;
        }
        boolean z2 = j2 == this.f37784d;
        SigmobLogger.d(f37781a, "startExpirationCheck: status = " + this.f37783c + ", interval = " + j2 + ", result = " + z2, new Object[0]);
        if (this.f37783c && z2) {
            return;
        }
        e();
        long j3 = j2 * 1000;
        Timer timer = new Timer();
        this.f37785e = timer;
        timer.schedule(new TimerTask() { // from class: com.sigmob.sdk.manager.d.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                d.this.f();
            }
        }, j3, j3);
        this.f37783c = true;
        this.f37784d = j2;
        SigmobLogger.d(f37781a, "startExpirationCheck: status = " + this.f37783c, new Object[0]);
    }

    public void b(b bVar) {
        if (bVar == null) {
            SigmobLogger.e(f37781a, "removeAdManager: adManager is unavailable.", new Object[0]);
            return;
        }
        d(bVar);
        if (com.sigmob.sdk.base.utils.f.a(this.f37786f)) {
            c();
        }
    }

    public void a(LoadAdRequest loadAdRequest) {
        if (loadAdRequest != null && b.a(Integer.valueOf(loadAdRequest.getRequest_scene_type()))) {
            String originVid = loadAdRequest.getOriginVid();
            loadAdRequest.getOriginPrice();
            Iterator<Map.Entry<SoftReference<b>, a>> it = this.f37786f.entrySet().iterator();
            while (it.hasNext()) {
                a value = it.next().getValue();
                if (value != null && s.a((CharSequence) originVid, (CharSequence) value.f37792d)) {
                    value.f37799k = false;
                    SigmobLogger.d(f37781a, "loadEnd: originVid = " + originVid, new Object[0]);
                    return;
                }
            }
        }
    }

    public void a(b bVar) {
        a(bVar, false);
    }

    public void a(b bVar, boolean z2) {
        if (bVar == null) {
            SigmobLogger.e(f37781a, "addAdManager: adManager is unavailable.", new Object[0]);
            return;
        }
        BaseAdUnit baseAdUnitE = bVar.e();
        if (baseAdUnitE == null) {
            SigmobLogger.e(f37781a, "addAdManager: baseAdUnit is unavailable.", new Object[0]);
            return;
        }
        if (s.b(baseAdUnitE.getBid_token())) {
            return;
        }
        if (v.b(e(bVar))) {
            b(bVar);
        }
        if (b.b(Integer.valueOf(baseAdUnitE.getRequestSceneType()))) {
            return;
        }
        a aVar = new a(baseAdUnitE, z2);
        this.f37786f.put(new SoftReference<>(bVar), aVar);
        int size = this.f37786f.size();
        if (size == 1) {
            a(this.f37784d);
        }
        SigmobLogger.i(f37781a, "addAdManager: vid = " + aVar.f37792d + ", size = " + size + ", activeExpiration = " + aVar.f37800l, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(a aVar, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> mapB = aVar.b();
            if (com.sigmob.sdk.base.utils.f.b(mapB)) {
                pointEntitySigmob.getOptions().putAll(mapB);
            }
        }
    }

    public void a(boolean z2) {
        this.f37787g = z2;
    }
}
