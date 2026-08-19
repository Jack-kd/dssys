package com.anythink.network.baidu;

import android.content.Context;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingListenerExt;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATCustomLoadListenerExt;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.baidu.mobads.sdk.api.BDAdConfig;
import com.baidu.mobads.sdk.api.ExpressInterstitialAd;
import com.baidu.mobads.sdk.api.FullScreenVideoAd;
import com.baidu.mobads.sdk.api.MobadsPermissionSettings;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.RewardVideoAd;
import com.baidu.mobads.sdk.api.SplashAd;
import com.varbto.utils.api.UtilConst;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class BaiduATInitManager extends ATInitMediation {

    /* renamed from: h, reason: collision with root package name */
    private static final String f9316h = "BaiduATInitManager";

    /* renamed from: i, reason: collision with root package name */
    private static volatile BaiduATInitManager f9317i = null;

    /* renamed from: j, reason: collision with root package name */
    protected static final String f9318j = "AT_BAIDU_C2S_";

    /* renamed from: a, reason: collision with root package name */
    Map<String, Map<String, BaiduATBiddingInfo>> f9319a;

    /* renamed from: c, reason: collision with root package name */
    private BDAdConfig.Builder f9321c;

    /* renamed from: e, reason: collision with root package name */
    private String f9323e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f9324f;

    /* renamed from: b, reason: collision with root package name */
    boolean f9320b = false;

    /* renamed from: d, reason: collision with root package name */
    int f9322d = 0;

    /* renamed from: g, reason: collision with root package name */
    private final Object f9325g = new Object();

    public interface InitCallback {
        void onError(Throwable th);

        void onSuccess();
    }

    private BaiduATInitManager() {
    }

    public static BaiduATInitManager getInstance() {
        if (f9317i == null) {
            synchronized (BaiduATInitManager.class) {
                try {
                    if (f9317i == null) {
                        f9317i = new BaiduATInitManager();
                    }
                } finally {
                }
            }
        }
        return f9317i;
    }

    public synchronized String a(String str, Object obj, double d2, Object obj2) {
        String str2;
        try {
            if (this.f9319a == null) {
                this.f9319a = new ConcurrentHashMap(3);
            }
            Map<String, BaiduATBiddingInfo> concurrentHashMap = this.f9319a.get(str);
            if (concurrentHashMap == null) {
                concurrentHashMap = new ConcurrentHashMap<>(2);
                this.f9319a.put(str, concurrentHashMap);
            }
            str2 = f9318j + UUID.randomUUID().toString();
            concurrentHashMap.put(str2, new BaiduATBiddingInfo(obj, d2, obj2));
        } catch (Throwable th) {
            throw th;
        }
        return str2;
    }

    public synchronized BaiduATBiddingInfo b(String str, String str2) {
        Map<String, BaiduATBiddingInfo> map;
        Map<String, Map<String, BaiduATBiddingInfo>> map2 = this.f9319a;
        if (map2 == null || (map = map2.get(str)) == null) {
            return null;
        }
        return map.remove(str2);
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "9.450.1.2";
    }

    public String getApp_id() {
        return this.f9323e;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "Baidu";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.baidu.mobads.sdk.api.BDAdConfig";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return BaiduATConst.getNetworkVersion();
    }

    public void initSDK(Context context, Map<String, Object> map) {
        initSDK(context, map, null);
    }

    public void setBDAdConfigBuilder(BDAdConfig.Builder builder) {
        this.f9321c = builder;
    }

    public void setBaiduATCustomController(BaiduATCustomController baiduATCustomController) {
        if (baiduATCustomController != null) {
            MobadsPermissionSettings.setPermissionReadDeviceID(baiduATCustomController.getPermissionReadDeviceID());
            MobadsPermissionSettings.setPermissionLocation(baiduATCustomController.getPermissionLocation());
            MobadsPermissionSettings.setPermissionStorage(baiduATCustomController.getPermissionStorage());
            MobadsPermissionSettings.setPermissionAppList(baiduATCustomController.getPermissionAppList());
            MobadsPermissionSettings.setPermissionOAID(baiduATCustomController.getPermissionOAID());
            MobadsPermissionSettings.setPermissionDeviceInfo(baiduATCustomController.getPermissionDeviceInfo());
            MobadsPermissionSettings.setPermissionAppUpdate(baiduATCustomController.getPermissionAppUpdate());
            MobadsPermissionSettings.setPermissionRunningApp(baiduATCustomController.getPermissionRunningApp());
            this.f9320b = true;
        }
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        initSDK(context, map, false, mediationInitCallback);
    }

    public void initSDK(Context context, Map<String, Object> map, boolean z2, MediationInitCallback mediationInitCallback) {
        try {
            this.f9322d = ATSDK.getPersionalizedAdStatus();
        } catch (Throwable unused) {
        }
        MobadsPermissionSettings.setLimitPersonalAds(this.f9322d == 2);
        if (!this.f9320b) {
            MobadsPermissionSettings.setPermissionReadDeviceID(true);
            MobadsPermissionSettings.setPermissionOAID(true);
            MobadsPermissionSettings.setPermissionAppList(true);
            MobadsPermissionSettings.setPermissionStorage(true);
            MobadsPermissionSettings.setPermissionLocation(true);
        }
        if (ATSDK.isNetworkLogDebug()) {
            MobadsPermissionSettings.getLimitPersonalAdsStatus();
        }
        if (this.f9324f) {
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
                return;
            }
            return;
        }
        synchronized (this.f9325g) {
            try {
            } catch (Throwable th) {
                th.printStackTrace();
                if (mediationInitCallback != null) {
                    mediationInitCallback.onFail(th.getMessage());
                }
            } finally {
            }
            if (this.f9324f) {
                if (mediationInitCallback != null) {
                    mediationInitCallback.onSuccess();
                }
                return;
            }
            this.f9323e = (String) map.get("app_id");
            String string = "";
            Object obj = map.get(ATAdConst.KEY.WECHAT_APPID);
            if (obj != null) {
                string = obj.toString();
            }
            if (this.f9321c == null) {
                this.f9321c = new BDAdConfig.Builder();
            }
            this.f9321c.setAppsid(this.f9323e);
            if (!TextUtils.isEmpty(string)) {
                this.f9321c.setWXAppid(string);
            }
            this.f9321c.build(context).init();
            this.f9324f = true;
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
            }
        }
    }

    private void b(String str, RequestParameters.Builder builder, Map<String, Object> map) {
        try {
            Object obj = map.get(BaiduATConst.REQUEST_PARAMS_CUST_EXT);
            if (obj != null && (obj instanceof Map)) {
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    try {
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        if ((key instanceof String) && (value instanceof String)) {
                            if (ATSDK.isNetworkLogDebug()) {
                                Objects.toString(key);
                                Objects.toString(value);
                            }
                            builder.addCustExt((String) key, (String) value);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        } catch (Throwable unused) {
        }
        try {
            Object obj2 = map.get(BaiduATConst.REQUEST_PARAMS_EXT);
            if (obj2 == null || !(obj2 instanceof Map)) {
                return;
            }
            for (Map.Entry entry2 : ((Map) obj2).entrySet()) {
                try {
                    Object key2 = entry2.getKey();
                    Object value2 = entry2.getValue();
                    if ((key2 instanceof String) && (value2 instanceof String)) {
                        if (ATSDK.isNetworkLogDebug()) {
                            Objects.toString(key2);
                            Objects.toString(value2);
                        }
                        builder.addExtra((String) key2, (String) value2);
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public synchronized void a(String str, String str2) {
        Map<String, BaiduATBiddingInfo> map;
        Map<String, Map<String, BaiduATBiddingInfo>> map2 = this.f9319a;
        if (map2 != null && (map = map2.get(str)) != null) {
            map.remove(str2);
        }
    }

    public void a(String str, RequestParameters.Builder builder, Map<String, Object> map, Map<String, Object> map2) {
        b(str, builder, map2);
        a(str, builder, map);
    }

    private void a(String str, RequestParameters.Builder builder, Map<String, Object> map) {
        int intFromMap = ATInitMediation.getIntFromMap(map, "bd_a", -1);
        int intFromMap2 = ATInitMediation.getIntFromMap(map, "bd_b", -1);
        int intFromMap3 = ATInitMediation.getIntFromMap(map, "bd_c", -1);
        int intFromMap4 = ATInitMediation.getIntFromMap(map, "bd_s", -1);
        String stringFromMap = ATInitMediation.getStringFromMap(map, "bd_e", "");
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, "bd_f", "");
        int intFromMap5 = ATInitMediation.getIntFromMap(map, "bd_n", -1);
        int intFromMap6 = ATInitMediation.getIntFromMap(map, "bd_o", -1);
        String stringFromMap3 = ATInitMediation.getStringFromMap(map, "bd_r", "");
        if (intFromMap != -1) {
            builder.addCustExt("A", String.valueOf(intFromMap));
        }
        if (intFromMap2 != -1) {
            builder.addCustExt(UtilConst.CRASH_CAT_B, String.valueOf(intFromMap2));
        }
        if (intFromMap3 != -1) {
            builder.addCustExt(UtilConst.CRASH_CAT_C, String.valueOf(intFromMap3));
        }
        if (intFromMap4 != -1) {
            builder.addCustExt("S", String.valueOf(intFromMap4));
        }
        if (intFromMap5 != -1) {
            builder.addCustExt("N", String.valueOf(intFromMap5));
        }
        if (intFromMap6 != -1) {
            builder.addCustExt("O", String.valueOf(intFromMap6));
        }
        if (!TextUtils.isEmpty(stringFromMap)) {
            builder.addCustExt(ExifInterface.LONGITUDE_EAST, stringFromMap);
        }
        if (!TextUtils.isEmpty(stringFromMap2)) {
            builder.addCustExt("F", stringFromMap2);
        }
        if (!TextUtils.isEmpty(stringFromMap3)) {
            builder.addCustExt("R", stringFromMap3);
        }
        map.toString();
    }

    public void a(boolean z2, Object obj, ATCustomLoadListener aTCustomLoadListener, ATBiddingListener aTBiddingListener) {
        String eCPMLevel;
        double d2;
        try {
            if (z2) {
                if (obj instanceof RewardVideoAd) {
                    eCPMLevel = ((RewardVideoAd) obj).getECPMLevel();
                } else if (obj instanceof FullScreenVideoAd) {
                    eCPMLevel = ((FullScreenVideoAd) obj).getECPMLevel();
                } else if (obj instanceof ExpressInterstitialAd) {
                    eCPMLevel = ((ExpressInterstitialAd) obj).getECPMLevel();
                } else {
                    eCPMLevel = obj instanceof SplashAd ? ((SplashAd) obj).getECPMLevel() : "";
                }
                if (TextUtils.isEmpty(eCPMLevel)) {
                    eCPMLevel = "0";
                }
                try {
                    d2 = Double.parseDouble(eCPMLevel);
                } catch (Throwable th) {
                    th.printStackTrace();
                    d2 = 0.0d;
                }
                if (aTBiddingListener instanceof ATBiddingListenerExt) {
                    ((ATBiddingListenerExt) aTBiddingListener).onC2SBiddingResultWithData(ATBiddingResult.success(d2, System.currentTimeMillis() + "", new BaiduATBiddingNotice(obj), ATAdConst.CURRENCY.RMB_CENT), null);
                    return;
                }
                return;
            }
            if (aTCustomLoadListener instanceof ATCustomLoadListenerExt) {
                ((ATCustomLoadListenerExt) aTCustomLoadListener).onAdDataLoadedWithAds(new BaseAd[0]);
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public Map<String, Object> a(Object obj, Map<String, Object> map, Map<String, Object> map2) {
        if (obj != null) {
            if (map == null) {
                try {
                    map = new HashMap();
                } catch (Throwable unused) {
                }
            }
            Object obj2 = map.get("nw_extra_info");
            JSONObject jSONObject = obj2 instanceof JSONObject ? (JSONObject) obj2 : new JSONObject();
            jSONObject.put("request_id", obj.toString());
            if (map2 != null) {
                int intFromMap = ATInitMediation.getIntFromMap(map2, "bd_n", -1);
                String stringFromMap = ATInitMediation.getStringFromMap(map2, "bd_r", "");
                if (intFromMap != -1) {
                    jSONObject.put("bd_n", intFromMap);
                }
                if (!TextUtils.isEmpty(stringFromMap)) {
                    jSONObject.put("bd_r", stringFromMap);
                }
            }
            map.put("nw_extra_info", jSONObject);
        }
        return map;
    }
}
