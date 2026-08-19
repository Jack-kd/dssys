package com.kwad.library.solder.lib;

import android.util.Log;

/* loaded from: classes4.dex */
public final class a {
    private static String DH() {
        return "";
    }

    private static String F(String str, String str2) {
        return "[" + str + "]: " + str2 + " " + DH();
    }

    public static void e(String str, String str2) {
        Log.e("Sodler", F(str, str2));
    }

    public static void e(String str, Throwable th) {
        Log.e("Sodler", F(str, ""), th);
    }

    public static void e(String str, String str2, Throwable th) {
        Log.e("Sodler", F(str, str2), th);
    }
}
