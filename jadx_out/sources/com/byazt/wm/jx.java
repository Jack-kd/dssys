package com.byazt.wm;

import android.text.TextUtils;
import android.util.Base64;

@com.byazt.kj.hp(hp = {0, 1, 75, 30})
/* loaded from: classes3.dex */
public class jx {
    public static String hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        byte[] bArrDecode = Base64.decode(com.byazt.xq.a.hp(str), 0);
        int length = str2.length();
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        for (byte b3 : bArrDecode) {
            if (i2 >= length) {
                i2 %= length;
            }
            sb.append((char) (b3 ^ str2.charAt(i2)));
            i2++;
        }
        return sb.toString();
    }

    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new String(Base64.decode(com.byazt.xq.a.hp(str), 0));
    }
}
