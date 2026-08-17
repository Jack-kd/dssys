package com.byazt.ij;

import android.text.TextUtils;
import com.byazt.jz.sz;

@com.byazt.kj.hp(hp = {0, 1, 845, 30})
/* loaded from: classes.dex */
public class jx {
    public static String hp(String str) {
        String strWv = sz.l().wv();
        if (TextUtils.isEmpty(strWv)) {
            return "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/".concat(String.valueOf(str));
        }
        return strWv + str;
    }
}
