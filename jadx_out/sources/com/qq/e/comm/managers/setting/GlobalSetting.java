package com.qq.e.comm.managers.setting;

import android.text.TextUtils;
import com.qq.e.comm.util.GDTLogger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class GlobalSetting {
    public static final String ADMOB_SDK_WRAPPER = "ADMOB";
    public static final String AGREE_PRIVACY_KEY = "agree_privacy";
    public static final String AGREE_READ_AAID = "allow_read_aaid";
    public static final String APPLOVIN_SDK_WRAPPER = "APPLOVIN";
    public static final String BD_SDK_WRAPPER = "BD";
    public static final String CCPA = "ccpa";
    public static final String CONV_OPTIMIZE_KEY = "conv_opt_info";
    public static final String COPPA = "coppa";
    public static final String CUSTOM_INFO_KEY = "custom_info";
    public static final String DARK_MODE_KEY = "dark_mode_info";
    public static final String FACEBOOK_SDK_WRAPPER = "FACEBOOK";
    public static final String GDPR = "gdpr";
    public static final String KS_SDK_WRAPPER = "KS";
    public static final String NATIVE_EXPRESS_AD = "4";
    public static final String NATIVE_UNIFIED_AD = "6";
    public static final String OVERSEA_PRIVACY_INFO = "oversea_privacy_info";
    public static final String PAG_SDK_WRAPPER = "PAG";
    public static final String REWARD_VIDEO_AD = "5";
    public static final String SPLASH_AD = "3";
    public static final String TT_SDK_WRAPPER = "TT";
    public static final String UNIFIED_BANNER_AD = "7";
    public static final String UNIFIED_INTERSTITIAL_FS_AD = "9";
    public static final String UNIFIED_INTERSTITIAL_HS_AD = "8";

    /* renamed from: a, reason: collision with root package name */
    private static volatile Integer f35370a = null;

    /* renamed from: b, reason: collision with root package name */
    private static volatile boolean f35371b = false;

    /* renamed from: c, reason: collision with root package name */
    private static volatile boolean f35372c = true;

    /* renamed from: d, reason: collision with root package name */
    private static volatile Integer f35373d;

    /* renamed from: e, reason: collision with root package name */
    private static volatile Boolean f35374e;

    /* renamed from: f, reason: collision with root package name */
    private static volatile Boolean f35375f;

    /* renamed from: g, reason: collision with root package name */
    private static volatile Boolean f35376g;

    /* renamed from: h, reason: collision with root package name */
    private static volatile Map<String, String> f35377h = new HashMap();

    /* renamed from: i, reason: collision with root package name */
    private static volatile Map<String, String> f35378i = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    private static final Map<String, String> f35379j = new HashMap();

    /* renamed from: k, reason: collision with root package name */
    private static final JSONObject f35380k = new JSONObject();

    /* renamed from: l, reason: collision with root package name */
    private static volatile String f35381l = null;

    /* renamed from: m, reason: collision with root package name */
    private static volatile String f35382m = null;

    /* renamed from: n, reason: collision with root package name */
    private static volatile String f35383n = null;

    /* renamed from: o, reason: collision with root package name */
    private static volatile String f35384o = null;

    /* renamed from: p, reason: collision with root package name */
    private static volatile String f35385p = null;

    public static Boolean getAgreeReadAndroidId() {
        return f35376g;
    }

    public static Boolean getAgreeReadDeviceId() {
        return f35375f;
    }

    public static Integer getChannel() {
        return f35370a;
    }

    public static String getCustomADActivityClassName() {
        return f35381l;
    }

    public static String getCustomLandscapeActivityClassName() {
        return f35384o;
    }

    public static String getCustomPortraitActivityClassName() {
        return f35382m;
    }

    public static String getCustomRewardvideoLandscapeActivityClassName() {
        return f35385p;
    }

    public static String getCustomRewardvideoPortraitActivityClassName() {
        return f35383n;
    }

    public static Map<String, String> getExtraUserData() {
        return Collections.unmodifiableMap(f35377h);
    }

    public static Integer getPersonalizedState() {
        return f35373d;
    }

    public static Map<String, String> getPreloadAdapterMaps() {
        return f35379j;
    }

    public static JSONObject getSettings() {
        return f35380k;
    }

    public static boolean isAgreePrivacyStrategy() {
        return f35374e == null || f35374e.booleanValue();
    }

    public static boolean isAgreeReadAndroidId() {
        if (f35376g == null) {
            return true;
        }
        return f35376g.booleanValue();
    }

    public static boolean isAgreeReadDeviceId() {
        if (f35375f == null) {
            return true;
        }
        return f35375f.booleanValue();
    }

    public static boolean isEnableMediationTool() {
        return f35371b;
    }

    public static boolean isEnableVideoDownloadingCache() {
        return f35372c;
    }

    public static void setAgreePrivacyStrategy(boolean z2) {
        if (f35374e == null) {
            f35374e = Boolean.valueOf(z2);
        }
    }

    @Deprecated
    public static void setAgreeReadAndroidId(boolean z2) {
        f35376g = Boolean.valueOf(z2);
    }

    @Deprecated
    public static void setAgreeReadDeviceId(boolean z2) {
        f35375f = Boolean.valueOf(z2);
    }

    public static void setAgreeReadPrivacyInfo(Map<String, Boolean> map) throws JSONException {
        if (map == null || map.size() == 0) {
            return;
        }
        try {
            f35380k.putOpt(AGREE_PRIVACY_KEY, new JSONObject(map));
        } catch (Exception e2) {
            GDTLogger.e("setAgreeReadPrivacyInfo错误：" + e2.toString());
        }
    }

    public static void setChannel(int i2) {
        if (f35370a == null) {
            f35370a = Integer.valueOf(i2);
        }
    }

    public static void setConvOptimizeInfo(Map<String, Boolean> map) throws JSONException {
        if (map == null || map.size() == 0) {
            return;
        }
        try {
            f35380k.putOpt(CONV_OPTIMIZE_KEY, new JSONObject(map));
        } catch (Exception e2) {
            GDTLogger.e("setConvOptimizeInfo错误：" + e2.toString());
        }
    }

    public static void setCustomADActivityClassName(String str) {
        f35381l = str;
    }

    public static void setCustomInfo(Map<String, Map<String, String>> map) throws JSONException {
        if (map == null || map.isEmpty()) {
            return;
        }
        try {
            f35380k.putOpt(CUSTOM_INFO_KEY, new JSONObject(map));
        } catch (Exception e2) {
            GDTLogger.e("setCustomInfo：" + e2);
        }
    }

    public static void setCustomLandscapeActivityClassName(String str) {
        f35384o = str;
    }

    public static void setCustomPortraitActivityClassName(String str) {
        f35382m = str;
    }

    public static void setCustomRewardvideoLandscapeActivityClassName(String str) {
        f35385p = str;
    }

    public static void setCustomRewardvideoPortraitActivityClassName(String str) {
        f35383n = str;
    }

    public static void setEnableCollectAppInstallStatus(boolean z2) throws JSONException {
        try {
            f35380k.putOpt("ecais", Boolean.valueOf(z2));
        } catch (JSONException unused) {
        }
    }

    public static void setEnableMediationTool(boolean z2) {
        f35371b = z2;
    }

    public static void setEnableVideoDownloadingCache(boolean z2) {
        f35372c = z2;
    }

    public static void setExtraUserData(Map<String, String> map) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (TextUtils.isEmpty(entry.getKey()) || TextUtils.isEmpty(entry.getValue())) {
                GDTLogger.e("参数key和value不能为空！");
                return;
            }
        }
        f35377h = map;
    }

    public static void setMediaExtData(Map<String, String> map, boolean z2) throws JSONException {
        if (map == null) {
            return;
        }
        if (z2) {
            f35378i = new HashMap();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                f35378i.put(entry.getKey(), entry.getValue());
            }
        }
        try {
            f35380k.putOpt("media_ext", new JSONObject(f35378i));
        } catch (JSONException unused) {
            GDTLogger.e("setMediaExtData失败，请检查");
        }
    }

    public static void setPersonalizedState(int i2) {
        f35373d = Integer.valueOf(i2);
    }

    public static void setPreloadAdapters(Map<String, String> map) {
        if (map == null) {
            return;
        }
        f35379j.putAll(map);
    }
}
