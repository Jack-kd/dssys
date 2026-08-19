package com.byazt.oda;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.pg.dy;
import com.byazt.pg.r;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 54})
/* loaded from: classes3.dex */
public class a {
    public static int hp;

    /* renamed from: l, reason: collision with root package name */
    public static int f23978l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp implements Callable<String> {
        public String hp;

        /* renamed from: l, reason: collision with root package name */
        public com.byazt.pg.hp f23979l;

        public hp(String str, com.byazt.pg.hp hpVar) {
            this.hp = str;
            this.f23979l = hpVar;
        }

        @Override // java.util.concurrent.Callable
        public String call() throws Exception {
            System.currentTimeMillis();
            String strHp = a.hp(this.hp);
            System.currentTimeMillis();
            if (!TextUtils.isEmpty(strHp)) {
                try {
                    s.hp("rom_info", this.f23979l).put("rom_property_info", strHp);
                } catch (Throwable unused) {
                }
            }
            return strHp;
        }
    }

    public static String hp(com.byazt.pg.hp hpVar) {
        StringBuilder sb = new StringBuilder();
        try {
            if (hp()) {
                sb.append("MIUI-");
            } else if (l()) {
                sb.append("FLYME-");
            } else {
                String strL = l(hpVar);
                if (hp(strL, hpVar)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(strL)) {
                    sb.append(strL);
                    sb.append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Throwable unused) {
        }
        return sb.toString();
    }

    public static boolean j() throws ClassNotFoundException {
        if (f23978l == 0) {
            try {
                Class.forName("com.huawei.system.BuildEx");
                f23978l = 1;
            } catch (Exception unused) {
            }
        }
        return f23978l == 1;
    }

    private static String jx(com.byazt.pg.hp hpVar) {
        try {
            return s.hp("rom_info", hpVar).get("rom_property_info", "");
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean l() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static boolean w() {
        try {
            String str = Build.BRAND;
            if (TextUtils.isEmpty(str) || !str.toLowerCase().startsWith("huawei")) {
                String str2 = Build.MANUFACTURER;
                if (TextUtils.isEmpty(str2)) {
                    return false;
                }
                if (!str2.toLowerCase().startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String jx() {
        String str = Build.DISPLAY + "_" + Build.VERSION.INCREMENTAL;
        String str2 = Build.MANUFACTURER;
        if (hp()) {
            return "miui_" + str;
        }
        if (j()) {
            return "huawei_" + str;
        }
        Locale locale = Locale.ROOT;
        if (str2.toLowerCase(locale).contains("oppo")) {
            return "oppo_" + str;
        }
        if (str2.toLowerCase(locale).contains("vivo")) {
            return "vivo_" + str;
        }
        if (!str2.toLowerCase(locale).contains("oneplus")) {
            return str;
        }
        return "oneplus_" + str;
    }

    public static String l(com.byazt.pg.hp hpVar) {
        return l("ro.build.version.emui", hpVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static String l(String str, com.byazt.pg.hp hpVar) {
        String strJx;
        try {
            strJx = jx(hpVar);
            try {
                if (TextUtils.isEmpty(strJx)) {
                    final com.byazt.uid.a aVar = new com.byazt.uid.a(new hp(str, hpVar), 5, 2);
                    ((r) com.byazt.ym.j.getService("thread_service")).getIoExecutor().execute(new com.byazt.uid.eb("getSystemPropertyTask") { // from class: com.byazt.oda.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.run();
                        }
                    });
                    strJx = (String) aVar.get(1L, TimeUnit.SECONDS);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            strJx = "";
        }
        return strJx == null ? "" : strJx;
    }

    public static boolean hp() throws ClassNotFoundException {
        if (hp == 0) {
            try {
                Class.forName("miui.os.Build");
                hp = 1;
            } catch (Exception unused) {
            }
        }
        return hp == 1;
    }

    public static String hp(String str) {
        dy dyVar = (dy) com.byazt.ym.j.getService("system_info");
        if (dyVar != null) {
            return dyVar.get(str);
        }
        return "";
    }

    public static boolean hp(String str, com.byazt.pg.hp hpVar) {
        if (TextUtils.isEmpty(str)) {
            str = l(hpVar);
        }
        return (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("emotionui")) || w();
    }
}
