package com.anythink.core.api;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.util.Log;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.u;
import com.anythink.core.common.g.b;
import com.anythink.core.common.j.a;
import com.anythink.core.common.m.h;
import com.anythink.core.common.v.o;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ATSDK {
    private static boolean HAS_INIT = false;
    public static final int NONPERSONALIZED = 1;
    public static final int PERSONALIZED = 0;
    public static final int UNKNOWN = 2;

    private ATSDK() {
    }

    public static void addCustomAdapterConfig(String str, ATCustomAdapterConfig aTCustomAdapterConfig) {
        s.b().a(str, aTCustomAdapterConfig);
    }

    public static void checkIsEuTraffic(Context context, NetTrafficeCallback netTrafficeCallback) {
        u.a(context).a(netTrafficeCallback, "");
    }

    public static void deniedUploadDeviceInfo(String... strArr) {
        s.b().a(strArr);
    }

    public static void getArea(final ATAreaCallback aTAreaCallback) {
        if (aTAreaCallback == null) {
            return;
        }
        new h().a(0, new com.anythink.core.common.m.s() { // from class: com.anythink.core.api.ATSDK.1
            @Override // com.anythink.core.common.m.s
            public final void onLoadCanceled(int i2) {
                aTAreaCallback.onErrorCallback("Request cancel");
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadError(int i2, String str, AdError adError) {
                aTAreaCallback.onErrorCallback(adError.printStackTrace());
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadFinish(int i2, Object obj) {
                try {
                    if (!(obj instanceof JSONObject)) {
                        aTAreaCallback.onErrorCallback("There is no result.");
                        return;
                    }
                    JSONObject jSONObject = (JSONObject) obj;
                    if (!jSONObject.has("area")) {
                        aTAreaCallback.onErrorCallback("There is no result.");
                    } else {
                        aTAreaCallback.onResultCallback(jSONObject.optString("area"));
                    }
                } catch (Throwable unused) {
                    aTAreaCallback.onErrorCallback("Internal error");
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadStart(int i2) {
            }
        });
    }

    public static int getGDPRDataLevel(Context context) {
        return u.a(context).a();
    }

    public static int getPersionalizedAdStatus() {
        return s.b().e();
    }

    public static int getRequireAdapterBridgeVersion() {
        return 1;
    }

    public static String getSDKVersionName() {
        return o.a();
    }

    public static void init(Context context, String str, String str2) {
        init(context, str, str2, null);
    }

    public static void initCustomMap(Map<String, Object> map) {
        s.b().a(map);
    }

    public static void initPlacementCustomMap(String str, Map<String, Object> map) {
        s.b().a(str, map);
    }

    public static void integrationChecking(Context context) {
        s.b().b(context);
    }

    public static boolean isCnSDK() {
        s.b();
        return true;
    }

    public static boolean isEUTraffic(Context context) {
        return u.a(context).d();
    }

    public static boolean isNetworkLogDebug() {
        return s.b().G();
    }

    public static void putFilter(String str, ATAdFilter aTAdFilter) {
        s.b().a(str, aTAdFilter);
    }

    public static void registerDeviceRiskListener(IATDeviceRiskListener iATDeviceRiskListener) {
        s.b().a(iATDeviceRiskListener);
    }

    public static void removeFilterWithPlacementId(String str) {
        s.b().t(str);
    }

    public static void removeFilters() {
        s.b().aa();
    }

    public static void setATAdFilter(String[] strArr, IATAdFilter iATAdFilter) {
        s.b().a(strArr, iATAdFilter);
    }

    public static void setATUserDeviceInfo(ATUserDeviceInfo aTUserDeviceInfo) {
        s.b().a(aTUserDeviceInfo);
    }

    public static void setAdLogoVisible(boolean z2) {
        s.b().c(z2);
    }

    public static void setAllowedShowNetworkFirmIdList(String str, List<String> list) {
        s.b().c(str, list);
    }

    public static void setBundleName(String str) {
        s.b().s(str);
    }

    public static void setChannel(String str) {
        if (o.a(str)) {
            s.b().e(str);
        }
    }

    public static void setChannelSource(int i2) {
        s.b().d(i2);
    }

    public static void setDebuggerConfig(Context context, String str, ATDebuggerConfig aTDebuggerConfig) {
        s.b().a(context, str, aTDebuggerConfig);
    }

    public static void setDeviceInformationData(Map<String, Object> map) {
        s.b().c(map);
    }

    public static void setExcludePackageList(List<String> list) {
        s.b().a(list);
    }

    public static void setFilterAdSourceIdList(String str, List<String> list) {
        s.b().a(str, list);
    }

    public static void setFilterNetworkFirmIdList(String str, List<String> list) {
        s.b().b(str, list);
    }

    public static void setForbidNetworkFirmIdList(List<String> list) {
        s.b().b(list);
    }

    public static void setForbidShowNetworkFirmIdList(String str, List<String> list) {
        s.b().d(str, list);
    }

    public static void setGDPRUploadDataLevel(Context context, int i2) {
        if (context == null) {
            Log.e("anythink", "setGDPRUploadDataLevel: context should not be null");
        } else if (i2 == 0 || i2 == 1) {
            u.a(context).a(i2);
        } else {
            Log.e("anythink", "GDPR level setting error!!! Level must be PERSONALIZED or NONPERSONALIZED.");
        }
    }

    public static void setInitType(int i2) {
        s.b().b(i2);
    }

    public static void setLocalStrategyAssetPath(Context context, String str) {
        s.b();
        s.a(context, str);
    }

    public static void setLocation(Location location) {
        s.b().a(location);
    }

    public static void setNetworkLogDebug(boolean z2) {
        s.b().b(z2);
    }

    public static void setPersonalizedAdStatus(int i2) {
        s.b().a(i2);
    }

    public static void setRiskFilterNetworkFirmIdList(int i2, List<String> list) {
        s.b().a(i2, list);
    }

    public static void setSharedPlacementConfig(ATSharedPlacementConfig aTSharedPlacementConfig) {
        s.b();
        s.a(aTSharedPlacementConfig);
    }

    public static void setSubChannel(String str) {
        if (o.b(str)) {
            s.b().f(str);
        }
    }

    public static void setSupportDomainCountry(String... strArr) {
        b.f3506a = strArr;
    }

    public static void setSystemDevFragmentType(String str) {
        s.b().r(str);
    }

    public static void setUseHTTP(boolean z2) {
        s.b().d(z2);
    }

    public static void setWXAppId(String str) {
        s.b().a(str);
    }

    public static void setWXStatus(boolean z2) {
        s.b().a(z2);
    }

    public static void showGDPRConsentDialog(Activity activity, ATGDPRConsentDismissListener aTGDPRConsentDismissListener) {
        a.a().b(aTGDPRConsentDismissListener);
    }

    public static void showGDPRConsentSecondDialog(Activity activity, ATGDPRConsentDismissListener aTGDPRConsentDismissListener, String str) {
        a.a().a(aTGDPRConsentDismissListener);
    }

    @Deprecated
    public static void showGdprAuth(Context context) {
        u.a(context).a(context, (ATGDPRAuthCallback) null);
    }

    public static void start() {
        s.b().x();
    }

    public static void testModeDeviceInfo(Context context, DeviceInfoCallback deviceInfoCallback) {
        s.b().a(context, deviceInfoCallback);
    }

    public static void checkIsEuTraffic(Context context, NetTrafficeCallback netTrafficeCallback, String str) {
        u.a(context).a(netTrafficeCallback, str);
    }

    public static void init(Context context, String str, String str2, ATNetworkConfig aTNetworkConfig) {
        init(context, str, str2, aTNetworkConfig, null);
    }

    public static void showGDPRConsentDialog(Activity activity, ATGDPRConsentDismissListener aTGDPRConsentDismissListener, String str) {
        a.a().b(aTGDPRConsentDismissListener);
    }

    @Deprecated
    public static void showGdprAuth(Context context, ATGDPRAuthCallback aTGDPRAuthCallback) {
        u.a(context).a(context, aTGDPRAuthCallback);
    }

    @Deprecated
    public static void init(Context context, String str, String str2, ATNetworkConfig aTNetworkConfig, ATSDKInitListener aTSDKInitListener) {
        try {
            if (context == null) {
                if (aTSDKInitListener != null) {
                    aTSDKInitListener.onFail("init: Context is null!");
                }
                Log.e("anythink", "init: Context is null!");
            } else {
                s.b().a(context, str, str2, aTNetworkConfig);
                if (aTSDKInitListener != null) {
                    aTSDKInitListener.onSuccess();
                }
            }
        } catch (Error | Exception unused) {
        }
    }
}
