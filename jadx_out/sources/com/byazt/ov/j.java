package com.byazt.ov;

import android.text.TextUtils;
import com.byazt.gg.a;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 707, 38})
/* loaded from: classes3.dex */
public class j extends hp {
    public j(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
        super(jxVar, str, hpVar);
    }

    @Override // com.byazt.ov.hp
    public void hp() {
        Object obj;
        com.byazt.xs.jx jxVar;
        com.byazt.xs.jx jxVarL;
        com.byazt.xs.jx jxVarA;
        com.byazt.mw.hp hpVarE;
        Map<String, Object> map = this.f24188a;
        if (map == null || map.size() <= 0 || (obj = this.f24188a.get("name")) == null) {
            return;
        }
        String strValueOf = String.valueOf(obj);
        if (TextUtils.isEmpty(strValueOf) || (jxVarL = (jxVar = this.jx).l(jxVar)) == null || (jxVarA = jxVarL.a(strValueOf)) == null || (hpVarE = jxVarA.e(strValueOf)) == null) {
            return;
        }
        hpVarE.l();
        hpVarE.hp(new com.byazt.mw.l() { // from class: com.byazt.ov.j.1
            @Override // com.byazt.mw.l
            public void hp() {
            }

            @Override // com.byazt.mw.l
            public void l() {
                j.this.jx();
            }
        });
    }

    @Override // com.byazt.ov.hp
    public void l() {
    }
}
