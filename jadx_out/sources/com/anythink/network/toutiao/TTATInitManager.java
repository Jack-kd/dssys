package com.anythink.network.toutiao;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingListenerExt;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATCustomLoadListenerExt;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.common.f.f;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTClientBidding;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class TTATInitManager extends ATInitMediation {
    public static final String TAG = "TTATInitManager";

    /* renamed from: o, reason: collision with root package name */
    private static volatile TTATInitManager f10331o;

    /* renamed from: c, reason: collision with root package name */
    private boolean f10334c;

    /* renamed from: e, reason: collision with root package name */
    private List<MediationInitCallback> f10336e;

    /* renamed from: h, reason: collision with root package name */
    TTCustomController f10339h;

    /* renamed from: i, reason: collision with root package name */
    MediationConfig.Builder f10340i;

    /* renamed from: j, reason: collision with root package name */
    Map<String, Map<String, TTATBiddingInfo>> f10341j;

    /* renamed from: b, reason: collision with root package name */
    private Map<String, WeakReference> f10333b = new ConcurrentHashMap();

    /* renamed from: f, reason: collision with root package name */
    private final Object f10337f = new Object();

    /* renamed from: g, reason: collision with root package name */
    private final long f10338g = 100;

    /* renamed from: l, reason: collision with root package name */
    private boolean f10343l = false;

    /* renamed from: m, reason: collision with root package name */
    int f10344m = 1;

    /* renamed from: n, reason: collision with root package name */
    String f10345n = "price";

    /* renamed from: a, reason: collision with root package name */
    private boolean f10332a = true;

    /* renamed from: d, reason: collision with root package name */
    private AtomicBoolean f10335d = new AtomicBoolean(false);

    /* renamed from: k, reason: collision with root package name */
    private Boolean f10342k = null;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f10346a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f10347b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ int[] f10348c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ Context f10349d;

        /* renamed from: com.anythink.network.toutiao.TTATInitManager$a$a, reason: collision with other inner class name */
        public class C0115a implements TTAdSdk.Callback {

            /* renamed from: com.anythink.network.toutiao.TTATInitManager$a$a$a, reason: collision with other inner class name */
            public class RunnableC0116a implements Runnable {
                public RunnableC0116a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    TTATInitManager.this.f10334c = true;
                    TTATInitManager.this.a(true, (String) null, (String) null);
                }
            }

            public C0115a() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
            public void fail(int i2, String str) {
                TTATInitManager.this.a(false, i2 + "", str);
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
            public void success() {
                TTATInitManager.this.runOnThreadPool(new RunnableC0116a());
            }
        }

        public a(String str, String str2, int[] iArr, Context context) {
            this.f10346a = str;
            this.f10347b = str2;
            this.f10348c = iArr;
            this.f10349d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                TTAdConfig.Builder builderSupportMultiProcess = new TTAdConfig.Builder().appId(this.f10346a).appName(this.f10347b).titleBarTheme(1).directDownloadNetworkType(this.f10348c).supportMultiProcess(false);
                if (TTATInitManager.this.f10342k != null) {
                    builderSupportMultiProcess.useMediation(TTATInitManager.this.f10342k.booleanValue());
                } else {
                    builderSupportMultiProcess.useMediation(true);
                }
                if (ATSDK.isNetworkLogDebug()) {
                    builderSupportMultiProcess.debug(true);
                }
                String strB = TTATInitManager.this.b();
                if (!TextUtils.isEmpty(strB)) {
                    builderSupportMultiProcess.data(strB);
                }
                TTCustomController tTCustomController = TTATInitManager.this.f10339h;
                if (tTCustomController != null) {
                    builderSupportMultiProcess.customController(tTCustomController);
                }
                MediationConfig.Builder builder = TTATInitManager.this.f10340i;
                if (builder != null) {
                    builderSupportMultiProcess.setMediationConfig(builder.build());
                }
                TTAdSdk.init(this.f10349d, builderSupportMultiProcess.build());
                TTAdSdk.start(new C0115a());
            } catch (Throwable th) {
                TTATInitManager.this.a(false, "", th.getMessage());
            }
        }
    }

    private TTATInitManager() {
    }

    private void c() {
        try {
            if (this.f10334c || this.f10343l) {
                return;
            }
            this.f10343l = true;
            HashMap map = new HashMap();
            if (TTAdSdk.isSdkReady()) {
                map.put("init_by_our", Boolean.FALSE);
            } else {
                map.put("init_by_our", Boolean.TRUE);
            }
            sendNetworkEvent(15, 10002, map);
        } catch (Throwable unused) {
        }
    }

    public static TTATInitManager getInstance() {
        if (f10331o == null) {
            synchronized (TTATInitManager.class) {
                try {
                    if (f10331o == null) {
                        f10331o = new TTATInitManager();
                    }
                } finally {
                }
            }
        }
        return f10331o;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "7.6.4.3.1.0";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "CSJ";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.bytedance.sdk.openadsdk.TTAdSdk";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return TTATConst.getNetworkVersion();
    }

    @Override // com.anythink.core.api.ATInitMediation
    public List getPermissionStatus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.WAKE_LOCK");
        return arrayList;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public List getProviderStatus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.bytedance.sdk.openadsdk.TTFileProvider");
        return arrayList;
    }

    public void initSDK(Context context, Map<String, Object> map) throws Throwable {
        initSDK(context, map, null);
    }

    public boolean isMediationCSJ() {
        return true;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public boolean needCheckAdapterVersion() {
        return false;
    }

    public synchronized void notifyAdDataLoad(boolean z2, Map<String, Object> map, TTClientBidding tTClientBidding, ATCustomLoadListener aTCustomLoadListener, ATBiddingListener aTBiddingListener, BaseAd... baseAdArr) {
        map.size();
        try {
            if (z2) {
                if (baseAdArr == null || baseAdArr.length == 0) {
                    b(map, null, tTClientBidding, aTBiddingListener);
                } else {
                    b(map, baseAdArr[0], tTClientBidding, aTBiddingListener);
                }
            } else if (aTCustomLoadListener instanceof ATCustomLoadListenerExt) {
                ((ATCustomLoadListenerExt) aTCustomLoadListener).onAdDataLoadedWithAds(baseAdArr);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void setIsOpenDirectDownload(boolean z2) {
        this.f10332a = z2;
    }

    public void setMediationConfigBuilder(MediationConfig.Builder builder) {
        this.f10340i = builder;
    }

    public void setTtCustomController(TTCustomController tTCustomController) {
        this.f10339h = tTCustomController;
    }

    public void setUseMediation(boolean z2) {
        this.f10342k = Boolean.valueOf(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b() throws JSONException {
        try {
            this.f10344m = ATSDK.getPersionalizedAdStatus();
        } catch (Throwable unused) {
        }
        try {
            JSONArray jSONArray = new JSONArray();
            String str = "1";
            String str2 = this.f10344m == 2 ? "0" : "1";
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("name", "personal_ads_type");
            jSONObject.put(f.a.f3244d, str2);
            jSONArray.put(jSONObject);
            Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(15);
            if (boolIsShakeEnabled == null) {
                str = "-1";
            } else if (!boolIsShakeEnabled.booleanValue()) {
                str = "0";
            }
            if (!str.equals("-1")) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("name", "is_shake_ads");
                jSONObject2.put(f.a.f3244d, str);
                jSONArray.put(jSONObject2);
            }
            String string = jSONArray.toString();
            ATSDK.isNetworkLogDebug();
            return string;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:37:0x008a
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(android.content.Context r10, java.util.Map<java.lang.String, java.lang.Object> r11, com.anythink.core.api.MediationInitCallback r12) throws java.lang.Throwable {
        /*
            r9 = this;
            r9.a()
            boolean r0 = com.bytedance.sdk.openadsdk.TTAdSdk.isSdkReady()
            if (r0 != 0) goto Ld
            boolean r0 = r9.f10334c
            if (r0 == 0) goto L10
        Ld:
            r4 = r9
            goto L8c
        L10:
            java.lang.Object r1 = r9.f10337f
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicBoolean r0 = r9.f10335d     // Catch: java.lang.Throwable -> L85
            boolean r0 = r0.get()     // Catch: java.lang.Throwable -> L85
            if (r0 == 0) goto L29
            if (r12 == 0) goto L27
            java.util.List<com.anythink.core.api.MediationInitCallback> r10 = r9.f10336e     // Catch: java.lang.Throwable -> L23
            r10.add(r12)     // Catch: java.lang.Throwable -> L23
            goto L27
        L23:
            r0 = move-exception
            r10 = r0
            r4 = r9
            goto L88
        L27:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L23
            return
        L29:
            java.util.List<com.anythink.core.api.MediationInitCallback> r0 = r9.f10336e     // Catch: java.lang.Throwable -> L85
            if (r0 != 0) goto L34
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L23
            r0.<init>()     // Catch: java.lang.Throwable -> L23
            r9.f10336e = r0     // Catch: java.lang.Throwable -> L23
        L34:
            java.util.concurrent.atomic.AtomicBoolean r0 = r9.f10335d     // Catch: java.lang.Throwable -> L85
            r2 = 1
            r0.set(r2)     // Catch: java.lang.Throwable -> L85
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L85
            r9.c()
            java.lang.String r0 = "app_id"
            java.lang.String r5 = com.anythink.core.api.ATInitMediation.getStringFromMap(r11, r0)
            if (r12 == 0) goto L4b
            java.util.List<com.anythink.core.api.MediationInitCallback> r11 = r9.f10336e
            r11.add(r12)
        L4b:
            boolean r11 = r9.f10332a
            r12 = 0
            r0 = 2
            if (r11 == 0) goto L62
            r11 = 5
            int[] r1 = new int[r11]
            r1[r12] = r2
            r1[r2] = r0
            r12 = 3
            r1[r0] = r12
            r0 = 4
            r1[r12] = r0
            r1[r0] = r11
        L60:
            r7 = r1
            goto L67
        L62:
            int[] r1 = new int[r2]
            r1[r12] = r0
            goto L60
        L67:
            android.content.Context r8 = r10.getApplicationContext()
            android.content.pm.PackageManager r11 = r10.getPackageManager()
            android.content.pm.ApplicationInfo r10 = r10.getApplicationInfo()
            java.lang.CharSequence r10 = r11.getApplicationLabel(r10)
            java.lang.String r6 = r10.toString()
            com.anythink.network.toutiao.TTATInitManager$a r3 = new com.anythink.network.toutiao.TTATInitManager$a
            r4 = r9
            r3.<init>(r5, r6, r7, r8)
            r9.runOnMainThread(r3)
            return
        L85:
            r0 = move-exception
            r4 = r9
        L87:
            r10 = r0
        L88:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8a
            throw r10
        L8a:
            r0 = move-exception
            goto L87
        L8c:
            java.lang.String r10 = r9.b()
            boolean r11 = android.text.TextUtils.isEmpty(r10)
            if (r11 != 0) goto La6
            com.bytedance.sdk.openadsdk.TTAdConfig$Builder r11 = new com.bytedance.sdk.openadsdk.TTAdConfig$Builder
            r11.<init>()
            com.bytedance.sdk.openadsdk.TTAdConfig$Builder r10 = r11.data(r10)
            com.bytedance.sdk.openadsdk.TTAdConfig r10 = r10.build()
            com.bytedance.sdk.openadsdk.TTAdSdk.updateAdConfig(r10)
        La6:
            boolean r10 = com.bytedance.sdk.openadsdk.TTAdSdk.isSdkReady()
            if (r10 == 0) goto Laf
            r9.c()
        Laf:
            if (r12 == 0) goto Lb4
            r12.onSuccess()
        Lb4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.toutiao.TTATInitManager.initSDK(android.content.Context, java.util.Map, com.anythink.core.api.MediationInitCallback):void");
    }

    public void a(String str, WeakReference weakReference) {
        try {
            this.f10333b.put(str, weakReference);
        } catch (Throwable unused) {
        }
    }

    public void a() {
        try {
            for (Map.Entry<String, WeakReference> entry : this.f10333b.entrySet()) {
                if (entry.getValue().get() == null) {
                    this.f10333b.remove(entry.getKey());
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, String str, String str2) {
        synchronized (this.f10337f) {
            try {
                int size = this.f10336e.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MediationInitCallback mediationInitCallback = this.f10336e.get(i2);
                    if (mediationInitCallback != null) {
                        if (z2) {
                            mediationInitCallback.onSuccess();
                        } else {
                            mediationInitCallback.onFail(str + " | " + str2);
                        }
                    }
                }
                this.f10336e.clear();
                this.f10335d.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void b(Map<String, Object> map, BaseAd baseAd, TTClientBidding tTClientBidding, ATBiddingListener aTBiddingListener) {
        double d2;
        if (aTBiddingListener instanceof ATBiddingListenerExt) {
            if (map == null || !map.containsKey(this.f10345n)) {
                d2 = 0.0d;
            } else {
                try {
                    d2 = Double.parseDouble(String.valueOf(map.get(this.f10345n)));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            ((ATBiddingListenerExt) aTBiddingListener).onC2SBiddingResultWithData(ATBiddingResult.success(d2, System.currentTimeMillis() + "", new TTATBiddingNotify(tTClientBidding), ATAdConst.CURRENCY.RMB_CENT), baseAd);
        }
    }

    public synchronized void a(Map<String, Object> map, TTClientBidding tTClientBidding, ATBiddingListener aTBiddingListener) {
        a(map, (BaseAd) null, tTClientBidding, aTBiddingListener);
    }

    public synchronized void a(Map<String, Object> map, BaseAd baseAd, TTClientBidding tTClientBidding, ATBiddingListener aTBiddingListener) {
        double d2;
        if (aTBiddingListener != null) {
            try {
                if (map.containsKey(this.f10345n)) {
                    try {
                        d2 = Double.parseDouble(String.valueOf(map.get(this.f10345n)));
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, System.currentTimeMillis() + "", new TTATBiddingNotify(tTClientBidding), ATAdConst.CURRENCY.RMB_CENT), baseAd);
                } else {
                    d2 = 0.0d;
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, System.currentTimeMillis() + "", new TTATBiddingNotify(tTClientBidding), ATAdConst.CURRENCY.RMB_CENT), baseAd);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Map<String, Object> a(Map<String, Object> map, Map<String, Object> map2) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    if (map2 == null) {
                        map2 = new HashMap();
                    }
                    map2.putAll(map);
                    Object obj = map.get("request_id");
                    if (obj != null) {
                        Object obj2 = map2.get("nw_extra_info");
                        JSONObject jSONObject = obj2 instanceof JSONObject ? (JSONObject) obj2 : new JSONObject();
                        jSONObject.put("request_id", obj.toString());
                        map2.put("nw_extra_info", jSONObject);
                    }
                    return map2;
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return map2;
    }

    public Map<String, Object> a(Object obj, Map<String, Object> map) {
        Map<String, Object> mediaExtraInfo;
        try {
            if (obj instanceof CSJSplashAd) {
                mediaExtraInfo = ((CSJSplashAd) obj).getMediaExtraInfo();
            } else if (obj instanceof TTFullScreenVideoAd) {
                mediaExtraInfo = ((TTFullScreenVideoAd) obj).getMediaExtraInfo();
            } else if (obj instanceof TTRewardVideoAd) {
                mediaExtraInfo = ((TTRewardVideoAd) obj).getMediaExtraInfo();
            } else if (obj instanceof TTNativeExpressAd) {
                mediaExtraInfo = ((TTNativeExpressAd) obj).getMediaExtraInfo();
            } else {
                mediaExtraInfo = obj instanceof TTFeedAd ? ((TTFeedAd) obj).getMediaExtraInfo() : null;
            }
            if (map == null) {
                map = new HashMap<>(8);
            }
            if (mediaExtraInfo != null) {
                map.putAll(mediaExtraInfo);
            }
            return map;
        } catch (Throwable unused) {
            return null;
        }
    }
}
