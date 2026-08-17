package com.byazt.wm;

import android.content.Context;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 75, 38})
/* loaded from: classes3.dex */
public class j {
    public static String hp;

    /* renamed from: j, reason: collision with root package name */
    public static String f26920j;
    public static String jx;

    /* renamed from: l, reason: collision with root package name */
    public static String f26921l;

    /* renamed from: w, reason: collision with root package name */
    public static Boolean f26922w;

    public static boolean a() {
        return w() && l(l(), hp()) && hp(Process.myUid()) == 0;
    }

    public static String eb() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return (String) cls.getMethod("getOsBrand", null).invoke(cls, null);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean hp(Context context) {
        return context != null && jx(context) == 0 && w();
    }

    public static String j() {
        if (f26920j == null) {
            f26920j = hp("getBuildVersion");
        }
        return f26920j;
    }

    public static String jx() {
        if (jx == null) {
            jx = hp("getReleaseType");
        }
        return jx;
    }

    public static boolean l(Context context) {
        return context != null && j(context) == 0 && a();
    }

    public static boolean w() {
        if (f26922w == null) {
            f26922w = Boolean.FALSE;
            try {
                f26922w = Boolean.valueOf("156".equals(hp("ro.config.hw_optb", "0")) && "true".equals(hp("hw_mc.pure_mode.enable", "false")));
            } catch (Exception unused) {
            }
        }
        return f26922w.booleanValue();
    }

    public static String hp() {
        if (hp == null) {
            hp = hp("getApiVersion");
        }
        return hp;
    }

    public static String l() {
        if (f26921l == null) {
            f26921l = hp("getVersion");
        }
        return f26921l;
    }

    public static int j(Context context) {
        return (context == null || Settings.Secure.getInt(context.getContentResolver(), "pure_enhanced_mode_state", 1) != 0) ? 1 : 0;
    }

    public static int jx(Context context) {
        if (context == null) {
            return 1;
        }
        if (l(l(), hp())) {
            return Settings.Secure.getInt(context.getContentResolver(), "pure_mode_state", 1) == 0 ? 0 : 1;
        }
        return Settings.Secure.getInt(context.getContentResolver(), "pure_mode_state", 0);
    }

    private static String hp(String str, String str2) {
        try {
            Class<?> cls = Class.forName("com.huawei.android.os.SystemPropertiesEx");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Throwable unused) {
            return str2;
        }
    }

    private static boolean l(String str, String str2) {
        return !TextUtils.isEmpty(str2) && str.startsWith("3");
    }

    private static int hp(int i2) {
        try {
            Class<?> cls = Class.forName("com.huawei.android.os.UserHandleEx");
            return ((Integer) cls.getMethod("getUserId", Integer.TYPE).invoke(cls, Integer.valueOf(i2))).intValue();
        } catch (Throwable unused) {
            return 1;
        }
    }

    private static String hp(String str) {
        try {
            Class<?> cls = Class.forName("ohos.system.version.SystemVersion");
            return cls.getMethod(str, null).invoke(cls, null).toString();
        } catch (Throwable unused) {
            return null;
        }
    }
}
