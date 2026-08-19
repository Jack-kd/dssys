package com.byazt.yj;

import android.text.TextUtils;
import com.anythink.core.common.d.i;

@com.byazt.kj.hp(hp = {0, 1, 1283, 28})
/* loaded from: classes3.dex */
public class hp {
    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder("https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/static/images/");
        if (str.indexOf(i.f2495E) > 0) {
            sb.append(str);
            return sb.toString();
        }
        sb.append(str);
        sb.append(".png");
        return sb.toString();
    }
}
