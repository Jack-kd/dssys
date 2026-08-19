package com.kwad.sdk.utils;

import android.text.TextUtils;

/* loaded from: classes4.dex */
public final class bz {
    public static boolean aE(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (TextUtils.isEmpty(str2)) {
            return true;
        }
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        for (int i2 = 0; i2 < strArrSplit.length && i2 < strArrSplit2.length; i2++) {
            try {
                int i3 = Integer.parseInt(strArrSplit[i2]) - Integer.parseInt(strArrSplit2[i2]);
                if (i3 > 0) {
                    return true;
                }
                if (i3 < 0) {
                    return false;
                }
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return strArrSplit.length >= strArrSplit2.length;
    }
}
