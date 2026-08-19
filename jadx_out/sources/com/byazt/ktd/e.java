package com.byazt.ktd;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 45})
/* loaded from: classes.dex */
public final class e {
    public static boolean hp() {
        return a.hp();
    }

    public static void l(int i2, int i3, String str) {
        hp((Object) str);
    }

    public static void hp(int i2, int i3, String str) {
        hp((Object) str);
    }

    public static void hp(int i2, String str) {
        hp(str);
    }

    public static String hp(String str) {
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return "";
        }
        return "len=" + strTrim.length() + ",hash=" + strTrim.hashCode();
    }

    private static String hp(Object obj) {
        return obj == null ? "" : String.valueOf(obj);
    }
}
