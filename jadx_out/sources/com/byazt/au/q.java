package com.byazt.au;

import android.text.TextUtils;
import java.security.NoSuchAlgorithmException;

@com.byazt.kj.hp(hp = {0, 1, 273, 150})
/* loaded from: classes2.dex */
public class q implements com.byazt.yk.gu {
    @Override // com.byazt.yk.gu
    public int hp(String str, String str2) throws NoSuchAlgorithmException {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return 0;
        }
        String strW = com.byazt.xq.a.w(String.format("%s_%s", str, str2));
        if (TextUtils.isEmpty(strW)) {
            return 0;
        }
        return strW.hashCode();
    }
}
