package com.byazt.it;

import android.content.Context;

@com.byazt.kj.hp(hp = {0, 1, 836, 30})
/* loaded from: classes.dex */
public class jx extends l implements com.byazt.ba.j {
    public com.byazt.ba.jx gu;

    public jx(Context context) {
        super(context);
    }

    @Override // com.byazt.it.l
    public boolean hp(Object... objArr) {
        com.byazt.ba.hp hpVarMs = this.f21223l.ms();
        if (hpVarMs == null) {
            return false;
        }
        com.byazt.ba.jx jxVarHp = hpVarMs.hp(this.f21220a);
        this.gu = jxVarHp;
        if (jxVarHp != null) {
            jxVarHp.hp(this);
            return false;
        }
        hpVarMs.hp(this.f21220a, new com.byazt.ba.l());
        return false;
    }

    @Override // com.byazt.ba.j
    public void hp(String str) {
        this.hp.hp(this.f21223l, this.f21220a, this.jx.l(), this.jx);
    }
}
