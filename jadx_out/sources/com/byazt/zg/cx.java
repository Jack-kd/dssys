package com.byazt.zg;

import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 308, 301})
/* loaded from: classes3.dex */
public class cx {
    public static void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            hp(str2);
        }
    }

    private static void hp(String str) {
        throw new IllegalArgumentException(str);
    }
}
