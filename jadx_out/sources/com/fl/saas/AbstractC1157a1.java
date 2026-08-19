package com.fl.saas;

import com.fl.saas.adx.util.LogcatUtil;

/* renamed from: com.fl.saas.a1, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1157a1 {
    public static boolean a(String[] strArr, String str) {
        try {
            for (String str2 : strArr) {
                if (str2.equals(str)) {
                    return true;
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return false;
    }

    public static boolean b(String[] strArr, String str) {
        try {
            for (String str2 : strArr) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return false;
    }
}
