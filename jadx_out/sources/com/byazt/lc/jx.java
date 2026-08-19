package com.byazt.lc;

import android.text.TextUtils;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 1769, 30})
/* loaded from: classes3.dex */
public class jx {
    public static String[] hp(File file) {
        String[] strArrHp = com.byazt.ea.l.hp(file);
        return TextUtils.isEmpty(strArrHp[0]) ? com.byazt.ea.hp.hp(file) : strArrHp;
    }
}
