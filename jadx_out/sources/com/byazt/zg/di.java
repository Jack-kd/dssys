package com.byazt.zg;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.pg.dy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 308, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
/* loaded from: classes3.dex */
public class di {
    public static final CharSequence jx = "sony";

    /* renamed from: j, reason: collision with root package name */
    public static final CharSequence f28420j = "amigo";

    /* renamed from: w, reason: collision with root package name */
    public static final CharSequence f28422w = "funtouch";

    /* renamed from: a, reason: collision with root package name */
    public static final ExecutorService f28419a = com.byazt.aw.w.hp("romutils", 2, new RejectedExecutionHandler() { // from class: com.byazt.zg.di.1
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    });
    public static boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f28421l = false;

    @com.byazt.kj.hp(hp = {0, 1, 308, MediaPlayer.MEDIA_PLAYER_OPTION_GET_STREAM_INFO_FIND_END_TIME})
    public static class hp implements Callable<String> {
        public final String hp;

        public hp(String str) {
            this.hp = str;
        }

        @Override // java.util.concurrent.Callable
        public String call() throws Exception {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strL = di.l(this.hp);
            com.byazt.aw.l.hp("RomUtils", "property:" + strL + ",getSystemProperty use time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
            if (!TextUtils.isEmpty(strL)) {
                try {
                    com.byazt.aw.l.jx("RomUtils", "SP-getPropertyFromSP:".concat(String.valueOf(strL)));
                    com.byazt.ctq.jx jxVarN = di.n();
                    if (jxVarN != null) {
                        jxVarN.put("rom_property_info", strL);
                    }
                } catch (Throwable unused) {
                }
            }
            return strL;
        }
    }

    public static String a() {
        return jx("ro.vivo.os.build.display.id") + "_" + jx("ro.vivo.product.version");
    }

    public static String e() {
        if (!gu()) {
            return "";
        }
        return "eui_" + jx("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static boolean eb() {
        String strJx = jx("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(strJx) && strJx.toLowerCase().contains(f28422w);
    }

    public static String ec() {
        if (!vv()) {
            return "";
        }
        return "coloros_" + jx("ro.build.version.opporom") + "_" + Build.DISPLAY;
    }

    public static boolean gu() {
        return !TextUtils.isEmpty(jx("ro.letv.release.version"));
    }

    public static boolean j() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static String jl() {
        if (!w()) {
            return "";
        }
        return "miui_" + jx("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    public static String jx() {
        return jx("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static String k() {
        return jx("ro.build.version.emui");
    }

    public static boolean l() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.byazt.ctq.jx n() {
        try {
            if (com.byazt.di.hp.jl() != null) {
                return com.byazt.ry.j.hp(null, "gm_rom_info");
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String ns() {
        try {
            com.byazt.ctq.jx jxVarN = n();
            String string = jxVarN != null ? jxVarN.getString("rom_property_info", "") : "";
            com.byazt.aw.l.l("RomUtils", "get Property From SP...=".concat(String.valueOf(string)));
            return string;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String q() {
        return Build.DISPLAY + "_" + jx("ro.gn.sv.version");
    }

    public static boolean s() {
        String str = Build.DISPLAY;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains(f28420j);
    }

    public static String u() {
        if (v()) {
            try {
                return "smartisan_".concat(String.valueOf(jx("ro.smartisan.version")));
            } catch (Throwable unused) {
            }
        }
        return Build.DISPLAY;
    }

    public static boolean v() {
        return "smartisan".equalsIgnoreCase(Build.MANUFACTURER) || "smartisan".equalsIgnoreCase(Build.BRAND);
    }

    public static boolean vv() {
        String str = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains("oppo");
    }

    public static boolean w() throws ClassNotFoundException {
        if (!f28421l) {
            try {
                Class.forName("miui.os.Build");
                hp = true;
                f28421l = true;
                return true;
            } catch (Exception unused) {
                f28421l = true;
            }
        }
        return hp;
    }

    public static String xs() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    public static String zy() {
        String strK = k();
        if (strK == null || !strK.toLowerCase().contains("emotionui")) {
            return "";
        }
        return strK + "_" + Build.DISPLAY;
    }

    public static String hp() {
        if (v()) {
            return u();
        }
        if (w()) {
            return jl();
        }
        if (l()) {
            return xs();
        }
        if (vv()) {
            return ec();
        }
        String strZy = zy();
        if (!TextUtils.isEmpty(strZy)) {
            return strZy;
        }
        if (eb()) {
            return a();
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

    private static String jx(String str) {
        String strNs;
        try {
            strNs = ns();
            try {
                if (TextUtils.isEmpty(strNs)) {
                    FutureTask futureTask = new FutureTask(new hp(str));
                    f28419a.execute(futureTask);
                    strNs = (String) futureTask.get(1L, TimeUnit.SECONDS);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            strNs = "";
        }
        return strNs == null ? "" : strNs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String l(String str) {
        dy dyVar = (dy) com.byazt.ym.j.getService("system_info");
        return dyVar != null ? dyVar.get(str) : "";
    }
}
