package com.byazt.pn;

@com.byazt.kj.hp(hp = {0, 1, 741, 54})
/* loaded from: classes3.dex */
public final class a {
    public static boolean hp(String str) {
        return "POST".equals(str) || "PATCH".equals(str) || "PUT".equals(str) || "DELETE".equals(str) || "MOVE".equals(str);
    }

    public static boolean j(String str) {
        return "PROPFIND".equals(str);
    }

    public static boolean jx(String str) {
        return l(str) || "OPTIONS".equals(str) || "DELETE".equals(str) || "PROPFIND".equals(str) || "MKCOL".equals(str) || "LOCK".equals(str);
    }

    public static boolean l(String str) {
        return "POST".equals(str) || "PUT".equals(str) || "PATCH".equals(str) || "PROPPATCH".equals(str) || "REPORT".equals(str);
    }

    public static boolean w(String str) {
        return !"PROPFIND".equals(str);
    }
}
