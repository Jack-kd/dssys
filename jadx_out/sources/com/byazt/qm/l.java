package com.byazt.qm;

import android.text.TextUtils;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FILE_FORMAT, 34})
/* loaded from: classes3.dex */
public class l {
    public static boolean hp = false;
    public static String jx = "";

    /* renamed from: l, reason: collision with root package name */
    public static int f24976l = 4;

    public static void hp(int i2) {
        f24976l = i2;
    }

    public static boolean l() {
        return hp;
    }

    public static void hp() {
        hp = true;
        hp(3);
    }

    private static String l(String str) {
        if (TextUtils.isEmpty(jx)) {
            return str;
        }
        return hp("[" + jx + "]-[" + str + "]");
    }

    public static void hp(String str) {
        if (hp) {
            hp("Logger", str);
        }
    }

    public static void hp(String str, String str2) {
        if (hp && str2 != null && f24976l <= 6) {
            u.l(l(str), str2);
        }
    }

    public static void hp(String str, String str2, Throwable th) {
        if (hp) {
            if (!(str2 == null && th == null) && f24976l <= 6) {
                u.hp(l(str), str2, th);
            }
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
