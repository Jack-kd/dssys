package com.ubix.ssp.ad.e.a0.c0;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.octopus.ad.ADBidEvent;

/* loaded from: classes5.dex */
public final class g {
    private g() {
    }

    public static String a(String str, String str2) throws ClassNotFoundException {
        String str3;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str3 = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e2) {
            f.a("System property invoke error: " + e2);
            str3 = null;
        }
        return str3 == null ? "" : str3;
    }

    public static boolean b() {
        return Build.MANUFACTURER.equalsIgnoreCase("BLACKSHARK") || Build.BRAND.equalsIgnoreCase("BLACKSHARK");
    }

    public static boolean c() {
        return a("ro.odm.manufacturer", "").equalsIgnoreCase("PRIZE");
    }

    public static boolean d() {
        return !TextUtils.isEmpty(a("ro.build.version.emui", ""));
    }

    public static boolean e() {
        return !TextUtils.isEmpty(a("ro.build.freeme.label", ""));
    }

    public static boolean f() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            Object objInvoke = cls.getMethod("getOsBrand", null).invoke(cls, null);
            if (objInvoke != null) {
                return objInvoke.toString().length() > 0;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean g() {
        return Build.BRAND.equalsIgnoreCase("HONOR");
    }

    public static boolean h() {
        return Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.HUAWEI) || Build.BRAND.equalsIgnoreCase(ADBidEvent.HUAWEI);
    }

    public static boolean i() {
        if (Build.MANUFACTURER.equalsIgnoreCase("LENOVO")) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase("LENOVO") || str.equalsIgnoreCase("ZUK");
    }

    public static boolean j() {
        return !TextUtils.isEmpty(a("ro.build.version.magic", ""));
    }

    public static boolean k() {
        return Build.MANUFACTURER.equalsIgnoreCase("MEIZU") || Build.BRAND.equalsIgnoreCase("MEIZU") || Build.DISPLAY.toUpperCase().contains("FLYME");
    }

    public static boolean l() {
        return !TextUtils.isEmpty(a("ro.miui.ui.version.name", ""));
    }

    public static boolean m() {
        if (Build.MANUFACTURER.toUpperCase().contains("MOTO")) {
            return true;
        }
        String str = Build.BRAND;
        return str.toUpperCase().contains("MOTO") || str.equalsIgnoreCase("MOTOROLA");
    }

    public static boolean n() {
        return Build.MANUFACTURER.equalsIgnoreCase("NUBIA") || Build.BRAND.equalsIgnoreCase("NUBIA");
    }

    public static boolean o() {
        return Build.MANUFACTURER.equalsIgnoreCase("ONEPLUS") || Build.BRAND.equalsIgnoreCase("ONEPLUS");
    }

    public static boolean p() {
        if (Build.MANUFACTURER.equalsIgnoreCase("OPPO")) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase("OPPO") || str.equalsIgnoreCase("REALME") || !TextUtils.isEmpty(a("ro.build.version.opporom", ""));
    }

    public static boolean q() {
        return Build.MANUFACTURER.equalsIgnoreCase("SAMSUNG") || Build.BRAND.equalsIgnoreCase("SAMSUNG");
    }

    public static boolean r() {
        return Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.VIVO) || Build.BRAND.equalsIgnoreCase(ADBidEvent.VIVO) || !TextUtils.isEmpty(a("ro.vivo.os.version", ""));
    }

    public static boolean s() {
        if (Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.XIAOMI)) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase(ADBidEvent.XIAOMI) || str.equalsIgnoreCase("REDMI");
    }

    public static boolean a() {
        return Build.MANUFACTURER.equalsIgnoreCase("ASUS") || Build.BRAND.equalsIgnoreCase("ASUS");
    }

    public static boolean a(Context context) {
        if (Build.MANUFACTURER.toUpperCase().contains("COOL") || Build.BRAND.toUpperCase().contains("COOL") || Build.MODEL.toUpperCase().contains("COOL")) {
            return true;
        }
        try {
            context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
