package com.octopus.ad.c;

import android.os.Build;
import android.text.TextUtils;

/* loaded from: classes4.dex */
public class b {
    public static boolean a() throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return !TextUtils.isEmpty((String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.build.flyme.version", ""));
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean b() {
        return Build.MANUFACTURER.equalsIgnoreCase("HONOR");
    }

    public static boolean c() {
        String str = Build.BRAND;
        if (!str.equalsIgnoreCase("huawei") && !str.equalsIgnoreCase("honor") && !str.equalsIgnoreCase("华为")) {
            String strA = a("ro.build.version.emui");
            String strA2 = a("hw_sc.build.platform.version");
            if (TextUtils.isEmpty(strA) && TextUtils.isEmpty(strA2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean d() {
        return !TextUtils.isEmpty(a("ro.coolos.version"));
    }

    private static String a(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str);
        } catch (Throwable unused) {
            return "";
        }
    }
}
