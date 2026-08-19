package com.byazt.oa;

import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 149, 157})
/* loaded from: classes3.dex */
public final class b {
    public static boolean hp;

    public static String hp(Throwable th) {
        StringBuilder sb = new StringBuilder("{\"code\":");
        sb.append(th instanceof vv ? ((vv) th).hp : 0);
        sb.append("}");
        return sb.toString();
    }

    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return "{\"code\":1}";
        }
        String strSubstring = hp ? str.substring(1, str.length() - 1) : "";
        String str2 = "{\"code\":1,\"__data\":" + str;
        if (strSubstring.isEmpty()) {
            return str2 + "}";
        }
        return str2 + "," + strSubstring + "}";
    }

    public static String hp() {
        return "";
    }

    public static void hp(boolean z2) {
        hp = z2;
    }
}
