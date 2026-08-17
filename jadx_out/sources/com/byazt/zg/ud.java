package com.byazt.zg;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;

@com.byazt.kj.hp(hp = {0, 1, 308, 591})
/* loaded from: classes3.dex */
public class ud {
    public static String hp;

    public static boolean hp() {
        return com.byazt.aw.l.l() && com.byazt.jz.s.u().rz();
    }

    public static String l() {
        if (TextUtils.isEmpty(hp)) {
            hp = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return hp;
    }

    public static String hp(String str) {
        try {
            if (!hp()) {
                return str;
            }
            String strSz = com.byazt.di.hp.jl().sz();
            if (TextUtils.isEmpty(strSz)) {
                return str;
            }
            com.byazt.aw.l.hp("TestHelperUtils", "AnyDoorId=" + strSz);
            return Uri.parse(str).buildUpon().appendQueryParameter(l(), strSz).appendQueryParameter("aid", "5001121").toString();
        } catch (Throwable unused) {
            return str;
        }
    }
}
