package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.common.AnalyticsSdkVersion;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class bd {

    /* renamed from: a, reason: collision with root package name */
    private static String f48791a;

    public static JSONObject a(Context context) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            if (TextUtils.isEmpty(f48791a)) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("appkey", UMUtils.getAppkey(context));
                jSONObject3.put("channel", UMUtils.getChannel(context));
                jSONObject3.put("brand", Build.BRAND);
                jSONObject3.put("osVersion", Build.VERSION.RELEASE);
                jSONObject3.put(bv.f48906g, UMUtils.getUMId(context));
                jSONObject3.put(bv.af, UMUtils.getZid(context));
                jSONObject3.put("deviceModel", Build.MODEL);
                jSONObject3.put("platform", AnalyticsConstants.SDK_TYPE);
                jSONObject3.put("appVersion", DeviceConfig.getAppVersionName(context));
                jSONObject3.put("sdkVersion", AnalyticsSdkVersion.SDK_VERSION);
                f48791a = jSONObject3.toString();
                jSONObject = new JSONObject(f48791a);
            } else {
                try {
                    jSONObject = new JSONObject(f48791a);
                } catch (Exception unused) {
                }
            }
            jSONObject2 = jSONObject;
            jSONObject2.put("sessionid", DeviceConfig.getSid(context));
            jSONObject2.put("ts", System.currentTimeMillis());
        } catch (Throwable unused2) {
        }
        return jSONObject2;
    }

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject != null) {
            try {
                jSONObject.put("ekverr", jSONObject2);
            } catch (Throwable unused) {
            }
        }
    }
}
