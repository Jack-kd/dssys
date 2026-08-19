package com.umeng.commonsdk.deeplink;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.pro.ab;
import com.umeng.analytics.pro.bv;
import com.umeng.common.AnalyticsSdkVersion;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;
import org.json.JSONObject;

/* loaded from: classes5.dex */
final class g {
    private g() {
    }

    public static JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                a(jSONObject, bv.f48906g, UMUtils.getUMId(applicationContext));
                a(jSONObject, "appkey", UMUtils.getAppkey(applicationContext));
                a(jSONObject, bv.af, UMUtils.getZid(applicationContext));
                a(jSONObject, "oaid", DeviceConfig.getOaid(applicationContext));
                jSONObject.put(bv.f48923x, "android");
                a(jSONObject, "sdkVersion", AnalyticsSdkVersion.SDK_VERSION);
                a(jSONObject, "osVersion", Build.VERSION.RELEASE);
                a(jSONObject, "brand", Build.BRAND);
                a(jSONObject, "deviceModel", Build.MODEL);
                String[] localeInfo = DeviceConfig.getLocaleInfo(applicationContext);
                if (localeInfo != null && localeInfo.length >= 2) {
                    a(jSONObject, "language", localeInfo[1]);
                }
                int[] resolutionArray = DeviceConfig.getResolutionArray(applicationContext);
                if (resolutionArray != null && resolutionArray.length >= 2) {
                    jSONObject.put("resolutionWidth", String.valueOf(resolutionArray[0]));
                    jSONObject.put("resolutionHeight", String.valueOf(resolutionArray[1]));
                }
                a(jSONObject, "sessionId", ab.a().d(applicationContext));
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> [deeplink] DDL request body: " + jSONObject.toString());
            } catch (Throwable unused) {
            }
        }
        return jSONObject;
    }

    private static void a(JSONObject jSONObject, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            jSONObject.put(str, str2);
        } catch (Throwable unused) {
        }
    }
}
