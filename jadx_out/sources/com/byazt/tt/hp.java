package com.byazt.tt;

import com.byazt.hq.cx;
import com.byazt.hq.hq;
import com.byazt.hq.o;
import com.byazt.hq.sz;
import com.byazt.hq.wv;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1478, 28})
/* loaded from: classes3.dex */
public final class hp implements sz {
    public final cx hp;

    public hp(cx cxVar) {
        this.hp = cxVar;
    }

    @Override // com.byazt.hq.sz
    public hq hp(sz.hp hpVar) throws IOException {
        wv wvVar;
        com.byazt.pn.eb ebVar = (com.byazt.pn.eb) hpVar;
        o oVarHp = ebVar.hp();
        if (oVarHp != null && (wvVar = oVarHp.f20923a) != null) {
            wvVar.l();
        }
        eb ebVarA = ebVar.a();
        com.byazt.pn.jx jxVarHp = ebVarA.hp(this.hp, hpVar, !oVarHp.l().equals("GET"));
        jx jxVarL = ebVarA.l();
        wv wvVar2 = oVarHp.f20923a;
        if (wvVar2 != null) {
            wvVar2.jx();
        }
        return ebVar.hp(oVarHp, ebVarA, jxVarHp, jxVarL);
    }
}
