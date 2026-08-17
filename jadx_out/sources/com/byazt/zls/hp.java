package com.byazt.zls;

import android.text.TextUtils;
import com.byazt.xci.xs;
import com.byazt.yrp.q;
import com.byazt.zn.ky;

@com.byazt.kj.hp(hp = {0, 1, 2172, 28})
/* loaded from: classes3.dex */
public class hp {
    public static boolean hp(q qVar) {
        if (qVar == null) {
            return false;
        }
        return hp(qVar.k());
    }

    public static boolean hp(xs xsVar) {
        if (xsVar == null) {
            return false;
        }
        String strL = xsVar.l();
        if (TextUtils.isEmpty(strL)) {
            return false;
        }
        return strL.startsWith("snssdk2329") || strL.startsWith("snssdk1128");
    }

    public static boolean hp(String str) {
        if (str == null) {
            return false;
        }
        if (str.startsWith("snssdk1128")) {
            return ky.jx("com.ss.android.ugc.aweme");
        }
        if (str.startsWith("snssdk2329")) {
            return ky.jx("com.ss.android.ugc.aweme.lite");
        }
        return false;
    }
}
