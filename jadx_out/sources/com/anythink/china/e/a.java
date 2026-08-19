package com.anythink.china.e;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.l;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1482a = "a";

    /* renamed from: b, reason: collision with root package name */
    private static String f1483b = "";

    /* renamed from: c, reason: collision with root package name */
    private static String f1484c = "";

    /* renamed from: d, reason: collision with root package name */
    private static String f1485d = "";

    /* renamed from: e, reason: collision with root package name */
    private static String f1486e = "";

    /* renamed from: f, reason: collision with root package name */
    private static String f1487f = "";

    /* renamed from: g, reason: collision with root package name */
    private static String f1488g = "";

    /* renamed from: h, reason: collision with root package name */
    private static String f1489h = null;

    /* renamed from: i, reason: collision with root package name */
    private static boolean f1490i = false;

    /* renamed from: j, reason: collision with root package name */
    private static boolean f1491j = false;

    /* renamed from: k, reason: collision with root package name */
    private static boolean f1492k = false;

    /* renamed from: l, reason: collision with root package name */
    private static boolean f1493l = false;

    /* renamed from: m, reason: collision with root package name */
    private static String f1494m = "";

    /* renamed from: n, reason: collision with root package name */
    private static String f1495n = "";

    public static void a(Context context) {
        f1483b = c(context);
        f1484c = d(context);
        f1485d = l.s();
        String[] strArrA = b.a(l.x(context));
        if (strArrA != null && strArrA.length == 2) {
            f1486e = strArrA[0];
            f1487f = strArrA[1];
        }
        f1488g = b.a();
    }

    public static String b(Context context) {
        d(context);
        return !TextUtils.isEmpty(f1484c) ? f1484c : "";
    }

    public static synchronized String c(Context context) {
        if (s.b().c("mac")) {
            return "";
        }
        if (!TextUtils.isEmpty(f1483b)) {
            return f1483b;
        }
        if (!ATSDKGlobalSetting.enableGetDeviceInfoInBg) {
            s.b();
            if (!s.y()) {
                return "";
            }
        }
        if (!f1491j && TextUtils.isEmpty(f1483b)) {
            f1483b = s.b().c("mac") ? "" : d.a();
            f1491j = true;
        }
        return f1483b;
    }

    public static synchronized String d(Context context) {
        if (s.b().c("imei")) {
            return "";
        }
        if (!TextUtils.isEmpty(f1484c)) {
            return f1484c;
        }
        if (!ATSDKGlobalSetting.enableGetDeviceInfoInBg) {
            s.b();
            if (!s.y()) {
                return "";
            }
        }
        if (!f1490i && TextUtils.isEmpty(f1484c) && com.anythink.china.b.c.a(context, "android.permission.READ_PHONE_STATE")) {
            f1484c = c.a(context);
            f1490i = true;
        }
        return f1484c;
    }

    public static String e() {
        return l.r(s.b().g());
    }

    public static String f() {
        return f1486e;
    }

    public static String g() {
        return f1487f;
    }

    public static String h() {
        return f1488g;
    }

    public static String i() {
        try {
            return new BigDecimal((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000.0d).setScale(6, 4).toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String j() {
        String strB = l.b();
        String str = Build.MANUFACTURER;
        String lowerCase = str != null ? str.toLowerCase() : "";
        return (strB.contains(MediationConstant.ADN_XIAOMI) || strB.contains("redmi") || lowerCase.contains(MediationConstant.ADN_XIAOMI) || lowerCase.contains("redmi")) ? i.u.f2753c : (strB.contains("huawei") || lowerCase.contains("huawei")) ? i.u.f2751a : (strB.contains("oppo") || lowerCase.contains("oppo")) ? Build.VERSION.SDK_INT >= 29 ? i.u.f2754d : i.u.f2755e : (strB.contains("vivo") || lowerCase.contains("vivo")) ? i.u.f2756f : (strB.contains("honor") || lowerCase.contains("honor") || strB.contains("hihonor") || lowerCase.contains("hihonor")) ? i.u.f2757g : "";
    }

    public static synchronized String e(Context context) {
        String str = f1489h;
        if (str != null) {
            return str;
        }
        try {
            f1489h = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
        }
        if (f1489h == null) {
            f1489h = "";
        }
        return f1489h;
    }

    public static synchronized void b() {
        f1494m = null;
    }

    public static synchronized String a() {
        if (s.b().c("wifi_name")) {
            return "";
        }
        if (!TextUtils.isEmpty(f1494m)) {
            return f1494m;
        }
        if (!ATSDKGlobalSetting.enableGetDeviceInfoInBg) {
            s.b();
            s.b().g();
            if (!s.y()) {
                return "";
            }
        }
        if (!f1492k && TextUtils.isEmpty(f1494m)) {
            f1494m = b.b(s.b().g());
            f1492k = true;
        }
        return f1494m;
    }

    public static String d() {
        return f1485d;
    }

    public static String c() {
        if (s.b().c("imsi")) {
            return "";
        }
        if (!TextUtils.isEmpty(f1495n)) {
            return f1495n;
        }
        if (!ATSDKGlobalSetting.enableGetDeviceInfoInBg) {
            s.b();
            s.b().g();
            if (!s.y()) {
                return "";
            }
        }
        if (!f1493l && TextUtils.isEmpty(f1495n) && com.anythink.china.b.c.a(s.b().g(), "android.permission.READ_PHONE_STATE")) {
            synchronized (b.class) {
                try {
                    if (!f1493l) {
                        f1495n = b.a(s.b().g());
                        f1493l = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1495n;
    }
}
