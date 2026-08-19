package com.anythink.network.sigmob;

import android.content.Context;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingListenerExt;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.sigmob.windad.OnInitializationListener;
import com.sigmob.windad.OnStartListener;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.WindCustomController;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class SigmobATInitManager extends ATInitMediation {
    public static final String SIGMOB_CURRENCY = "USD";
    public static final String TAG = "SigmobATInitManager";

    /* renamed from: k, reason: collision with root package name */
    private static volatile SigmobATInitManager f10175k;

    /* renamed from: l, reason: collision with root package name */
    private static final Map<Object, SigmobEcpm> f10176l = new ConcurrentHashMap(2);

    /* renamed from: e, reason: collision with root package name */
    private boolean f10181e;

    /* renamed from: g, reason: collision with root package name */
    private List<MediationInitCallback> f10183g;

    /* renamed from: i, reason: collision with root package name */
    private WindCustomController f10185i;

    /* renamed from: j, reason: collision with root package name */
    int f10186j;

    /* renamed from: a, reason: collision with root package name */
    final int f10177a = 0;

    /* renamed from: b, reason: collision with root package name */
    final int f10178b = 1;

    /* renamed from: c, reason: collision with root package name */
    final int f10179c = 2;

    /* renamed from: d, reason: collision with root package name */
    private ConcurrentHashMap<String, WeakReference> f10180d = new ConcurrentHashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private final Object f10182f = new Object();

    /* renamed from: h, reason: collision with root package name */
    private int f10184h = 0;

    public class a implements OnInitializationListener {
        public a() {
        }

        @Override // com.sigmob.windad.OnInitializationListener
        public void onInitializationFail(String str) {
            if (ATSDK.isNetworkLogDebug()) {
                String str2 = SigmobATInitManager.TAG;
            }
        }

        @Override // com.sigmob.windad.OnInitializationListener
        public void onInitializationSuccess() {
            if (ATSDK.isNetworkLogDebug()) {
                String str = SigmobATInitManager.TAG;
            }
        }
    }

    public class b implements OnStartListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ WindAds f10188a;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SigmobATInitManager.this.a(true, (String) null);
            }
        }

        /* renamed from: com.anythink.network.sigmob.SigmobATInitManager$b$b, reason: collision with other inner class name */
        public class RunnableC0111b implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f10191a;

            public RunnableC0111b(String str) {
                this.f10191a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                SigmobATInitManager.this.a(false, this.f10191a);
            }
        }

        public b(WindAds windAds) {
            this.f10188a = windAds;
        }

        @Override // com.sigmob.windad.OnStartListener
        public void onStartFail(String str) {
            SigmobATInitManager.this.runOnThreadPool(new RunnableC0111b(str));
        }

        @Override // com.sigmob.windad.OnStartListener
        public void onStartSuccess() {
            SigmobATInitManager.this.b(this.f10188a);
            SigmobATInitManager.this.a(this.f10188a);
            SigmobATInitManager.this.runOnThreadPool(new a());
        }
    }

    public class c implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f10193a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10194b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ATBidRequestInfoListener f10195c;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                SigmobBidRequestInfo sigmobBidRequestInfo = new SigmobBidRequestInfo(cVar.f10193a, cVar.f10194b);
                if (sigmobBidRequestInfo.isValid()) {
                    ATBidRequestInfoListener aTBidRequestInfoListener = c.this.f10195c;
                    if (aTBidRequestInfoListener != null) {
                        aTBidRequestInfoListener.onSuccess(sigmobBidRequestInfo);
                        return;
                    }
                    return;
                }
                ATBidRequestInfoListener aTBidRequestInfoListener2 = c.this.f10195c;
                if (aTBidRequestInfoListener2 != null) {
                    aTBidRequestInfoListener2.onFailed(ATBidRequestInfo.BIDTOKEN_EMPTY_ERROR_TYPE);
                }
            }
        }

        public c(Map map, Map map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
            this.f10193a = map;
            this.f10194b = map2;
            this.f10195c = aTBidRequestInfoListener;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            ATBidRequestInfoListener aTBidRequestInfoListener = this.f10195c;
            if (aTBidRequestInfoListener != null) {
                aTBidRequestInfoListener.onFailed(ATBidRequestInfo.INIT_ERROR_TYPE);
            }
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            SigmobATInitManager.this.runOnThreadPool(new a());
        }
    }

    private SigmobATInitManager() {
    }

    public static String getEcpmCurrency(Object obj) {
        SigmobEcpm sigmobEcpm;
        return (obj == null || (sigmobEcpm = f10176l.get(obj.toString())) == null || TextUtils.isEmpty(sigmobEcpm.getCurrency())) ? "USD" : sigmobEcpm.getCurrency();
    }

    public static int getEcpmInt(Object obj) {
        SigmobEcpm sigmobEcpm;
        if (obj != null && (sigmobEcpm = f10176l.get(obj.toString())) != null && !TextUtils.isEmpty(sigmobEcpm.getEcpm())) {
            try {
                return Integer.parseInt(sigmobEcpm.getEcpm());
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public static SigmobATInitManager getInstance() {
        if (f10175k == null) {
            synchronized (SigmobATInitManager.class) {
                try {
                    if (f10175k == null) {
                        f10175k = new SigmobATInitManager();
                    }
                } finally {
                }
            }
        }
        return f10175k;
    }

    public static void onAdLoadError(String str, String str2, boolean z2, ATBiddingListener aTBiddingListener, ATCustomLoadListener aTCustomLoadListener) {
        if (z2) {
            if (aTBiddingListener != null) {
                aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str2), null);
            }
        } else if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError(str, str2);
        }
    }

    public static void onC2SBiddingResultWithCache(String str, String str2, String str3, ATBiddingListener aTBiddingListener, Object obj, BaseAd baseAd) {
        ATSDK.isNetworkLogDebug();
        if (obj != null && !TextUtils.isEmpty(str)) {
            f10176l.put(obj.toString(), new SigmobEcpm(str, str2));
        }
        try {
            if (TextUtils.isEmpty(str)) {
                onAdLoadError("", "ecpm is null", true, aTBiddingListener, null);
                return;
            }
            if (aTBiddingListener != null) {
                aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(Double.parseDouble(str) / 100.0d, System.currentTimeMillis() + "", new SigmobATBiddingNotice(obj), "CNY".equals(str2) ? ATAdConst.CURRENCY.RMB : ATAdConst.CURRENCY.USD), baseAd);
            }
        } catch (Throwable th) {
            onAdLoadError("", "ecpm is null." + th.getMessage(), true, aTBiddingListener, null);
        }
    }

    public static void onC2SBiddingResultWithData(String str, String str2, String str3, ATBiddingListener aTBiddingListener, Object obj, BaseAd baseAd) {
        if (obj != null && !TextUtils.isEmpty(str)) {
            f10176l.put(obj.toString(), new SigmobEcpm(str, str2));
        }
        try {
            if (TextUtils.isEmpty(str)) {
                onAdLoadError("", "ecpm is null", true, aTBiddingListener, null);
                return;
            }
            if (aTBiddingListener instanceof ATBiddingListenerExt) {
                ((ATBiddingListenerExt) aTBiddingListener).onC2SBiddingResultWithData(ATBiddingResult.success(Double.parseDouble(str) / 100.0d, System.currentTimeMillis() + "", new SigmobATBiddingNotice(obj), "CNY".equals(str2) ? ATAdConst.CURRENCY.RMB : ATAdConst.CURRENCY.USD), baseAd);
            }
        } catch (Throwable th) {
            onAdLoadError("", "ecpm is null. " + th.getMessage(), true, aTBiddingListener, null);
        }
    }

    @Override // com.anythink.core.api.ATInitMediation
    public List getActivityStatus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.sigmob.sdk.base.common.AdActivity");
        return arrayList;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "4.25.12.1.1";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "Sigmob";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.sigmob.windad.WindAds";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return SigmobATConst.getNetworkVersion();
    }

    @Override // com.anythink.core.api.ATInitMediation
    public Map<String, Boolean> getPluginClassStatus() {
        HashMap map = new HashMap();
        map.put("localbroadcastmanager-*.aar", Boolean.FALSE);
        try {
            int i2 = LocalBroadcastManager.f997a;
            map.put("localbroadcastmanager-*.aar", Boolean.TRUE);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            int i3 = LocalBroadcastManager.f997a;
            map.put("localbroadcastmanager-*.aar", Boolean.TRUE);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return map;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public List getProviderStatus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.sigmob.sdk.SigmobFileProvider");
        return arrayList;
    }

    public void initSDK(Context context, Map<String, Object> map) throws SecurityException {
        initSDK(context, map, null);
    }

    public void setIsAdult(boolean z2) {
        this.f10184h = z2 ? 1 : 2;
    }

    public void setShakeStatus() {
        Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(29);
        if (boolIsShakeEnabled != null) {
            WindAds.sharedAds().setSensorStatus(boolIsShakeEnabled.booleanValue());
        }
    }

    public void setWindCustomController(WindCustomController windCustomController) {
        this.f10185i = windCustomController;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) throws SecurityException {
        a();
        try {
            this.f10186j = ATSDK.getPersionalizedAdStatus();
        } catch (Throwable unused) {
        }
        WindAds windAdsSharedAds = WindAds.sharedAds();
        if (windAdsSharedAds != null && windAdsSharedAds.isInit()) {
            b(windAdsSharedAds);
            a(windAdsSharedAds);
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
                return;
            }
            return;
        }
        synchronized (this.f10182f) {
            try {
                if (this.f10181e) {
                    if (mediationInitCallback != null) {
                        this.f10183g.add(mediationInitCallback);
                    }
                    return;
                }
                if (this.f10183g == null) {
                    this.f10183g = new ArrayList();
                }
                this.f10181e = true;
                List<MediationInitCallback> list = this.f10183g;
                if (list != null) {
                    list.add(mediationInitCallback);
                }
                String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
                String stringFromMap2 = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY);
                windAdsSharedAds.setDebugEnable(ATSDK.isNetworkLogDebug());
                WindAdOptions windAdOptions = new WindAdOptions(stringFromMap, stringFromMap2);
                WindCustomController windCustomController = this.f10185i;
                if (windCustomController != null) {
                    windAdOptions.setCustomController(windCustomController);
                }
                setShakeStatus();
                windAdsSharedAds.init(context, windAdOptions, new a());
                windAdsSharedAds.start(new b(windAdsSharedAds));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(WindAds windAds) {
        windAds.setPersonalizedAdvertisingOn(this.f10186j != 2);
        ATSDK.isNetworkLogDebug();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(WindAds windAds) {
        int i2 = this.f10184h;
        if (i2 != 0) {
            windAds.setAdult(i2 == 1);
            ATSDK.isNetworkLogDebug();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, String str) {
        synchronized (this.f10182f) {
            try {
                int size = this.f10183g.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MediationInitCallback mediationInitCallback = this.f10183g.get(i2);
                    if (mediationInitCallback != null) {
                        if (z2) {
                            mediationInitCallback.onSuccess();
                        } else {
                            mediationInitCallback.onFail(str);
                        }
                    }
                }
                this.f10183g.clear();
                this.f10181e = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(String str, WeakReference weakReference) {
        try {
            this.f10180d.put(str, weakReference);
        } catch (Throwable unused) {
        }
    }

    public void a() {
        try {
            for (Map.Entry<String, WeakReference> entry : this.f10180d.entrySet()) {
                if (entry.getValue().get() == null) {
                    this.f10180d.remove(entry.getKey());
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) throws SecurityException {
        getInstance().initSDK(context, map, new c(map, map2, aTBidRequestInfoListener));
    }
}
