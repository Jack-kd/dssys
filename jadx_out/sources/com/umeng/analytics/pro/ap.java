package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.common.AnalyticsSdkVersion;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class ap {

    /* renamed from: a, reason: collision with root package name */
    private static JSONObject f48700a;

    public static JSONObject a(Context context, JSONArray jSONArray, String str) {
        JSONObject jSONObject = f48700a;
        if (jSONObject != null && jSONObject.length() > 0) {
            return f48700a;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(bv.f48923x, AnalyticsConstants.SDK_TYPE);
            jSONObject2.put(com.kuaishou.weapon.p0.t.f31280v, Build.MODEL);
            jSONObject2.put("av", DeviceConfig.getAppVersionName(context));
            jSONObject2.put(bv.f48906g, UMUtils.getUMId(context));
            jSONObject2.put("ov", Build.VERSION.RELEASE);
            jSONObject2.put("chn", UMUtils.getChannel(context));
            jSONObject2.put(bv.af, UMUtils.getZid(context));
            jSONObject2.put("sv", AnalyticsSdkVersion.SDK_VERSION);
            jSONObject2.put("ak", UMUtils.getAppkey(context));
            String idfa = DeviceConfig.getIdfa(context);
            if (!TextUtils.isEmpty(idfa)) {
                jSONObject2.put("tk_idfa", idfa);
            }
            jSONObject2.put("db", Build.BRAND);
            jSONObject2.put("tk_aid", DeviceConfig.getAndroidId(context));
            String oaid = DeviceConfig.getOaid(context);
            if (!TextUtils.isEmpty(oaid)) {
                jSONObject2.put("tk_oaid", oaid);
            }
            String imeiNew = DeviceConfig.getImeiNew(context);
            if (!TextUtils.isEmpty(imeiNew)) {
                jSONObject2.put("tk_imei", imeiNew);
            }
            jSONObject2.put("boa", Build.BOARD);
            jSONObject2.put("mant", Build.TIME);
            String[] localeInfo = DeviceConfig.getLocaleInfo(context);
            jSONObject2.put("ct", localeInfo[0]);
            jSONObject2.put("lang", localeInfo[1]);
            jSONObject2.put("tz", DeviceConfig.getTimeZone(context));
            jSONObject2.put("pkg", DeviceConfig.getPackageName(context));
            jSONObject2.put("disn", DeviceConfig.getAppName(context));
            String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(context);
            if ("Wi-Fi".equals(networkAccessMode[0])) {
                jSONObject2.put("ac", "wifi");
            } else if ("2G/3G".equals(networkAccessMode[0])) {
                jSONObject2.put("ac", "2G/3G");
            } else {
                jSONObject2.put("ac", "unknown");
            }
            if (!"".equals(networkAccessMode[1])) {
                jSONObject2.put("ast", networkAccessMode[1]);
            }
            jSONObject2.put("nt", DeviceConfig.getNetworkType(context));
            String deviceToken = UMUtils.getDeviceToken(context);
            if (!TextUtils.isEmpty(deviceToken)) {
                jSONObject2.put(bv.f48900a, deviceToken);
            }
            int[] resolutionArray = DeviceConfig.getResolutionArray(context);
            if (resolutionArray != null) {
                jSONObject2.put("rl", resolutionArray[1] + "*" + resolutionArray[0]);
            }
            jSONObject2.put("car", DeviceConfig.getNetworkOperatorName(context));
            jSONObject2.put(bv.f48901b, AnalyticsSdkVersion.SDK_VERSION);
            if (DeviceConfig.isHarmony(context)) {
                jSONObject2.put("oos", "harmony");
            } else {
                jSONObject2.put("oos", AnalyticsConstants.SDK_TYPE);
            }
            jSONObject2.put(com.umeng.ccg.a.f49767u, str);
            jSONObject2.put("sdk", jSONArray);
            f48700a = jSONObject2;
        } catch (Throwable unused) {
        }
        return f48700a;
    }

    public static JSONObject b(Context context, String str) {
        JSONObject jSONObject;
        String strA;
        String strB;
        JSONObject jSONObject2 = null;
        try {
            ao aoVar = new ao();
            String uMId = UMUtils.getUMId(context);
            if (TextUtils.isEmpty(uMId)) {
                return null;
            }
            aoVar.a(uMId);
            String appkey = UMUtils.getAppkey(context);
            if (TextUtils.isEmpty(appkey)) {
                return null;
            }
            aoVar.b(appkey);
            aoVar.c(UMUtils.getAppVersionName(context));
            aoVar.d(AnalyticsSdkVersion.SDK_VERSION);
            aoVar.e(UMUtils.getChannel(context));
            aoVar.f(Build.VERSION.SDK_INT + "");
            String str2 = Build.BRAND;
            aoVar.g(str2);
            aoVar.h(Build.MODEL);
            String[] localeInfo = DeviceConfig.getLocaleInfo(context);
            aoVar.i(localeInfo[1]);
            aoVar.j(localeInfo[0]);
            int[] resolutionArray = DeviceConfig.getResolutionArray(context);
            aoVar.b(Integer.valueOf(resolutionArray[1]));
            aoVar.a(Integer.valueOf(resolutionArray[0]));
            aoVar.k(at.a(context, "install_datetime", ""));
            try {
                jSONObject = new JSONObject();
            } catch (JSONException e2) {
                e = e2;
            }
            try {
                jSONObject.put(ao.f48672a, aoVar.a());
                jSONObject.put(ao.f48674c, aoVar.c());
                jSONObject.put(ao.f48673b, aoVar.b());
                jSONObject.put(ao.f48675d, aoVar.d());
                jSONObject.put(ao.f48676e, aoVar.e());
                jSONObject.put(ao.f48677f, aoVar.f());
                jSONObject.put(ao.f48678g, aoVar.g());
                jSONObject.put(ao.f48679h, aoVar.h());
                jSONObject.put(ao.f48682k, aoVar.k());
                jSONObject.put(ao.f48681j, aoVar.j());
                jSONObject.put(ao.f48683l, aoVar.l());
                jSONObject.put(ao.f48680i, aoVar.i());
                jSONObject.put(ao.f48684m, aoVar.m());
                jSONObject.put(bv.af, UMUtils.getZid(context));
                jSONObject.put("platform", "android");
                jSONObject.put("optional", new JSONObject(at.a()));
                jSONObject.put("s1", str);
                jSONObject.put("oaid", DeviceConfig.getOaid(context));
                try {
                    strA = au.a(str2);
                    strB = au.b(str2);
                } catch (Throwable unused) {
                }
                if (TextUtils.isEmpty(strA) || TextUtils.isEmpty(strB)) {
                    jSONObject.put(ao.f48685n, AnalyticsConstants.SDK_TYPE);
                    jSONObject.put(ao.f48686o, Build.VERSION.RELEASE);
                    return jSONObject;
                }
                jSONObject.put(ao.f48685n, strA);
                jSONObject.put(ao.f48686o, strB);
                return jSONObject;
            } catch (JSONException e3) {
                e = e3;
                jSONObject2 = jSONObject;
                UMRTLog.e(UMRTLog.RTLOG_TAG, "[getCloudConfigParam] error " + e.getMessage());
                return jSONObject2;
            } catch (Throwable th) {
                th = th;
                jSONObject2 = jSONObject;
                UMRTLog.e(UMRTLog.RTLOG_TAG, "[getCloudConfigParam] error " + th.getMessage());
                return jSONObject2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static JSONObject a(Context context, JSONObject jSONObject) {
        try {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("ekv", jSONArray);
                return jSONObject2;
            } catch (Throwable unused) {
                return jSONObject2;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put("header", jSONObject);
            jSONObject3.put("analytics", jSONObject2);
        } catch (Throwable unused) {
        }
        return jSONObject3;
    }

    public static JSONObject a(Context context, String str) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            ao aoVar = new ao();
            String uMId = UMUtils.getUMId(context);
            if (TextUtils.isEmpty(uMId)) {
                return null;
            }
            aoVar.a(uMId);
            String appkey = UMUtils.getAppkey(context);
            if (TextUtils.isEmpty(appkey)) {
                return null;
            }
            aoVar.b(appkey);
            aoVar.c(UMUtils.getAppVersionName(context));
            aoVar.d(AnalyticsSdkVersion.SDK_VERSION);
            aoVar.e(UMUtils.getChannel(context));
            aoVar.f(Build.VERSION.SDK_INT + "");
            aoVar.g(Build.BRAND);
            aoVar.h(Build.MODEL);
            String[] localeInfo = DeviceConfig.getLocaleInfo(context);
            aoVar.i(localeInfo[1]);
            aoVar.j(localeInfo[0]);
            int[] resolutionArray = DeviceConfig.getResolutionArray(context);
            aoVar.b(Integer.valueOf(resolutionArray[1]));
            aoVar.a(Integer.valueOf(resolutionArray[0]));
            aoVar.k(at.a(context, "install_datetime", ""));
            try {
                jSONObject = new JSONObject();
            } catch (JSONException e2) {
                e = e2;
            }
            try {
                jSONObject.put(ao.f48672a, aoVar.a());
                jSONObject.put(ao.f48674c, aoVar.c());
                jSONObject.put(ao.f48673b, aoVar.b());
                jSONObject.put(ao.f48675d, aoVar.d());
                jSONObject.put(ao.f48676e, aoVar.e());
                jSONObject.put(ao.f48677f, aoVar.f());
                jSONObject.put(ao.f48678g, aoVar.g());
                jSONObject.put(ao.f48679h, aoVar.h());
                jSONObject.put(ao.f48682k, aoVar.k());
                jSONObject.put(ao.f48681j, aoVar.j());
                jSONObject.put(ao.f48683l, aoVar.l());
                jSONObject.put(ao.f48680i, aoVar.i());
                jSONObject.put(ao.f48684m, aoVar.m());
                jSONObject.put(bv.af, UMUtils.getZid(context));
                jSONObject.put("platform", "android");
                jSONObject.put("optional", new JSONObject(at.a()));
                String[] strArrSplit = str.split("@");
                if (strArrSplit.length == 4) {
                    try {
                        long j2 = Long.parseLong(strArrSplit[0]);
                        String str2 = strArrSplit[1];
                        jSONObject.put("s1", j2);
                        jSONObject.put("s2", str2);
                    } catch (Throwable unused) {
                    }
                }
                try {
                    String str3 = Build.BRAND;
                    String strA = au.a(str3);
                    String strB = au.b(str3);
                    if (!TextUtils.isEmpty(strA) && !TextUtils.isEmpty(strB)) {
                        jSONObject.put(ao.f48685n, strA);
                        jSONObject.put(ao.f48686o, strB);
                    } else {
                        jSONObject.put(ao.f48685n, AnalyticsConstants.SDK_TYPE);
                        jSONObject.put(ao.f48686o, Build.VERSION.RELEASE);
                    }
                } catch (Throwable unused2) {
                }
                return jSONObject;
            } catch (JSONException e3) {
                e = e3;
                jSONObject2 = jSONObject;
                UMRTLog.e(UMRTLog.RTLOG_TAG, "[getCloudConfigParam] error " + e.getMessage());
                return jSONObject2;
            } catch (Throwable th) {
                th = th;
                jSONObject2 = jSONObject;
                UMRTLog.e(UMRTLog.RTLOG_TAG, "[getCloudConfigParam] error " + th.getMessage());
                return jSONObject2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static JSONObject a(Context context, int i2, JSONArray jSONArray, String str, boolean z2) {
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                String zid = UMUtils.getZid(context);
                if (!TextUtils.isEmpty(zid)) {
                    jSONObject.put("atoken", zid);
                    jSONObject.put("oaid", DeviceConfig.getOaid(context));
                    jSONObject.put(bv.f48906g, UMEnvelopeBuild.imprintProperty(context, bv.f48906g, ""));
                    jSONObject.put(bv.f48879F, Build.BRAND);
                    String deviceToken = UMUtils.getDeviceToken(context);
                    if (!TextUtils.isEmpty(deviceToken)) {
                        jSONObject.put("device_token", deviceToken);
                    }
                    jSONObject.put("model", Build.MODEL);
                    jSONObject.put(bv.f48923x, "android");
                    jSONObject.put(bv.f48924y, Build.VERSION.RELEASE);
                    jSONObject.put("appkey", UMConfigure.sAppkey);
                    jSONObject.put("app_version", DeviceConfig.getAppVersionName(context));
                    jSONObject.put("packagename", DeviceConfig.getPackageName(context));
                    jSONObject.put("app_display_name", DeviceConfig.getAppName(context));
                    String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(context);
                    if (!"Wi-Fi".equals(networkAccessMode[0])) {
                        if ("2G/3G".equals(networkAccessMode[0])) {
                            jSONObject.put(bv.f48890Q, "2G/3G");
                        } else {
                            jSONObject.put(bv.f48890Q, "unknow");
                        }
                    } else {
                        jSONObject.put(bv.f48890Q, "wifi");
                    }
                    if (!"".equals(networkAccessMode[1])) {
                        jSONObject.put("sub_access", networkAccessMode[1]);
                    }
                    jSONObject.put("sdkType", AnalyticsConstants.SDK_TYPE);
                    jSONObject.put("sdk_version", AnalyticsSdkVersion.SDK_VERSION);
                    jSONObject.put("session_id", ab.a().d(context));
                    jSONObject.put(bv.an, DeviceConfig.getRingerMode(context));
                    jSONObject.put(com.umeng.ccg.a.f49767u, str);
                    jSONObject.put("sdk", jSONArray);
                    if (z2) {
                        jSONObject.put("am", DeviceConfig.isAirplaneModeOn(context));
                    }
                    jSONObject.put("e", i2);
                }
                return jSONObject;
            } catch (Throwable unused) {
                return jSONObject;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }
}
