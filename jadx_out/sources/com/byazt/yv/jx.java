package com.byazt.yv;

import android.text.TextUtils;
import android.util.Base64;

@com.byazt.kj.hp(hp = {0, 1, 1455, 30})
/* loaded from: classes3.dex */
public class jx {
    public static String hp(String str) {
        return TextUtils.isEmpty(str) ? "" : Base64.encodeToString(str.getBytes(), 10);
    }

    public static String l(String str) {
        return TextUtils.isEmpty(str) ? "" : new String(Base64.decode(str, 10));
    }
}
