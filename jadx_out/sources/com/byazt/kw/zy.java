package com.byazt.kw;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Locale;

@com.byazt.kj.hp(hp = {0, 1, 756, 302})
/* loaded from: classes.dex */
public class zy {
    public static final CharSequence hp = "sony";

    /* renamed from: l, reason: collision with root package name */
    public static final CharSequence f22233l = "amigo";
    public static final CharSequence jx = "funtouch";

    public static boolean a() {
        String str = Build.DISPLAY;
        return !TextUtils.isEmpty(str) && str.toLowerCase(Locale.getDefault()).contains(f22233l);
    }

    public static String e() {
        if (!jx.jx()) {
            return "";
        }
        return "miui_" + hp("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    public static String eb() {
        return Build.DISPLAY + "_" + hp("ro.gn.sv.version");
    }

    public static String gu() {
        String strHp = jx.hp();
        if (strHp == null || !strHp.toLowerCase(Locale.getDefault()).contains("emotionui")) {
            return "";
        }
        return strHp + "_" + Build.DISPLAY;
    }

    public static String hp() {
        if (jx.jx()) {
            return e();
        }
        if (jx.j()) {
            return jl();
        }
        if (zy()) {
            return k();
        }
        String strGu = gu();
        if (!TextUtils.isEmpty(strGu)) {
            return strGu;
        }
        if (w()) {
            return j();
        }
        if (a()) {
            return eb();
        }
        if (jx()) {
            return l();
        }
        String strS = s();
        return !TextUtils.isEmpty(strS) ? strS : Build.DISPLAY;
    }

    public static String j() {
        return hp("ro.vivo.os.build.display.id") + "_" + hp("ro.vivo.product.version");
    }

    public static String jl() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase(Locale.getDefault()).contains("flyme")) ? "" : str;
    }

    public static boolean jx() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.getDefault());
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static String k() {
        if (!zy()) {
            return "";
        }
        return "coloros_" + hp("ro.build.version.opporom") + "_" + Build.DISPLAY;
    }

    public static String l() {
        return hp("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static boolean q() {
        return !TextUtils.isEmpty(hp("ro.letv.release.version"));
    }

    public static String s() {
        if (!q()) {
            return "";
        }
        return "eui_" + hp("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static boolean w() {
        String strHp = hp("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(strHp) && strHp.toLowerCase(Locale.getDefault()).contains(jx);
    }

    public static boolean zy() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase(Locale.getDefault()).contains("oppo");
    }

    private static String hp(String str) {
        BufferedReader bufferedReader;
        String line = "";
        try {
            Process processExec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
            bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()), 1024);
            try {
                line = bufferedReader.readLine();
                processExec.destroy();
                a.hp(bufferedReader);
                return line;
            } catch (Throwable unused) {
                a.hp(bufferedReader);
                return line;
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
    }
}
