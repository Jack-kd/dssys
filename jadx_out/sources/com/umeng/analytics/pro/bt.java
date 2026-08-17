package com.umeng.analytics.pro;

import android.os.Build;
import android.text.TextUtils;

/* loaded from: classes5.dex */
public class bt {

    /* renamed from: a, reason: collision with root package name */
    private static final String f48867a = "ro.build.version.emui";

    /* renamed from: b, reason: collision with root package name */
    private static final String f48868b = "hw_sc.build.platform.version";

    /* renamed from: c, reason: collision with root package name */
    private static final String f48869c = "ro.build.freeme.label";

    /* renamed from: d, reason: collision with root package name */
    private static final String f48870d = "ro.build.freemeos_label";

    /* renamed from: e, reason: collision with root package name */
    private static final String f48871e = "FreemeOS";

    public static boolean a() throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return !TextUtils.isEmpty((String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.build.flyme.version", ""));
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean b() {
        return d() && !h();
    }

    public static boolean c() {
        return d() && h();
    }

    public static boolean d() {
        return Build.MANUFACTURER.equalsIgnoreCase("HONOR");
    }

    public static boolean e() {
        String str = Build.BRAND;
        if (!str.equalsIgnoreCase("huawei") && !str.equalsIgnoreCase("honor") && !str.equalsIgnoreCase("华为")) {
            String strA = a(f48867a);
            String strA2 = a(f48868b);
            if (TextUtils.isEmpty(strA) && TextUtils.isEmpty(strA2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean f() {
        return !TextUtils.isEmpty(a("ro.coolos.version"));
    }

    public static boolean g() {
        String strA = a(f48869c);
        String strA2 = a(f48870d);
        if (strA == null || !strA.equalsIgnoreCase(f48871e)) {
            return strA2 != null && strA2.equalsIgnoreCase(f48871e);
        }
        return true;
    }

    private static boolean h() {
        return !TextUtils.isEmpty(a(f48867a));
    }

    private static String a(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str);
        } catch (Throwable unused) {
            return "";
        }
    }
}
