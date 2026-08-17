package com.byazt.zr;

import android.app.Activity;
import com.byazt.jwq.e;
import com.byazt.jwq.l;
import com.byazt.xci.bu;
import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 1973, 28})
/* loaded from: classes3.dex */
public abstract class hp extends com.byazt.jwq.l {
    public String hp;

    public hp(Activity activity, mp mpVar) {
        super(activity, mpVar);
    }

    public void hp(String str) {
        this.hp = str;
    }

    public hp(Activity activity, mp mpVar, bu buVar) {
        super(activity, mpVar, buVar);
    }

    @Override // com.byazt.jwq.l
    public l.hp hp(e eVar) {
        j jVar = new j(this.f21736s, this.eb);
        jVar.j(this.gu);
        jVar.jx(this.jl);
        jVar.l(this.f21738v);
        jVar.hp(this.hp);
        return jVar.hp(eVar);
    }
}
