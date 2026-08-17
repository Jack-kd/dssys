package com.byazt.jg;

import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 1147, 30})
/* loaded from: classes.dex */
public class jx implements com.byazt.lx.hp {
    @Override // com.byazt.lx.hp
    public Object hp(Class cls, String str) {
        if (TextUtils.isEmpty(str)) {
            return ' ';
        }
        return Character.valueOf(str.charAt(0));
    }
}
