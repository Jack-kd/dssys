package com.byazt.wm;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.octopus.ad.ADBidEvent;
import java.io.BufferedReader;
import java.io.InputStreamReader;

@com.byazt.kj.hp(hp = {0, 1, 75, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public static String f26924a = null;
    public static String eb = null;
    public static String hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static String f26925j = "";
    public static String jx = null;

    /* renamed from: l, reason: collision with root package name */
    public static String f26926l = "";

    /* renamed from: s, reason: collision with root package name */
    public static Boolean f26927s;

    /* renamed from: w, reason: collision with root package name */
    public static String f26928w;

    public static boolean a() {
        return hp("FLYME");
    }

    public static String e() {
        if (jx == null) {
            hp("");
        }
        return jx;
    }

    public static boolean eb() {
        return hp("SAMSUNG");
    }

    private static void ec() {
        if (eb == null) {
            try {
                eb = j("ro.miui.ui.version.name");
            } catch (Exception unused) {
            }
            String str = eb;
            if (str == null) {
                str = "";
            }
            eb = str;
        }
    }

    @NonNull
    public static String gu() {
        String str = Build.MANUFACTURER;
        return str == null ? "" : str.trim();
    }

    public static boolean hp() {
        return hp("EMUI") || hp("MAGICUI");
    }

    public static boolean j() {
        return hp(ADBidEvent.VIVO);
    }

    @NonNull
    public static String jl() {
        String str = Build.DISPLAY;
        return str == null ? "" : str.trim();
    }

    public static boolean jx() {
        return hp("MIUI");
    }

    public static boolean k() {
        ec();
        return "V11".equals(eb);
    }

    public static boolean l() {
        return hp("MAGICUI");
    }

    public static String q() {
        if (f26924a == null) {
            hp("");
        }
        return f26924a;
    }

    public static String s() {
        if (f26928w == null) {
            hp("");
        }
        return f26928w;
    }

    public static boolean u() {
        if (f26927s == null) {
            f26927s = Boolean.valueOf(j.eb().equals("harmony"));
        }
        return f26927s.booleanValue();
    }

    public static boolean v() {
        ec();
        return "V12".equals(eb);
    }

    private static void vv() {
        if (TextUtils.isEmpty(hp)) {
            com.byazt.yk.jx.lv();
            hp = com.byazt.oy.w.f24277l;
            f26925j = "ro.build.version." + com.byazt.oy.w.jx + "rom";
            f26926l = "com." + com.byazt.oy.w.jx + ".market";
        }
    }

    public static boolean w() {
        vv();
        return hp(hp);
    }

    public static boolean xs() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("honor")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toLowerCase().startsWith("honor");
    }

    public static boolean zy() {
        ec();
        return "V10".equals(eb);
    }

    public static boolean hp(String str) {
        vv();
        String str2 = f26928w;
        if (str2 != null) {
            return str2.equals(str);
        }
        String strJ = j("ro.miui.ui.version.name");
        f26924a = strJ;
        if (TextUtils.isEmpty(strJ)) {
            String strJ2 = j("ro.build.version.emui");
            f26924a = strJ2;
            if (TextUtils.isEmpty(strJ2)) {
                String strJ3 = j("ro.build.version.magic");
                f26924a = strJ3;
                if (TextUtils.isEmpty(strJ3)) {
                    String strJ4 = j(f26925j);
                    f26924a = strJ4;
                    if (TextUtils.isEmpty(strJ4)) {
                        String strJ5 = j("ro.vivo.os.version");
                        f26924a = strJ5;
                        if (TextUtils.isEmpty(strJ5)) {
                            String strJ6 = j("ro.smartisan.version");
                            f26924a = strJ6;
                            if (TextUtils.isEmpty(strJ6)) {
                                String strJ7 = j("ro.gn.sv.version");
                                f26924a = strJ7;
                                if (TextUtils.isEmpty(strJ7)) {
                                    String strJ8 = j("ro.lenovo.lvp.version");
                                    f26924a = strJ8;
                                    if (!TextUtils.isEmpty(strJ8)) {
                                        f26928w = "LENOVO";
                                        jx = "com.lenovo.leos.appstore";
                                    } else if (gu().toUpperCase().contains("SAMSUNG")) {
                                        f26928w = "SAMSUNG";
                                        jx = "com.sec.android.app.samsungapps";
                                    } else if (gu().toUpperCase().contains("ZTE")) {
                                        f26928w = "ZTE";
                                        jx = "zte.com.market";
                                    } else if (gu().toUpperCase().contains("NUBIA")) {
                                        f26928w = "NUBIA";
                                        jx = "cn.nubia.neostore";
                                    } else if (jl().toUpperCase().contains("FLYME")) {
                                        f26928w = "FLYME";
                                        jx = "com.meizu.mstore";
                                        f26924a = jl();
                                    } else if (gu().toUpperCase().contains("ONEPLUS")) {
                                        f26928w = "ONEPLUS";
                                        f26924a = j("ro.rom.version");
                                        if (com.byazt.ni.a.hp(f26926l) >= 0) {
                                            jx = f26926l;
                                        } else {
                                            jx = "com.heytap.market";
                                        }
                                    } else {
                                        f26928w = gu().toUpperCase();
                                        jx = "";
                                        f26924a = "";
                                    }
                                } else {
                                    f26928w = "QIONEE";
                                    jx = "com.gionee.aora.market";
                                }
                            } else {
                                f26928w = "SMARTISAN";
                                jx = "com.smartisanos.appstore";
                            }
                        } else {
                            f26928w = ADBidEvent.VIVO;
                            jx = "com.bbk.appstore";
                        }
                    } else {
                        f26928w = hp;
                        if (com.byazt.ni.a.hp(f26926l) >= 0) {
                            jx = f26926l;
                        } else {
                            jx = "com.heytap.market";
                        }
                    }
                } else {
                    f26928w = "MAGICUI";
                    jx = "com.hihonor.appmarket";
                }
            } else {
                String str3 = xs() ? "MAGICUI" : "EMUI";
                f26928w = str3;
                if (TextUtils.equals(str3, "MAGICUI")) {
                    jx = "com.hihonor.appmarket";
                } else {
                    jx = "com.huawei.appmarket";
                }
            }
        } else {
            f26928w = "MIUI";
            jx = "com.xiaomi.market";
            eb = f26924a;
        }
        return f26928w.equals(str);
    }

    public static String j(String str) {
        if (com.byazt.jb.hp.l().optBoolean("enable_reflect_system_properties", true)) {
            try {
                return jx(str);
            } catch (Throwable unused) {
            }
        }
        return l(str);
    }

    public static String jx(String str) throws Throwable {
        return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
    }

    public static String l(String str) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str))).getInputStream()), 1024);
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            String line = bufferedReader.readLine();
            bufferedReader.close();
            com.byazt.xq.a.hp(bufferedReader);
            return line;
        } catch (Throwable unused2) {
            com.byazt.xq.a.hp(bufferedReader);
            return null;
        }
    }
}
