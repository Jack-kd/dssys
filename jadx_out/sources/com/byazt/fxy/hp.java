package com.byazt.fxy;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.jw.a;
import com.byazt.jw.w;

@com.byazt.kj.hp(hp = {0, 1, 1043, 28})
/* loaded from: classes2.dex */
public class hp {
    public static boolean a(w wVar) {
        a aVarL = wVar.l();
        return (aVarL == null || TextUtils.isEmpty(aVarL.a())) ? false : true;
    }

    public static long hp(int i2, Context context, w wVar) {
        return l(i2, context, wVar);
    }

    public static boolean j(w wVar) {
        a aVarL = wVar.l();
        return (aVarL == null || TextUtils.isEmpty(aVarL.w())) ? false : true;
    }

    public static boolean jx(w wVar) {
        a aVarL = wVar.l();
        return (aVarL == null || TextUtils.isEmpty(aVarL.j())) ? false : true;
    }

    private static long l(int i2, Context context, w wVar) {
        if (context == null) {
            return i2;
        }
        Runtime runtime = Runtime.getRuntime();
        long jFreeMemory = runtime.freeMemory() / 1048576;
        long jMaxMemory = (runtime.maxMemory() / 1048576) - (runtime.totalMemory() / 1048576);
        if (jMaxMemory <= 0) {
            if (jFreeMemory <= 2) {
                return 1L;
            }
            return jFreeMemory <= 10 ? Math.min(i2, 10) : Math.min((jFreeMemory / 2) * 10, i2);
        }
        long j2 = ((jFreeMemory + jMaxMemory) - 10) / 2;
        if (j2 <= 2) {
            return 1L;
        }
        return j2 <= 10 ? Math.min(i2, 10) : Math.min(j2 * 10, i2);
    }

    public static boolean w(w wVar) {
        a aVarL = wVar.l();
        return (aVarL == null || TextUtils.isEmpty(aVarL.jx())) ? false : true;
    }

    public static boolean hp(w wVar) {
        a aVarL = wVar.l();
        return (aVarL == null || TextUtils.isEmpty(aVarL.hp())) ? false : true;
    }

    public static boolean l(w wVar) {
        a aVarL = wVar.l();
        return (aVarL == null || TextUtils.isEmpty(aVarL.l())) ? false : true;
    }
}
