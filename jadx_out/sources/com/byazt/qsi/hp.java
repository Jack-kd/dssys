package com.byazt.qsi;

import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 667, 28})
/* loaded from: classes3.dex */
public class hp {
    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            StringBuilder sb = new StringBuilder();
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt < 'A' || cCharAt > 'Z') {
                    sb.append(cCharAt);
                } else {
                    if (sb.length() > 0) {
                        sb.append('_');
                    }
                    sb.append((char) (cCharAt + ' '));
                }
            }
            return sb.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String hp(String str, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (z2) {
            str = str.substring(1);
        }
        return hp(str);
    }
}
