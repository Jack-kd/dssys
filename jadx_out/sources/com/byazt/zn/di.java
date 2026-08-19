package com.byazt.zn;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Locale;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
/* loaded from: classes3.dex */
public class di {
    public static int eb = Integer.MAX_VALUE;
    public static volatile int hp;

    /* renamed from: l, reason: collision with root package name */
    public static int f28493l;

    /* renamed from: s, reason: collision with root package name */
    public static String f28494s;
    public static final CharSequence jx = "sony";

    /* renamed from: j, reason: collision with root package name */
    public static final CharSequence f28492j = "amigo";

    /* renamed from: w, reason: collision with root package name */
    public static final CharSequence f28495w = "funtouch";

    /* renamed from: a, reason: collision with root package name */
    public static final CharSequence f28491a = LiveConfigKey.ORIGIN;

    public static boolean a() {
        String strHp = hp("ro.vivo.os.build.display.id");
        if (TextUtils.isEmpty(strHp)) {
            return false;
        }
        return strHp.toLowerCase().contains(f28495w) || strHp.toLowerCase().contains(LiveConfigKey.ORIGIN);
    }

    public static String e() {
        return Build.DISPLAY + "_" + hp("ro.gn.sv.version");
    }

    public static String eb() {
        return "vivo_" + hp("ro.vivo.os.build.display.id") + "_" + hp("ro.vivo.product.version");
    }

    public static int ec() {
        try {
            return (int) Os.sysconf(OsConstants._SC_PAGESIZE);
        } catch (Throwable unused) {
            return 4097;
        }
    }

    public static boolean gu() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static String hp() {
        return hp("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static String j() {
        if (!xs()) {
            return "";
        }
        return "coloros_" + hp("ro.build.version.kllkrom") + "_" + Build.DISPLAY;
    }

    public static String jl() {
        if (!zy()) {
            return "";
        }
        return "eui_" + hp("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static String jx() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    public static String k() {
        if (TextUtils.isEmpty(f28494s)) {
            f28494s = ns();
        }
        return f28494s;
    }

    public static String l() {
        if (!sz()) {
            return "";
        }
        return "miui_" + hp("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    public static boolean n() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    private static String ns() {
        if (sz()) {
            return l();
        }
        if (n()) {
            return jx();
        }
        if (xs()) {
            return j();
        }
        String strW = w();
        if (!TextUtils.isEmpty(strW)) {
            return strW;
        }
        if (a()) {
            return eb();
        }
        if (s()) {
            return e();
        }
        if (gu()) {
            return hp();
        }
        String strJl = jl();
        if (!TextUtils.isEmpty(strJl)) {
            return strJl;
        }
        if (Build.MANUFACTURER.toLowerCase(Locale.ROOT).contains("oneplus")) {
            return "oneplus_" + Build.DISPLAY + "_" + Build.VERSION.INCREMENTAL;
        }
        if (vv()) {
            return "honor_" + ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getEmuiInfo();
        }
        if (q()) {
            return "freeme_" + ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getEmuiInfo();
        }
        return Build.DISPLAY + "_" + Build.VERSION.INCREMENTAL;
    }

    public static boolean q() {
        try {
            return "FreemeOS".equalsIgnoreCase(hp("ro.build.freemeos_label"));
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean s() {
        String str = Build.DISPLAY;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains(f28492j);
    }

    public static boolean sz() {
        if (hp == 0) {
            try {
                Class.forName("miui.os.Build");
                hp = 1;
            } catch (Throwable unused) {
                hp = 2;
            }
        }
        return hp == 1;
    }

    public static boolean u() {
        try {
            String str = Build.MANUFACTURER;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return str.toLowerCase().contains("vivo");
        } catch (Exception e2) {
            com.byazt.ymw.u.l("romUtils", e2.getMessage());
            return false;
        }
    }

    public static boolean v() {
        try {
            String str = Build.MANUFACTURER;
            if (!TextUtils.isEmpty(str)) {
                if (str.toLowerCase().contains("oppo")) {
                    return true;
                }
                return str.toLowerCase().contains("realme");
            }
        } catch (Exception e2) {
            com.byazt.ymw.u.l("romUtil", e2.getMessage());
        }
        return false;
    }

    public static boolean vv() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("honor")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return (!TextUtils.isEmpty(str2) && str2.toLowerCase().startsWith("honor")) || "HONOR".equalsIgnoreCase(str2);
    }

    public static String w() {
        String emuiInfo = ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getEmuiInfo();
        if (emuiInfo == null) {
            return "";
        }
        if (!emuiInfo.toLowerCase().contains("emotionui") && !emuiInfo.toLowerCase().contains("magicui")) {
            return "";
        }
        return emuiInfo + "_" + Build.DISPLAY;
    }

    public static boolean xs() {
        if (eb == Integer.MAX_VALUE) {
            String str = Build.MANUFACTURER;
            String strZy = ky.zy("kllk");
            if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.ROOT).contains(strZy)) {
                eb = 0;
            } else {
                eb = 1;
            }
        }
        return eb == 1;
    }

    public static boolean zy() {
        return !TextUtils.isEmpty(hp("ro.letv.release.version"));
    }

    public static String hp(String str) {
        com.byazt.pg.dy dyVar = (com.byazt.pg.dy) com.byazt.ym.j.getService("system_info");
        return dyVar != null ? dyVar.get(str) : "";
    }
}
