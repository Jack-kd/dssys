package com.byazt.ash;

import android.content.Context;
import com.byazt.jz.sz;

@com.byazt.kj.hp(hp = {0, 1, 513, 94})
/* loaded from: classes2.dex */
public class eb extends jx {
    public static final eb jx = new eb(sz.getContext());

    private eb(Context context) {
        super(context);
    }

    public static eb hp() {
        return jx;
    }

    @Override // com.byazt.ash.jx
    public int l() {
        return 7;
    }

    public void hp(com.byazt.jt.l lVar, String str, int i2, j jVar) {
        com.byazt.iw.jx jxVar = new com.byazt.iw.jx();
        jxVar.hp(str);
        jxVar.hp(i2 + 1);
        hp(lVar, jVar, jxVar, null, null, null);
    }
}
