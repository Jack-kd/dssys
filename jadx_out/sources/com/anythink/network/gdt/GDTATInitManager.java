package com.anythink.network.gdt;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.network.gdt.GDTATConst;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class GDTATInitManager extends ATInitMediation {
    public static final String TAG = "GDTATInitManager";

    /* renamed from: k, reason: collision with root package name */
    private static volatile GDTATInitManager f9661k;

    /* renamed from: d, reason: collision with root package name */
    private String f9665d;

    /* renamed from: f, reason: collision with root package name */
    private boolean f9667f;

    /* renamed from: i, reason: collision with root package name */
    private List<MediationInitCallback> f9670i;

    /* renamed from: a, reason: collision with root package name */
    private Map<String, WeakReference> f9662a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    private Map<String, RewardVideoAD> f9663b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    private Map<String, UnifiedInterstitialAD> f9664c = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    private final Object f9666e = new Object();

    /* renamed from: h, reason: collision with root package name */
    private final Object f9669h = new Object();

    /* renamed from: j, reason: collision with root package name */
    int f9671j = 0;

    /* renamed from: g, reason: collision with root package name */
    private AtomicBoolean f9668g = new AtomicBoolean(false);

    public class a implements GDTAdSdk.OnStartListener {

        /* renamed from: com.anythink.network.gdt.GDTATInitManager$a$a, reason: collision with other inner class name */
        public class RunnableC0101a implements Runnable {
            public RunnableC0101a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                GDTATInitManager.this.f9667f = true;
                GDTATInitManager.this.a(true, null, null);
            }
        }

        public class b implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Exception f9674a;

            public b(Exception exc) {
                this.f9674a = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                GDTATInitManager.this.a(false, "", "GDT initSDK failed." + this.f9674a.getMessage());
            }
        }

        public a() {
        }

        @Override // com.qq.e.comm.managers.GDTAdSdk.OnStartListener
        public void onStartFailed(Exception exc) {
            GDTATInitManager.this.runOnThreadPool(new b(exc));
        }

        @Override // com.qq.e.comm.managers.GDTAdSdk.OnStartListener
        public void onStartSuccess() {
            GDTATInitManager.this.runOnThreadPool(new RunnableC0101a());
        }
    }

    public class b implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f9676a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9677b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ATBidRequestInfoListener f9678c;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                GDTBidRequestInfo gDTBidRequestInfo;
                synchronized (GDTATInitManager.this.f9666e) {
                    b bVar = b.this;
                    gDTBidRequestInfo = new GDTBidRequestInfo(bVar.f9676a, bVar.f9677b);
                }
                if (gDTBidRequestInfo.isValid()) {
                    ATBidRequestInfoListener aTBidRequestInfoListener = b.this.f9678c;
                    if (aTBidRequestInfoListener != null) {
                        aTBidRequestInfoListener.onSuccess(gDTBidRequestInfo);
                        return;
                    }
                    return;
                }
                ATBidRequestInfoListener aTBidRequestInfoListener2 = b.this.f9678c;
                if (aTBidRequestInfoListener2 != null) {
                    aTBidRequestInfoListener2.onFailed(ATBidRequestInfo.BIDTOKEN_EMPTY_ERROR_TYPE);
                }
            }
        }

        public b(Map map, Map map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
            this.f9676a = map;
            this.f9677b = map2;
            this.f9678c = aTBidRequestInfoListener;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            ATBidRequestInfoListener aTBidRequestInfoListener = this.f9678c;
            if (aTBidRequestInfoListener != null) {
                aTBidRequestInfoListener.onFailed(ATBidRequestInfo.INIT_ERROR_TYPE);
            }
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            GDTATInitManager.this.runOnThreadPool(new a());
        }
    }

    private GDTATInitManager() {
    }

    public static GDTATInitManager getInstance() {
        if (f9661k == null) {
            synchronized (GDTATInitManager.class) {
                try {
                    if (f9661k == null) {
                        f9661k = new GDTATInitManager();
                    }
                } finally {
                }
            }
        }
        return f9661k;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public List getActivityStatus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.qq.e.ads.ADActivity");
        arrayList.add("com.qq.e.ads.PortraitADActivity");
        arrayList.add("com.qq.e.ads.LandscapeADActivity");
        arrayList.add("com.qq.e.ads.RewardvideoPortraitADActivity");
        arrayList.add("com.qq.e.ads.RewardvideoLandscapeADActivity");
        return arrayList;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "4.690.1560.1.2";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "Tencent";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.qq.e.ads.ADActivity";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return GDTATConst.getNetworkVersion();
    }

    @Override // com.anythink.core.api.ATInitMediation
    public List getServiceStatus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.qq.e.comm.DownloadService");
        return arrayList;
    }

    public synchronized void initSDK(Context context, Map<String, Object> map) {
        initSDK(context, map, null);
    }

    public boolean isPlayMute(int i2) {
        Boolean bool = ATSDKGlobalSetting.isGlobalMute;
        return bool != null ? bool.booleanValue() : i2 == 1;
    }

    public void setExtraUserData(Map<String, Object> map) {
        try {
            HashMap map2 = new HashMap();
            Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(8);
            if (boolIsShakeEnabled != null) {
                map2.put("sensor_ts", boolIsShakeEnabled.booleanValue() ? "1" : "0");
            }
            if (map != null) {
                Object obj = map.get("lng");
                if (obj instanceof String) {
                    map2.put("lng", (String) obj);
                }
                Object obj2 = map.get("lat");
                if (obj2 instanceof String) {
                    map2.put("lat", (String) obj2);
                }
                Object obj3 = map.get(GDTATConst.EXTRA_DATA.LOC_TIME);
                if (obj3 instanceof String) {
                    map2.put(GDTATConst.EXTRA_DATA.LOC_TIME, (String) obj3);
                }
                Object obj4 = map.get(GDTATConst.EXTRA_DATA.WXOPENID);
                if (obj4 instanceof String) {
                    map2.put(GDTATConst.EXTRA_DATA.WXOPENID, (String) obj4);
                }
            }
            map2.toString();
            if (map2.isEmpty()) {
                return;
            }
            GlobalSetting.setExtraUserData(map2);
        } catch (Exception unused) {
        }
    }

    public void setGDTATCustomController(GDTATCustomController gDTATCustomController) {
        if (gDTATCustomController != null) {
            GlobalSetting.setAgreePrivacyStrategy(gDTATCustomController.getAgreePrivacyStrategy());
            try {
                HashMap map = new HashMap();
                map.put("mac_address", Boolean.valueOf(gDTATCustomController.isCanUseMacAddress()));
                map.put("android_id", Boolean.valueOf(gDTATCustomController.isCanUseAndroidId()));
                map.put("device_id", Boolean.valueOf(gDTATCustomController.isCanUseDeviceId()));
                GlobalSetting.setAgreeReadPrivacyInfo(map);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void b() {
        this.f9664c.clear();
    }

    public void c() {
        this.f9663b.clear();
    }

    @Override // com.anythink.core.api.ATInitMediation
    public synchronized void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        try {
            this.f9671j = ATSDK.getPersionalizedAdStatus();
        } catch (Throwable unused) {
        }
        try {
            if (this.f9671j == 2) {
                GlobalSetting.setPersonalizedState(1);
            } else {
                GlobalSetting.setPersonalizedState(0);
            }
            if (ATSDK.isNetworkLogDebug()) {
                GlobalSetting.getPersonalizedState();
            }
            a();
            if (this.f9667f) {
                if (mediationInitCallback != null) {
                    mediationInitCallback.onSuccess();
                }
                return;
            }
            synchronized (this.f9669h) {
                try {
                    if (this.f9668g.get()) {
                        if (mediationInitCallback != null) {
                            this.f9670i.add(mediationInitCallback);
                        }
                        return;
                    }
                    if (this.f9670i == null) {
                        this.f9670i = new ArrayList();
                    }
                    this.f9668g.set(true);
                    String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
                    if (mediationInitCallback != null) {
                        this.f9670i.add(mediationInitCallback);
                    }
                    if (map.containsKey(ATInitMediation.KEY_LOCAL)) {
                        this.f9665d = stringFromMap;
                    } else {
                        String str = this.f9665d;
                        if (str != null && !TextUtils.equals(str, stringFromMap)) {
                            checkToSaveInitData(getNetworkName(), map, this.f9665d);
                            this.f9665d = null;
                        }
                    }
                    GDTAdSdk.initWithoutStart(context.getApplicationContext(), stringFromMap);
                    GDTAdSdk.start(new a());
                } finally {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean b(Map map, Map<String, Object> map2) {
        try {
            map.put("meSrc", "299");
            Object obj = map2.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.MEDIATION_WF_ID);
            map.put("thrmei", obj != null ? obj.toString() : "");
        } catch (Exception unused) {
        }
        if (ATInitMediation.getIntFromMap(map2, "load_params_switch", 1) == 2) {
            map.toString();
            return true;
        }
        Object obj2 = map2.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.STACK_INFO);
        map.put("staIn", obj2 != null ? obj2.toString() : "");
        map.toString();
        return true;
    }

    public void a(String str, WeakReference weakReference) {
        try {
            this.f9662a.put(str, weakReference);
        } catch (Throwable unused) {
        }
    }

    public void a(String str, RewardVideoAD rewardVideoAD) {
        this.f9663b.clear();
        this.f9663b.put(str, rewardVideoAD);
    }

    public void a(String str, UnifiedInterstitialAD unifiedInterstitialAD) {
        this.f9664c.clear();
        this.f9664c.put(str, unifiedInterstitialAD);
    }

    public void a() {
        try {
            for (Map.Entry<String, WeakReference> entry : this.f9662a.entrySet()) {
                if (entry.getValue().get() == null) {
                    this.f9662a.remove(entry.getKey());
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, String str, String str2) {
        synchronized (this.f9669h) {
            try {
                int size = this.f9670i.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MediationInitCallback mediationInitCallback = this.f9670i.get(i2);
                    if (mediationInitCallback != null) {
                        if (z2) {
                            mediationInitCallback.onSuccess();
                        } else {
                            mediationInitCallback.onFail(str + " | " + str2);
                        }
                    }
                }
                this.f9670i.clear();
                this.f9668g.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int a(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }

    public void a(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        getInstance().initSDK(context, map, new b(map, map2, aTBidRequestInfoListener));
    }

    public LoadAdParams a(Map<String, Object> map) {
        HashMap map2 = new HashMap();
        if (!b(map2, map)) {
            return null;
        }
        LoadAdParams loadAdParams = new LoadAdParams();
        loadAdParams.setDevExtra(map2);
        return loadAdParams;
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
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("request_id", obj.toString());
                        map2.put("nw_extra_info", jSONObject);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return map2;
    }
}
