package com.sigmob.sdk.manager;

import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.models.rtb.FrequencyControl;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.base.mta.PointEntitySigmobRequest;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.utils.s;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.umeng.analytics.pro.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public abstract class b {

    /* renamed from: h, reason: collision with root package name */
    private static final ConcurrentHashMap<String, Boolean> f37772h = new ConcurrentHashMap<>();

    /* renamed from: a, reason: collision with root package name */
    public final String f37773a = getClass().getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    protected AdStatus f37774b = AdStatus.AdStatusNone;

    /* renamed from: c, reason: collision with root package name */
    protected final int f37775c = r.a.f49637r;

    /* renamed from: d, reason: collision with root package name */
    protected String f37776d;

    /* renamed from: e, reason: collision with root package name */
    protected String f37777e;

    /* renamed from: f, reason: collision with root package name */
    protected Integer f37778f;

    /* renamed from: g, reason: collision with root package name */
    protected String f37779g;

    public static String j() {
        return UUID.randomUUID().toString();
    }

    public static boolean n(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return false;
        }
        String ad_source_channel = baseAdUnit.getAd_source_channel();
        if (s.a((CharSequence) ad_source_channel)) {
            return false;
        }
        return ad_source_channel.equalsIgnoreCase(com.sigmob.sdk.base.n.f36446i);
    }

    public void a(int i2) {
        boolean zC = c();
        boolean z2 = !zC;
        boolean z3 = !zC && a(Integer.valueOf(i2));
        SigmobLogger.i(this.f37773a, "addToWindAdExpirationManager: allowAdd = " + z3 + ", unready = " + z2 + ", requestSceneTypeValue = " + i2, new Object[0]);
        if (z3) {
            a(this);
        }
    }

    public abstract boolean c();

    public abstract boolean d();

    public abstract BaseAdUnit e();

    public abstract LoadAdRequest f();

    public abstract void g();

    public String h() {
        LoadAdRequest loadAdRequestF = f();
        if (loadAdRequestF == null) {
            return null;
        }
        return loadAdRequestF.getPlacementId();
    }

    public abstract BaseAdUnit i();

    public String i(BaseAdUnit baseAdUnit) {
        BiddingResponse biddingResponse;
        String str;
        if (baseAdUnit == null || (biddingResponse = baseAdUnit.bidding_response) == null || (str = biddingResponse.currency) == null) {
            return null;
        }
        SigmobLogger.d(this.f37773a, "getCurrency: currency = " + str, new Object[0]);
        return str;
    }

    public Integer k() {
        return this.f37778f;
    }

    public String l() {
        return this.f37779g;
    }

    public Map<String, String> m(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return null;
        }
        List<FrequencyControl> frequencyControl = baseAdUnit.getFrequencyControl();
        if (com.sigmob.sdk.base.utils.f.a(frequencyControl)) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(PointParamKey.FREQUENCY_CONTROL_LIST, com.sigmob.sdk.base.utils.i.a(frequencyControl));
        for (FrequencyControl frequencyControl2 : frequencyControl) {
            SigmobLogger.d(this.f37773a, "频控策略 ID = " + frequencyControl2.strategy_id + ", 频控策略类型 = " + frequencyControl2.frequency_control_event, new Object[0]);
        }
        return map;
    }

    public static void b(final BaseAdUnit baseAdUnit, String str, final String str2) {
        k(baseAdUnit);
        try {
            Thread.sleep(10L);
        } catch (InterruptedException e2) {
            SigmobLogger.e("BaseAdManager", "trackDeeplinkResult: error = " + e2.getMessage(), new Object[0]);
        }
        com.sigmob.sdk.base.network.h.a(baseAdUnit, str);
        ad.a(str, (String) null, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.manager.l
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                b.a(str2, baseAdUnit, obj);
            }
        });
    }

    public static boolean c(Integer num) {
        return num != null && num.intValue() == com.sigmob.sdk.base.j.NormalRequest.a();
    }

    public static void k(BaseAdUnit baseAdUnit) {
        int interactionType;
        if (baseAdUnit == null || (interactionType = baseAdUnit.getInteractionType()) == 7 || interactionType == 8 || !baseAdUnit.enableDetectPkg()) {
            return;
        }
        String str = baseAdUnit.canOpen() ? PointCategory.CAN_DP : PointCategory.NO_CAN_DP;
        ad.a(str, (String) null, baseAdUnit, (ad.a) null);
        String requestId = baseAdUnit.getRequestId();
        ConcurrentHashMap<String, Boolean> concurrentHashMap = f37772h;
        if (concurrentHashMap.containsKey(requestId)) {
            return;
        }
        com.sigmob.sdk.base.network.h.a(baseAdUnit, str);
        concurrentHashMap.put(requestId, Boolean.TRUE);
    }

    public void a(AdStatus adStatus) {
        this.f37774b = adStatus;
    }

    public void d(Integer num) {
        this.f37778f = num;
    }

    public boolean f(BaseAdUnit baseAdUnit) {
        return baseAdUnit != null && baseAdUnit.isExpiredAd();
    }

    public boolean g(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return false;
        }
        int playMode = baseAdUnit.getPlayMode();
        SigmobLogger.d(this.f37773a, "checkAdUnit: playMode = " + playMode, new Object[0]);
        if (playMode != 0) {
            return true;
        }
        try {
            boolean zIsEndCardIndexExist = baseAdUnit.isEndCardIndexExist();
            SigmobLogger.d(this.f37773a, "checkAdUnit: isEndCardReady = " + zIsEndCardIndexExist, new Object[0]);
            return zIsEndCardIndexExist;
        } catch (Throwable th) {
            SigmobLogger.e(this.f37773a, "checkAdUnit: error = " + th.getMessage(), new Object[0]);
            return false;
        }
    }

    public String h(BaseAdUnit baseAdUnit) {
        BiddingResponse biddingResponse;
        Integer num;
        if (baseAdUnit != null && (biddingResponse = baseAdUnit.bidding_response) != null && (num = biddingResponse.ecpm) != null) {
            try {
                String strValueOf = String.valueOf(num);
                SigmobLogger.d(this.f37773a, "getEcpm: eCPM = " + strValueOf, new Object[0]);
                return strValueOf;
            } catch (Exception e2) {
                SigmobLogger.e(this.f37773a, "getEcpm: error = " + e2.getMessage(), new Object[0]);
            }
        }
        return null;
    }

    public Map<String, BiddingResponse> j(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null || baseAdUnit.bidding_response == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(baseAdUnit.getRequestId(), baseAdUnit.bidding_response);
        return map;
    }

    public void l(final BaseAdUnit baseAdUnit) {
        a(baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.manager.k
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f37830a.a(baseAdUnit, obj);
            }
        });
    }

    public void a(BaseAdUnit baseAdUnit, ad.a aVar) {
        ad.a(PointCategory.RESPOND, "1", baseAdUnit, aVar);
    }

    public void b(b bVar) {
        d.a().b(bVar);
    }

    public static boolean b(Integer num) {
        if (num == null) {
            return false;
        }
        return num.intValue() == com.sigmob.sdk.base.j.AutoNextPreload.a() || num.intValue() == com.sigmob.sdk.base.j.SplashCloseRequest.a();
    }

    public void a(BaseAdUnit baseAdUnit, LoadAdRequest loadAdRequest) {
        if (a(Integer.valueOf(loadAdRequest.getRequest_scene_type()))) {
            this.f37774b = AdStatus.AdStatusReady;
            a(this);
        }
        ad.a(PointCategory.READY, null, baseAdUnit, null, loadAdRequest, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BaseAdUnit baseAdUnit, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
            options.put(PointParamKey.IS_CACHE, "1");
            Map<String, String> mapM = m(baseAdUnit);
            if (com.sigmob.sdk.base.utils.f.b(mapM)) {
                options.putAll(mapM);
            }
        }
    }

    public void a(BaseAdUnit baseAdUnit, String str, final int i2, final String str2, final String str3, WindAdError windAdError) {
        ad.a(str, windAdError, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.manager.g
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                b.a(str3, str2, i2, obj);
            }
        });
    }

    public void a(BaseAdUnit baseAdUnit, String str, String str2) {
        if (baseAdUnit == null || baseAdUnit.bidding_response == null) {
            return;
        }
        baseAdUnit.getMacroCommon().addMarcoKey(str, str2);
    }

    public void a(LoadAdRequest loadAdRequest) {
        loadAdRequest.setRequestId("");
        final String traceId = loadAdRequest.getTraceId();
        final int request_scene_type = loadAdRequest.getRequest_scene_type();
        if (request_scene_type == com.sigmob.sdk.base.j.NormalRequest.a()) {
            return;
        }
        ad.a("request", a(Integer.valueOf(request_scene_type)) ? "init" : PointCategory.PLAY, (WindAdRequest) null, loadAdRequest, new ad.a() { // from class: com.sigmob.sdk.manager.h
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f37823a.a(traceId, request_scene_type, obj);
            }
        });
    }

    public void a(b bVar) {
        d.a().a(bVar);
        e.a().a(bVar);
    }

    public void a(WindAdError windAdError, com.sigmob.sdk.videoAd.m mVar) {
        AdStatus adStatus = this.f37774b;
        if (adStatus != AdStatus.AdStatusLoading && adStatus != AdStatus.AdStatusClose) {
            g();
            this.f37774b = AdStatus.AdStatusNone;
        }
        if (mVar == null || windAdError == null) {
            return;
        }
        mVar.onAdShowError(windAdError, h());
    }

    public void a(String str) {
        this.f37779g = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, int i2, Object obj) {
        if (obj instanceof PointEntitySigmobRequest) {
            PointEntitySigmobRequest pointEntitySigmobRequest = (PointEntitySigmobRequest) obj;
            pointEntitySigmobRequest.setTrace_id(str);
            pointEntitySigmobRequest.setAdx_id(null);
            Map<String, String> options = pointEntitySigmobRequest.getOptions();
            options.putAll(d.a().a(this, Integer.valueOf(i2)));
            pointEntitySigmobRequest.setOptions(options);
        }
    }

    public void a(String str, BaseAdUnit baseAdUnit) {
        e.a().a(str, baseAdUnit, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, BaseAdUnit baseAdUnit, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            if (s.b(str)) {
                pointEntitySigmob.setFinal_url(str);
            }
            if (baseAdUnit == null) {
                return;
            }
            AndroidMarket androidMarket = baseAdUnit.getAndroidMarket();
            if (baseAdUnit.getInteractionType() == 8 || v.b(androidMarket)) {
                pointEntitySigmob.getOptions().put(PointParamKey.FAST_PKG, com.sigmob.sdk.b.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, String str2, int i2, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            PointEntitySigmobError pointEntitySigmobError = (PointEntitySigmobError) obj;
            pointEntitySigmobError.setLoad_id(str);
            pointEntitySigmobError.setPlacement_id(str2);
            pointEntitySigmobError.setAdtype(String.valueOf(i2));
        }
    }

    public void a(String str, String str2, com.sigmob.sdk.base.j jVar) {
        this.f37776d = str;
        this.f37777e = str2;
        SigmobLogger.i(this.f37773a, "expiredAdReload: originVid = " + str + ", originPrice = " + str2, new Object[0]);
    }

    public void a(String str, final Map<String, String> map) {
        BaseAdUnit baseAdUnitI = i();
        if (com.sigmob.sdk.base.o.a().ae()) {
            ad.a(str, (String) null, baseAdUnitI, new ad.a() { // from class: com.sigmob.sdk.manager.i
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    b.a(map, obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, BaseAdUnit baseAdUnit, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put(PointParamKey.AD_COUNT, String.valueOf(list.size()));
            Map<String, String> mapM = m(baseAdUnit);
            if (com.sigmob.sdk.base.utils.f.b(mapM)) {
                options.putAll(mapM);
            }
            pointEntitySigmob.setOptions(options);
        }
    }

    public void a(final List<BaseAdUnit> list, LoadAdRequest loadAdRequest, final BaseAdUnit baseAdUnit) {
        ad.a(PointCategory.RESPOND, "1", baseAdUnit, null, loadAdRequest, new ad.a() { // from class: com.sigmob.sdk.manager.j
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f37827a.a(list, baseAdUnit, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Map map, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            if (map == null) {
                return;
            }
            pointEntitySigmob.getOptions().putAll(map);
        }
    }

    public static boolean a(com.sigmob.sdk.base.j jVar) {
        if (jVar == null) {
            return false;
        }
        return a(Integer.valueOf(jVar.a()));
    }

    public static boolean a(Integer num) {
        if (num == null) {
            return false;
        }
        return num.intValue() == com.sigmob.sdk.base.j.ReloadAfterExpiration.a() || num.intValue() == com.sigmob.sdk.base.j.ActiveFailureReload.a();
    }
}
