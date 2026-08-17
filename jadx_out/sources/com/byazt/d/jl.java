package com.byazt.d;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.t.v;

@com.byazt.kj.hp(hp = {0, 1, 670, 19})
/* loaded from: classes2.dex */
public class jl implements q {
    @Override // com.byazt.d.q
    public boolean hp(com.byazt.zv.l lVar, int i2, s sVar) {
        if (lVar == null) {
            return false;
        }
        return v.hp(lVar, !TextUtils.isEmpty(lVar.nr()) ? com.byazt.l.e.hp((Context) null).hp(lVar.nr(), null, true) : com.byazt.l.e.hp((Context) null).l(lVar.hp()), i2, sVar, false, null);
    }
}
