package com.byazt.aw;

import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 1452, 38})
/* loaded from: classes2.dex */
public class j {
    public static String hp() {
        return "TTMediationSDK_";
    }

    public static String l(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return hp();
        }
        if (TextUtils.isEmpty(str2)) {
            return hp(str);
        }
        return "TTMediationSDK_" + str + "_" + str2 + "_";
    }

    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return hp();
        }
        return "TTMediationSDK_" + str + "_";
    }

    public static String hp(com.byazt.tgw.l lVar) {
        if (lVar != null && !TextUtils.isEmpty(lVar.ky())) {
            return "TTMediationSDK_" + lVar.ky() + "_";
        }
        return hp();
    }

    public static String hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return hp();
        }
        if (TextUtils.isEmpty(str2)) {
            return hp(str);
        }
        return "TTMediationSDK_" + str + "_" + str2 + "_";
    }
}
