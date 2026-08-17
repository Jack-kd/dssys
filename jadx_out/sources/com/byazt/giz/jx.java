package com.byazt.giz;

import android.text.TextUtils;
import com.byazt.jw.j;
import com.byazt.jw.w;
import com.byazt.ymw.u;

@com.byazt.kj.hp(hp = {0, 1, 596, 30})
/* loaded from: classes2.dex */
public class jx {
    private static boolean hp(String str) {
        j jVarJ;
        w wVarJx = jx(str);
        if (wVarJx == null || (jVarJ = wVarJx.j()) == null) {
            return false;
        }
        return jVarJ.hp();
    }

    private static w jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return com.byazt.mdk.hp.j(str);
    }

    private static String l(String str) {
        j jVarJ;
        w wVarJx = jx(str);
        if (wVarJx == null || (jVarJ = wVarJx.j()) == null) {
            return null;
        }
        return jVarJ.l();
    }

    public static void hp(String str, w wVar) {
        if (wVar == null) {
            return;
        }
        hp(null, str, wVar.w(), 6);
    }

    public static void l(String str, w wVar) {
        if (wVar == null) {
            return;
        }
        hp(null, str, wVar.w(), 100);
    }

    public static void hp(String str, String str2, w wVar) {
        if (wVar == null) {
            return;
        }
        hp(str, str2, wVar.w(), 6);
    }

    private static void hp(String str, String str2, String str3, int i2) {
        try {
            if (hp(str3) || i2 == 100) {
                String strL = l(str3);
                if (strL == null) {
                    strL = "";
                }
                String str4 = strL + "log";
                if (!TextUtils.isEmpty(str)) {
                    str4 = str4 + str;
                }
                if (i2 == 6 || i2 == 100) {
                    u.l(str4, str2);
                }
            }
        } catch (Exception unused) {
        }
    }
}
