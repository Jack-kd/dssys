package com.bykv.vk.component.ttvideo.log;

import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.Keep;

@Keep
/* loaded from: classes3.dex */
public final class MyLog {
    private static final boolean DEBUG = false;
    private static final boolean INFO = true;

    private MyLog() {
    }

    public static void d(String str, String str2) {
    }

    public static void e(String str, String str2) {
        u.l(str, str2);
    }

    public static void i(String str, String str2) {
    }

    public static void t(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return;
        }
        if (str2.length() > 3072) {
            while (str2.length() > 3072) {
                String strSubstring = str2.substring(0, 3072);
                str2 = str2.replace(strSubstring, "");
                u.l(str, strSubstring);
            }
        }
        u.l(str, str2);
    }

    public static void w(String str, String str2) {
    }
}
