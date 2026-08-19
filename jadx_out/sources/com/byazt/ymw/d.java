package com.byazt.ymw;

import android.os.Build;
import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 68, 670})
/* loaded from: classes3.dex */
public class d {
    public static volatile String hp;

    public static String hp() {
        if (!TextUtils.isEmpty(hp)) {
            return hp;
        }
        String str = Build.MODEL;
        hp = str;
        return str;
    }
}
