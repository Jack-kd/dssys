package com.byazt.oa;

import android.util.Log;

@com.byazt.kj.hp(hp = {0, 1, 149, 150})
/* loaded from: classes3.dex */
public final class q {
    public static boolean hp;

    public static void hp(boolean z2) {
        hp = z2;
    }

    public static void l(String str, Throwable th) {
        if (hp) {
            com.byazt.ymw.u.hp("JsBridge2", str, th);
            com.byazt.ymw.u.l("JsBridge2", "Stacktrace: " + Log.getStackTraceString(th));
        }
    }

    public static void hp(String str, Throwable th) {
        if (hp) {
            Log.getStackTraceString(th);
        }
    }

    public static void hp(RuntimeException runtimeException) {
        if (hp) {
            throw runtimeException;
        }
    }
}
