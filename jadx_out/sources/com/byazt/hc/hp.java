package com.byazt.hc;

import android.content.Context;
import com.byazt.aj.s;
import com.byazt.kw.gu;
import com.bytedance.pangle.provider.ContentProviderManager;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1439, 28})
/* loaded from: classes2.dex */
public class hp extends jx {
    public hp(Context context, l lVar, j jVar) {
        super(com.byazt.aj.jx.ANR, context, lVar, jVar);
    }

    @Override // com.byazt.hc.jx
    public com.byazt.rw.hp hp(com.byazt.rw.hp hpVar) throws JSONException {
        com.byazt.rw.hp hpVarHp = super.hp(hpVar);
        com.byazt.rw.l lVarHp = com.byazt.rw.l.hp(this.f20659l);
        lVarHp.hp(s.hp().hp());
        lVarHp.hp(s.jx().hp());
        lVarHp.l(this.jx.jx());
        hpVarHp.hp(lVarHp);
        hpVarHp.hp(ContentProviderManager.PLUGIN_PROCESS_NAME, com.byazt.kw.hp.j(this.f20659l));
        gu.hp(hpVarHp, lVarHp, this.hp);
        return hpVarHp;
    }
}
