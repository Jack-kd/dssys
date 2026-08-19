package com.byazt.hc;

import android.content.Context;
import com.byazt.aj.s;
import com.byazt.kw.gu;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1439, 94})
/* loaded from: classes2.dex */
public class eb extends jx {
    public eb(Context context, l lVar, j jVar) {
        super(com.byazt.aj.jx.JAVA, context, lVar, jVar);
    }

    @Override // com.byazt.hc.jx
    public com.byazt.rw.hp hp(com.byazt.rw.hp hpVar) throws JSONException {
        com.byazt.rw.hp hpVarHp = super.hp(hpVar);
        hpVarHp.hp("app_count", (Object) 1);
        hpVarHp.hp("magic_tag", "ss_app_log");
        jx(hpVarHp);
        com.byazt.rw.l lVarHp = com.byazt.rw.l.hp(this.f20659l);
        lVarHp.hp(s.hp().hp());
        lVarHp.hp(s.jx().hp());
        lVarHp.l(this.jx.jx());
        hpVarHp.hp(lVarHp);
        gu.hp(hpVarHp, lVarHp, this.hp);
        return hpVarHp;
    }
}
