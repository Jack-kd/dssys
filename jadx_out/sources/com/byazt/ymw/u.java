package com.byazt.ymw;

import android.text.TextUtils;
import android.util.Log;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public final class u {
    public static boolean hp = false;

    /* renamed from: j, reason: collision with root package name */
    public static String f28109j = "";
    public static com.byazt.vy.hp jx = null;

    /* renamed from: l, reason: collision with root package name */
    public static int f28110l = 4;

    public static void hp(com.byazt.vy.hp hpVar) {
        jx = hpVar;
    }

    public static boolean jx() {
        return hp;
    }

    public static void l() {
        hp = true;
        hp(3);
    }

    public static void hp(int i2) {
        f28110l = i2;
    }

    public static boolean hp() {
        return f28110l <= 3;
    }

    public static void l(String str, String str2) {
        com.byazt.vy.hp hpVar = jx;
        if (hpVar != null) {
            hpVar.l(l(str), str2);
        }
        if (hp && str2 != null && f28110l <= 6) {
            Log.e(l(str), str2);
        }
    }

    public static void hp(String str, String str2) {
        com.byazt.vy.hp hpVar = jx;
        if (hpVar != null) {
            hpVar.hp(l(str), str2);
        }
        if (str2 == null) {
            return;
        }
        if (str == null) {
            str = "Logger";
        }
        l(str);
    }

    public static void hp(String str) {
        if (hp) {
            l("Logger", str);
        }
    }

    public static String l(String str) {
        if (TextUtils.isEmpty(f28109j)) {
            return str;
        }
        return hp("[" + f28109j + "]-[" + str + "]");
    }

    public static void hp(String str, String str2, Throwable th) {
        com.byazt.vy.hp hpVar = jx;
        if (hpVar != null) {
            hpVar.hp(l(str), str2, th);
        }
        if (hp) {
            if (!(str2 == null && th == null) && f28110l <= 6) {
                Log.e(l(str), str2, th);
            }
        }
    }

    public static void hp(String str, Throwable th) {
        hp(str, "", th);
    }

    public static void hp(String str, Object... objArr) {
        com.byazt.vy.hp hpVar = jx;
        if (hpVar != null) {
            hpVar.l(l(str), hp(objArr));
        }
        if (hp && objArr != null && f28110l <= 6) {
            Log.e(l(str), hp(objArr));
        }
    }

    private static String hp(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            StringBuilder sb = new StringBuilder();
            for (Object obj : objArr) {
                if (obj != null) {
                    sb.append(obj.toString());
                } else {
                    sb.append(" null ");
                }
                sb.append(" ");
            }
            return sb.toString();
        }
        return "";
    }
}
