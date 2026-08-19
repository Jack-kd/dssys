package com.byazt.zq;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.gt.q;
import com.byazt.gt.zy;
import com.byazt.ymw.u;
import com.octopus.ad.ADBidEvent;
import java.util.Locale;

@com.byazt.kj.hp(hp = {0, 1, 1961, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final CharSequence hp = "sony";

    /* renamed from: l, reason: collision with root package name */
    public static final CharSequence f28588l = "amigo";
    public static final CharSequence jx = "funtouch";

    /* renamed from: j, reason: collision with root package name */
    public static final AbstractC0438hp<Boolean> f28587j = new AbstractC0438hp<Boolean>() { // from class: com.byazt.zq.hp.1
        @Override // com.byazt.zq.hp.AbstractC0438hp
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public Boolean l(Object... objArr) {
            try {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                return Boolean.valueOf("harmony".equals(cls.getMethod("getOsBrand", null).invoke(cls, null)));
            } catch (Throwable unused) {
                return Boolean.FALSE;
            }
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, 1961, 170})
    /* renamed from: com.byazt.zq.hp$hp, reason: collision with other inner class name */
    public static abstract class AbstractC0438hp<T> {
        public volatile T hp;

        public final T jx(Object... objArr) {
            if (this.hp == null) {
                synchronized (this) {
                    try {
                        if (this.hp == null) {
                            this.hp = l(objArr);
                        }
                    } finally {
                    }
                }
            }
            return this.hp;
        }

        public abstract T l(Object... objArr);
    }

    public static boolean a() {
        String str = Build.DISPLAY;
        return (!TextUtils.isEmpty(str) && str.contains("Flyme")) || "flyme".equals(Build.USER);
    }

    public static boolean b() throws IllegalArgumentException {
        if ("lenovo".equalsIgnoreCase(Build.BRAND) || "motorola".equalsIgnoreCase(Build.MANUFACTURER)) {
            return true;
        }
        String str = Build.FINGERPRINT;
        if (!TextUtils.isEmpty(str)) {
            return str.contains("VIBEUI_V2");
        }
        String strHp = hp("ro.build.version.incremental");
        return !TextUtils.isEmpty(strHp) && strHp.contains("VIBEUI_V2");
    }

    public static boolean cx() {
        return "samsung".equalsIgnoreCase(Build.BRAND) || "samsung".equalsIgnoreCase(Build.MANUFACTURER);
    }

    private static String d() {
        String str = Build.MANUFACTURER;
        return str == null ? "" : str.trim();
    }

    public static boolean di() {
        return d().toUpperCase().contains("NUBIA");
    }

    public static String e() {
        if (!gu()) {
            return "";
        }
        return "eui_" + hp("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static boolean eb() throws IllegalArgumentException {
        String strHp = hp("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(strHp) && strHp.toLowerCase().contains(jx);
    }

    public static boolean ec() {
        if (Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.XIAOMI)) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase(ADBidEvent.XIAOMI) || str.equalsIgnoreCase("REDMI");
    }

    public static boolean gu() {
        return !TextUtils.isEmpty(hp("ro.letv.release.version"));
    }

    public static String hp() {
        return hp("ro.build.version.emui");
    }

    public static boolean j() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static boolean jl() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("honor")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return (!TextUtils.isEmpty(str2) && str2.toLowerCase().startsWith("honor")) || "HONOR".equalsIgnoreCase(str2);
    }

    public static String jx() {
        return hp("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static boolean k() {
        try {
            return Class.forName("miui.os.Build").getName().length() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String l() {
        if (k()) {
            return v();
        }
        if (a()) {
            return xs();
        }
        if (vv()) {
            return sz();
        }
        String strU = u();
        if (!TextUtils.isEmpty(strU)) {
            return strU;
        }
        if (eb()) {
            return w();
        }
        if (s()) {
            return q();
        }
        if (j()) {
            return jx();
        }
        String strE = e();
        return !TextUtils.isEmpty(strE) ? strE : Build.DISPLAY;
    }

    public static boolean n() {
        String str = Build.BRAND;
        if (str == null) {
            return false;
        }
        return str.toLowerCase(Locale.ENGLISH).contains("meizu");
    }

    public static boolean ns() {
        return "OnePlus".equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean o() {
        return d().toUpperCase().contains("ASUS");
    }

    public static String q() {
        return Build.DISPLAY + "_" + hp("ro.gn.sv.version");
    }

    public static boolean s() {
        String str = Build.DISPLAY;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains(f28588l);
    }

    public static String sz() {
        if (!vv()) {
            return "";
        }
        return "coloros_" + hp("ro.build.version.opporom") + "_" + Build.DISPLAY;
    }

    public static String u() {
        String strHp = hp();
        if (strHp == null) {
            return "";
        }
        if (!strHp.toLowerCase().contains("emotionui") && !strHp.toLowerCase().contains("magicui")) {
            return "";
        }
        return strHp + "_" + Build.DISPLAY;
    }

    public static String v() {
        if (!k()) {
            return "";
        }
        return "miui_" + hp("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    public static boolean vv() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase().contains("oppo") || str.toLowerCase().contains("realme");
    }

    public static String w() {
        return hp("ro.vivo.os.build.display.id") + "_" + hp("ro.vivo.product.version");
    }

    public static String xs() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    public static boolean zy() throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return !TextUtils.isEmpty((String) cls.getDeclaredMethod("get", String.class).invoke(cls, "ro.build.version.emui"));
        } catch (Exception e2) {
            u.l("Honor", e2.getMessage());
            return false;
        }
    }

    private static String hp(String str) throws IllegalArgumentException {
        String strHp = q.hp(str);
        return !TextUtils.isEmpty(strHp) ? strHp : zy.hp(str);
    }

    public static boolean hp(Context context) {
        return d().toUpperCase().contains(ADBidEvent.HUAWEI);
    }
}
