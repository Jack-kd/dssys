package com.byazt.lc;

import android.text.TextUtils;
import android.util.Base64;

@com.byazt.kj.hp(hp = {0, 1, 1769, 45})
/* loaded from: classes3.dex */
public class e {
    public static String hp(String str) {
        return TextUtils.isEmpty(str) ? "" : Base64.encodeToString(str.getBytes(), 10);
    }

    public static String l(String str) {
        return TextUtils.isEmpty(str) ? "" : new String(Base64.decode(str, 10));
    }
}
