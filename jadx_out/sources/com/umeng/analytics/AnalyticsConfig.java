package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.m;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Map;

/* loaded from: classes5.dex */
public class AnalyticsConfig {
    public static boolean CATCH_EXCEPTION = false;
    public static boolean CHANGE_CATCH_EXCEPTION_NOTALLOW = true;
    public static boolean CLEAR_EKV_BL = false;
    public static boolean CLEAR_EKV_WL = false;
    public static final String DEBUG_KEY = "debugkey";
    public static final String DEBUG_MODE_PERIOD = "sendaging";
    public static String GPU_RENDERER = "";
    public static String GPU_VENDER = "";
    public static final String RTD_PERIOD = "period";
    public static final String RTD_START_TIME = "startTime";

    /* renamed from: a, reason: collision with root package name */
    static double[] f48559a = null;

    /* renamed from: b, reason: collision with root package name */
    private static String f48560b = null;

    /* renamed from: c, reason: collision with root package name */
    private static String f48561c = null;

    /* renamed from: d, reason: collision with root package name */
    private static String f48562d = null;

    /* renamed from: e, reason: collision with root package name */
    private static int f48563e = 0;
    public static boolean enable = true;
    public static long kContinueSessionMillis = 30000;
    public static String mWrapperType;
    public static String mWrapperVersion;
    public static final String RTD_SP_FILE = be.b().b(be.f48792A);

    /* renamed from: f, reason: collision with root package name */
    private static Object f48564f = new Object();

    /* renamed from: g, reason: collision with root package name */
    private static boolean f48565g = false;

    /* renamed from: h, reason: collision with root package name */
    private static String f48566h = "";

    public static void a(String str) {
        f48561c = str;
    }

    public static String getAppkey(Context context) {
        return UMUtils.getAppkey(context);
    }

    public static String getChannel(Context context) {
        return UMUtils.getChannel(context);
    }

    public static String getGameSdkVersion(Context context) {
        try {
            Class<?> cls = Class.forName("com.umeng.analytics.game.GameSdkVersion");
            return (String) cls.getDeclaredField("SDK_VERSION").get(cls);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static double[] getLocation() {
        return f48559a;
    }

    public static String getRealTimeDebugKey() {
        String str;
        synchronized (f48564f) {
            str = f48566h;
        }
        return str;
    }

    public static String getSecretKey(Context context) {
        if (TextUtils.isEmpty(f48562d)) {
            f48562d = com.umeng.common.b.a(context).c();
        }
        return f48562d;
    }

    public static int getVerticalType(Context context) {
        if (f48563e == 0) {
            f48563e = com.umeng.common.b.a(context).d();
        }
        return f48563e;
    }

    public static boolean isRealTimeDebugMode() {
        boolean z2;
        synchronized (f48564f) {
            z2 = f48565g;
        }
        return z2;
    }

    public static void turnOffRealTimeDebug() {
        synchronized (f48564f) {
            f48565g = false;
            f48566h = "";
        }
    }

    public static void turnOnRealTimeDebug(Map<String, String> map) {
        synchronized (f48564f) {
            try {
                f48565g = true;
                if (map != null && map.containsKey(DEBUG_KEY)) {
                    f48566h = map.get(DEBUG_KEY);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            UMLog.aq(m.f49461A, 0, "\\|");
        } else {
            f48562d = str;
            com.umeng.common.b.a(context).a(f48562d);
        }
    }

    public static void a(Context context, int i2) {
        f48563e = i2;
        com.umeng.common.b.a(context).a(f48563e);
    }
}
