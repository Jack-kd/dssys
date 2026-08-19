package com.byazt.zn;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import com.octopus.ad.ADBidEvent;
import com.umeng.commonsdk.statistics.UMErrorCode;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f28497a = null;
    public static int eb = 1;
    public static String hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static String f28498j = null;
    public static Boolean jx = null;

    /* renamed from: l, reason: collision with root package name */
    public static String f28499l = null;

    /* renamed from: s, reason: collision with root package name */
    public static int f28500s = 1;

    /* renamed from: w, reason: collision with root package name */
    public static String f28501w;

    public static String a() {
        return f28499l;
    }

    public static boolean e() {
        return jl() && hp(a(), w()) && zy() == 0;
    }

    public static String eb() {
        return f28501w;
    }

    public static int gu() {
        return eb;
    }

    public static void hp() {
        if (jx == null) {
            if (!j() && !jx()) {
                jx = Boolean.FALSE;
                return;
            }
            try {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                jx = Boolean.valueOf("harmony".equals(cls.getMethod("getOsBrand", null).invoke(cls, null)));
            } catch (Throwable unused) {
                jx = Boolean.FALSE;
            }
            if (hp == null) {
                hp = hp("getApiVersion");
            }
            if (f28499l == null) {
                f28499l = hp("getVersion");
            }
            if (f28501w == null) {
                f28501w = hp("getReleaseType");
            }
            if (f28498j == null) {
                f28498j = hp("getBuildVersion");
            }
            if (f28497a == null) {
                f28497a = Boolean.FALSE;
                try {
                    f28497a = Boolean.valueOf("156".equals(l("ro.config.hw_optb", "0")) && "true".equals(l("hw_mc.pure_mode.enable", "false")));
                } catch (Exception unused2) {
                }
            }
            try {
                eb = Settings.Secure.getInt(com.byazt.jz.sz.getContext().getContentResolver(), "pure_enhanced_mode_state", 1);
            } catch (Throwable unused3) {
            }
            try {
                Class<?> cls2 = Class.forName("com.huawei.android.os.UserHandleEx");
                f28500s = ((Integer) cls2.getMethod("getUserId", Integer.TYPE).invoke(cls2, Integer.valueOf(Process.myUid()))).intValue();
            } catch (Throwable unused4) {
            }
        }
    }

    public static boolean j() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toUpperCase().startsWith("HONOR")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toUpperCase().startsWith("HONOR");
    }

    public static boolean jl() {
        Boolean bool = f28497a;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static boolean jx() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toUpperCase().startsWith(ADBidEvent.HUAWEI)) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toUpperCase().startsWith(ADBidEvent.HUAWEI);
    }

    public static boolean l() {
        Boolean bool = jx;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static boolean q() {
        return gu() == 0 && e();
    }

    public static String s() {
        return f28498j;
    }

    public static String w() {
        return hp;
    }

    private static int zy() {
        return f28500s;
    }

    private static int l(Context context) {
        if (context != null) {
            return Settings.Secure.getInt(context.getContentResolver(), "pure_mode_state", 0);
        }
        return 1;
    }

    private static String l(String str, String str2) {
        try {
            Class<?> cls = Class.forName("com.huawei.android.os.SystemPropertiesEx");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Throwable unused) {
            return str2;
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

    public static boolean hp(Context context) {
        return context != null && l(context) == 0 && jl();
    }

    public static void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("pure_enhanced_mode", q() ? 1 : 2);
            jSONObject.put("pure_enhanced_mode_enable", e() ? 1 : 2);
        } catch (Throwable unused) {
        }
    }

    private static boolean hp(String str, String str2) {
        return (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || !str.startsWith("3")) ? false : true;
    }
}
