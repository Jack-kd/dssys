package com.byazt.nu;

import android.text.TextUtils;
import com.byazt.ymw.u;

@com.byazt.kj.hp(hp = {0, 1, 546, 28})
/* loaded from: classes3.dex */
public class hp {
    public static int hp = 4;

    /* renamed from: l, reason: collision with root package name */
    public static AbstractC0322hp f23791l;

    @com.byazt.kj.hp(hp = {0, 1, 546, 170})
    /* renamed from: com.byazt.nu.hp$hp, reason: collision with other inner class name */
    public static abstract class AbstractC0322hp {
    }

    public static void hp(int i2) {
        hp = i2;
    }

    public static void j(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (hp <= 5) {
            l(str);
        }
        if (f23791l != null) {
            l(str);
        }
    }

    public static void jx(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (hp <= 4) {
            l(str);
        }
        if (f23791l != null) {
            l(str);
        }
    }

    public static String l(String str) {
        if (TextUtils.isEmpty(str)) {
            return "DownloaderLogger";
        }
        return "Downloader-" + str;
    }

    public static void w(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (hp <= 6) {
            u.l(l(str), str2);
        }
        if (f23791l != null) {
            l(str);
        }
    }

    public static boolean hp() {
        return hp <= 3;
    }

    public static void hp(String str, String str2) {
        if (str2 == null || f23791l == null) {
            return;
        }
        l(str);
    }

    public static void l(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (hp <= 3) {
            l(str);
        }
        if (f23791l != null) {
            l(str);
        }
    }

    public static void hp(String str) {
        l("DownloaderLogger", str);
    }

    public static void jx(String str) {
        j("DownloaderLogger", str);
    }

    public static void hp(String str, String str2, Throwable th) {
        if (str2 == null && th == null) {
            return;
        }
        if (hp <= 3) {
            l(str);
        }
        if (f23791l != null) {
            l(str);
        }
    }

    public static void l(String str, String str2, Throwable th) {
        if (str2 == null && th == null) {
            return;
        }
        if (hp <= 6) {
            u.hp(l(str), str2, th);
        }
        if (f23791l != null) {
            l(str);
        }
    }
}
