package com.anythink.network.adx;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.ATUserDeviceInfo;
import com.anythink.core.api.MediationInitCallback;
import com.smartdigimkt.sdk.api.ISDMAdManager;
import com.smartdigimkt.sdk.api.IntegrationCheckListener;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMInitConfig;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.api.SDMSetting;
import com.smartdigimkt.sdk.api.SDMUserDeviceInfo;
import com.smartdigimkt.sdk.api.format.SDMAdHandler;
import com.smartdigimkt.sdk.api.format.SDMLossInfo;
import com.smartdigimkt.sdk.api.format.SDMWinInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AdxATInitManager extends ATInitMediation {

    /* renamed from: A, reason: collision with root package name */
    public static final /* synthetic */ int f9210A = 0;

    /* renamed from: e, reason: collision with root package name */
    private static String f9211e = "AdxATInitManager";

    /* renamed from: f, reason: collision with root package name */
    private static volatile AdxATInitManager f9212f;

    /* renamed from: a, reason: collision with root package name */
    private boolean f9213a;

    /* renamed from: c, reason: collision with root package name */
    private List<MediationInitCallback> f9215c;

    /* renamed from: b, reason: collision with root package name */
    private AtomicBoolean f9214b = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    private final Object f9216d = new Object();

    public class a implements IntegrationCheckListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ MediationInitCallback f9217a;

        public a(MediationInitCallback mediationInitCallback) {
            this.f9217a = mediationInitCallback;
        }

        @Override // com.smartdigimkt.sdk.api.IntegrationCheckListener
        public void onValidationFail(String str) {
            MediationInitCallback mediationInitCallback = this.f9217a;
            if (mediationInitCallback != null) {
                mediationInitCallback.onFail(str);
            }
        }

        @Override // com.smartdigimkt.sdk.api.IntegrationCheckListener
        public void onValidationSucceed() {
            MediationInitCallback mediationInitCallback = this.f9217a;
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
            }
        }
    }

    public class b implements SDMSDK.InitCallBack {
        public b() {
        }

        @Override // com.smartdigimkt.sdk.api.SDMSDK.InitCallBack
        public void fail(String str) {
            String unused = AdxATInitManager.f9211e;
            AdxATInitManager.this.a(false, str);
        }

        @Override // com.smartdigimkt.sdk.api.SDMSDK.InitCallBack
        public void success() {
            AdxATInitManager.this.f9213a = true;
            AdxATRewardRetryTaskContractManager.install();
            AdxATInitManager.this.a(true, "");
        }
    }

    public class c implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f9220a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9221b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f9222c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ ATBidRequestInfoListener f9223d;

        public class a implements ISDMAdManager.BidTokenCallBack {
            public a() {
            }

            @Override // com.smartdigimkt.sdk.api.ISDMAdManager.BidTokenCallBack
            public void onComplete(JSONObject jSONObject) {
                if (jSONObject == null) {
                    c.this.f9223d.onFailed("Adx getBidTokenJSONObject fail");
                    return;
                }
                AdxBidRequestInfo adxBidRequestInfo = new AdxBidRequestInfo(jSONObject);
                c cVar = c.this;
                adxBidRequestInfo.fillLocalExtra(cVar.f9221b, cVar.f9222c);
                c.this.f9223d.onSuccess(adxBidRequestInfo);
            }
        }

        public c(Map map, Map map2, boolean z2, ATBidRequestInfoListener aTBidRequestInfoListener) {
            this.f9220a = map;
            this.f9221b = map2;
            this.f9222c = z2;
            this.f9223d = aTBidRequestInfoListener;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            ATBidRequestInfoListener aTBidRequestInfoListener = this.f9223d;
            if (aTBidRequestInfoListener != null) {
                aTBidRequestInfoListener.onFailed(str);
            }
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            SDMSDK.getInstance().getSDMAdManager().getBidTokenJSONObject(this.f9220a, new a());
        }
    }

    private SDMUserDeviceInfo b(Map<String, Object> map) {
        Object obj = map.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_USER_DEVICE_INFO);
        if (!(obj instanceof ATUserDeviceInfo)) {
            return null;
        }
        ATUserDeviceInfo aTUserDeviceInfo = (ATUserDeviceInfo) obj;
        SDMUserDeviceInfo sDMUserDeviceInfo = new SDMUserDeviceInfo();
        sDMUserDeviceInfo.setDevGaid(aTUserDeviceInfo.getDevGaid());
        sDMUserDeviceInfo.setDevImei(aTUserDeviceInfo.getDevImei());
        sDMUserDeviceInfo.setDevOaid(aTUserDeviceInfo.getDevOaid());
        sDMUserDeviceInfo.setDevUID2Token(aTUserDeviceInfo.getDevUID2Token());
        return sDMUserDeviceInfo;
    }

    public static AdxATInitManager getInstance() {
        if (f9212f == null) {
            synchronized (AdxATInitManager.class) {
                try {
                    if (f9212f == null) {
                        f9212f = new AdxATInitManager();
                    }
                } finally {
                }
            }
        }
        return f9212f;
    }

    public void c(Map<String, Object> map) {
        SDMSetting setting = SDMSDK.getInstance().getSetting();
        Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(66);
        if (boolIsShakeEnabled != null) {
            if (boolIsShakeEnabled.booleanValue()) {
                setting.undeniedUploadDeviceInfo("sensor_deny");
            } else {
                setting.deniedUploadDeviceInfo("sensor_deny");
            }
        }
        setting.setPersonalizedAdStatus(ATSDK.getPersionalizedAdStatus());
        Object obj = map.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_EXCLUDE_PKG_LIST);
        if (obj == null || !(obj instanceof List)) {
            return;
        }
        try {
            setting.setExcludePkgList((List) obj);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "6.5.77.1.1";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "Adx";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.smartdigimkt.sdk.api.SDMSDK";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return SDMSDK.getInstance().getSDKVersion();
    }

    @Override // com.anythink.core.api.ATInitMediation
    public List getResourceStatus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("sdm_myoffer_full_screen");
        arrayList.add("sdm_myoffer_splash_ad_layout_asseblem_vertical_port");
        return arrayList;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        if (ATInitMediation.getIntFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PRECHECK_MODE, 0) == 1) {
            a(context, map);
            SDMSDK.getInstance().integrationChecking(context, map, new a(mediationInitCallback));
            return;
        }
        c(map);
        if (this.f9213a) {
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
                return;
            }
            return;
        }
        synchronized (this.f9216d) {
            try {
                if (this.f9215c == null) {
                    this.f9215c = new ArrayList();
                }
                if (mediationInitCallback != null) {
                    this.f9215c.add(mediationInitCallback);
                }
                if (this.f9214b.get()) {
                    return;
                }
                this.f9214b.set(true);
                a(context, map);
                SDMInitConfig.Builder builder = new SDMInitConfig.Builder(ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_APP_ID, ""), ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_APP_KEY, ""));
                String bundleName = getBundleName();
                if (!TextUtils.isEmpty(bundleName)) {
                    builder.setBundleName(bundleName);
                }
                String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_SYSTEM_DEV_FRAMEWORK_TYPE);
                if (!TextUtils.isEmpty(stringFromMap)) {
                    builder.setSystemDevFrameworkType(stringFromMap);
                }
                builder.setExtraMap(map);
                SDMSDK.getInstance().init(context, builder.build());
                SDMSDK.getInstance().start(new b());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void notifyWLInfo(int i2, Map<String, Object> map, SDMAdHandler sDMAdHandler) {
        if (map == null || map.isEmpty() || sDMAdHandler == null) {
            return;
        }
        if (i2 == 1) {
            sDMAdHandler.notifyWin(new SDMWinInfo(0.0d, SDMAdConst.CURRENCY.USD, map));
        } else if (i2 == 2) {
            sDMAdHandler.notifyLoss(new SDMLossInfo(SDMLossInfo.LOSS_REASON.LOSS_TO_NORMAL, 0.0d, SDMAdConst.CURRENCY.USD, map));
        }
    }

    @Override // com.anythink.core.api.ATInitMediation
    public boolean setUserDataConsent(Context context, boolean z2, boolean z3) {
        SDMSetting setting;
        if (!z3 || (setting = SDMSDK.getInstance().getSetting()) == null || ATSDK.getGDPRDataLevel(context) == 2) {
            return true;
        }
        setting.setGDPRUploadDataLevel(context, ATSDK.getGDPRDataLevel(context));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, String str) {
        synchronized (this.f9216d) {
            try {
                int size = this.f9215c.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MediationInitCallback mediationInitCallback = this.f9215c.get(i2);
                    if (mediationInitCallback != null) {
                        if (z2) {
                            mediationInitCallback.onSuccess();
                        } else {
                            mediationInitCallback.onFail(str);
                        }
                    }
                }
                this.f9215c.clear();
                this.f9214b.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener, boolean z2) {
        getInstance().initSDK(context, map, new c(map, map2, z2, aTBidRequestInfoListener));
    }

    private void a(Context context, Map<String, Object> map) {
        SDMSetting setting = SDMSDK.getInstance().getSetting();
        setting.setDebug(ATSDK.isNetworkLogDebug());
        setting.setUserDeviceInfo(b(map));
        setting.deniedUploadDeviceInfo(a(map));
        if (map.containsKey(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_LOCATION)) {
            Object obj = map.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_LOCATION);
            if (obj instanceof Location) {
                setting.setLocation((Location) obj);
            }
        }
        setting.setWxInstallStatus(ATInitMediation.getBooleanFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_WX_INSTALL_STATUS));
        setting.setEnableGetRunningAppProcesses(ATInitMediation.getBooleanFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_ENABLE_GET_RUNNING_APP_PROCESSES));
        setting.setEnableGetDeviceInfoInBg(ATInitMediation.getBooleanFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_ENABLE_GET_DEVICE_INFO_IN_BG));
        setting.setInspectInterval(ATInitMediation.getLongFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_INSPECT_INTERVAL));
        setting.setDelayInspectTime(ATInitMediation.getLongFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_DELAY_INSPECT_TIME));
        if (ATSDK.getGDPRDataLevel(context) != 2) {
            setting.setGDPRUploadDataLevel(context, ATSDK.getGDPRDataLevel(context));
        }
        setting.setPersonalizedAdStatus(ATSDK.getPersionalizedAdStatus());
        setting.setWxAppId(ATInitMediation.getStringFromMap(map, ATAdConst.KEY.WECHAT_APPID));
        try {
            if (ATInitMediation.getBooleanFromMap(map, "app_coppa_switch")) {
                setting.setTagForChildDirectedTreatment(true);
            }
        } catch (Throwable unused) {
        }
    }

    private String[] a(Map<String, Object> map) {
        if (map != null && map.containsKey(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_DENNY_DEVICE_INFO)) {
            Object obj = map.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_DENNY_DEVICE_INFO);
            if (obj instanceof String[]) {
                return (String[]) obj;
            }
        }
        return null;
    }
}
