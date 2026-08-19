package com.byazt.aw;

import java.util.IllegalFormatException;

@com.byazt.kj.hp(hp = {0, 1, 1452, 30})
/* loaded from: classes2.dex */
public final class jx {
    public static void hp(Object obj) {
        hp(obj, true, "Object can not be null.", "");
    }

    private static boolean hp(Object obj, boolean z2, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String strHp = hp(str, objArr);
        if (z2) {
            throw new NullPointerException(strHp);
        }
        l.j("TTMediationSDK_ADAPTER", strHp);
        return false;
    }

    private static String hp(String str, Object... objArr) {
        String strValueOf = String.valueOf(str);
        try {
            return String.format(strValueOf, objArr);
        } catch (IllegalFormatException e2) {
            l.j("TTMediationSDK_ADAPTER", "MoPub preconditions had a format exception: " + e2.getMessage());
            return strValueOf;
        }
    }
}
