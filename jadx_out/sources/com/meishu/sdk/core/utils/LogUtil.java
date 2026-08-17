package com.meishu.sdk.core.utils;

import android.util.Log;
import com.meishu.sdk.core.AdSdk;

/* loaded from: classes4.dex */
public class LogUtil {
    public static final String TAG = "MeishuSdk";

    public static void d(String str, String str2) {
        if (AdSdk.adConfig() != null && AdSdk.adConfig().enableDebug()) {
            getTag(str);
        }
    }

    public static void dev(String str, String str2) {
    }

    public static void e(String str, String str2) {
        Log.e(getTag(str), "" + str2);
    }

    private static String getTag(String str) {
        StringBuffer stringBuffer = new StringBuffer(TAG);
        stringBuffer.append("_");
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    public static void i(String str, String str2, Throwable th) {
        if (AdSdk.adConfig() != null && AdSdk.adConfig().enableDebug()) {
            getTag(str);
        }
    }

    public static void w(String str, String str2) {
        getTag(str);
    }

    public static void dev(String str, Throwable th) {
    }

    public static void e(String str, String str2, Throwable th) {
        Log.e(getTag(str), "" + str2, th);
    }

    public static void i(String str, String str2) {
        if (AdSdk.adConfig() != null && AdSdk.adConfig().enableDebug()) {
            getTag(str);
        }
    }
}
