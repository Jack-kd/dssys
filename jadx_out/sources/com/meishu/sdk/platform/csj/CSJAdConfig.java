package com.meishu.sdk.platform.csj;

import android.content.Context;
import com.anythink.core.common.f.f;
import com.baidu.mobads.sdk.internal.cb;
import com.bytedance.sdk.openadsdk.LocationProvider;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.b;
import com.meishu.sdk.core.utils.k0;
import com.meishu.sdk.core.utils.y0;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class CSJAdConfig extends b {
    private static final String TAG = "CSJAdConfig";
    private String appName = "";
    private String personalTypeValue = "1";
    private TTAdConfig ttAdConfig;

    private TTAdConfig buildTTConfig(String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (AdSdk.adConfig().getCanUseSdkPersonalRecommend()) {
            this.personalTypeValue = "1";
        } else {
            this.personalTypeValue = "0";
        }
        TTAdConfig.Builder builder = new TTAdConfig.Builder();
        if (k0.f31920b) {
            try {
                Method declaredMethod = TTAdConfig.Builder.class.getDeclaredMethod("useMediation", Boolean.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(builder, Boolean.TRUE);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        builder.appId(str).debug(AdSdk.adConfig().enableDebug()).appName(this.appName).titleBarTheme(1).data(getData(this.personalTypeValue)).allowShowNotify(AdSdk.adConfig().enableNotify()).supportMultiProcess(false).customController(new TTCustomController() { // from class: com.meishu.sdk.platform.csj.CSJAdConfig.3
            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean alist() {
                return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().canReadInstalledPackages() : super.alist();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public String getDevImei() {
                return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().getDevImei() : super.getDevImei();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public String getDevOaid() {
                return AdSdk.getLocalOaid();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public String getMacAddress() {
                return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().getMacAddress() : super.getMacAddress();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public LocationProvider getTTLocation() {
                return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().getTTLocation() : super.getTTLocation();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUseAndroidId() {
                return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().isCanUseAndroidId() : super.isCanUseAndroidId();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUseLocation() {
                if (AdSdk.adConfig().customController() != null) {
                    return AdSdk.adConfig().customController().isCanUseLocation();
                }
                return true;
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUsePermissionRecordAudio() {
                return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().isCanUsePermissionRecordAudio() : super.isCanUsePermissionRecordAudio();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUsePhoneState() {
                if (AdSdk.adConfig().customController() == null) {
                    return super.isCanUsePhoneState();
                }
                if (AdSdk.adConfig().customController().isCsjUsePhoneState()) {
                    return AdSdk.adConfig().customController().isCanUsePhoneState();
                }
                return false;
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUseWifiState() {
                return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().isCanUseWifiState() : super.isCanUseWifiState();
            }

            @Override // com.bytedance.sdk.openadsdk.TTCustomController
            public boolean isCanUseWriteExternal() {
                return AdSdk.adConfig().customController() != null ? AdSdk.adConfig().customController().canUseStoragePermission() : super.isCanUseWriteExternal();
            }
        });
        if (AdSdk.adConfig().userKeywords() != null) {
            builder.keywords(AdSdk.adConfig().userKeywords());
        }
        int iDownloadConfirm = AdSdk.adConfig().downloadConfirm();
        if (iDownloadConfirm == 1) {
            builder.directDownloadNetworkType(new int[0]);
        } else if (iDownloadConfirm != 2) {
            builder.directDownloadNetworkType(4);
        } else {
            builder.directDownloadNetworkType(4, 1);
        }
        builder.debug(AdSdk.adConfig().enableDebug());
        return builder.build();
    }

    private String getData(String str) throws JSONException {
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("name", "personal_ads_type");
            jSONObject.put(f.a.f3244d, str);
            jSONArray.put(jSONObject);
            return jSONArray.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static TTAdManager getTtAdManager() {
        return TTAdSdk.getAdManager();
    }

    public static boolean isInitSuccess() {
        return TTAdSdk.isInitSuccess();
    }

    private void updateData(String str) {
        TTAdSdk.updateAdConfig(new TTAdConfig.Builder().data(getData(str)).build());
    }

    @Override // com.meishu.sdk.core.b
    public void onInit(Context context, String str, String str2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this.appName = y0.b(context);
        if (this.ttAdConfig == null) {
            this.ttAdConfig = buildTTConfig(str);
            try {
                try {
                    TTAdSdk.class.getDeclaredMethod("init", Context.class, TTAdConfig.class).invoke(null, context.getApplicationContext(), this.ttAdConfig);
                    TTAdSdk.class.getDeclaredMethod("start", TTAdSdk.Callback.class).invoke(null, Proxy.newProxyInstance(CSJAdConfig.class.getClassLoader(), new Class[]{TTAdSdk.Callback.class}, new InvocationHandler() { // from class: com.meishu.sdk.platform.csj.CSJAdConfig.1
                        @Override // java.lang.reflect.InvocationHandler
                        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                            cb.f11292o.equals(method.getName());
                            return null;
                        }
                    }));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Exception unused) {
                TTAdSdk.class.getDeclaredMethod("init", Context.class, TTAdConfig.class, TTAdSdk.InitCallback.class).invoke(null, context.getApplicationContext(), this.ttAdConfig, Proxy.newProxyInstance(CSJAdConfig.class.getClassLoader(), new Class[]{TTAdSdk.InitCallback.class}, new InvocationHandler() { // from class: com.meishu.sdk.platform.csj.CSJAdConfig.2
                    @Override // java.lang.reflect.InvocationHandler
                    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                        return null;
                    }
                }));
            }
        }
    }
}
