package com.byazt.tfn;

import com.byazt.tfn.hp;
import java.util.Map;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 842, 30})
/* loaded from: classes3.dex */
public class jx implements hp {
    @Override // com.byazt.tfn.hp
    public void hp(hp.InterfaceC0371hp interfaceC0371hp) throws JSONException {
        com.byazt.ktq.l lVarHp = interfaceC0371hp.hp();
        com.byazt.iqm.l lVarCx = lVarHp.cx();
        com.byazt.tgw.l lVarU = lVarHp.u();
        com.byazt.tgw.l lVarHp2 = com.byazt.wgi.jx.hp(lVarCx, lVarU);
        if (lVarHp2 != null) {
            if (lVarCx.jx() == 2 || lVarCx.jx() == 4 || lVarCx.jx() == 5) {
                com.byazt.gp.j.hp().hp(lVarCx.sz(), lVarCx);
            }
            lVarU = lVarHp2;
        }
        if (lVarU.rz() == null || lVarU.rz().size() == 0) {
            com.byazt.lsx.a.hp(lVarCx, lVarHp.u() != null ? lVarHp.u().nd() : null, !lVarHp.o(), lVarHp.xh().hp, 810085, (Map<String, Object>) null);
            lVarHp.hp(new com.byazt.dq.hp(810085, com.byazt.dq.hp.hp(810085)));
        } else {
            lVarHp.hp(lVarU);
            interfaceC0371hp.hp(interfaceC0371hp.hp());
        }
    }

    @Override // com.byazt.tfn.hp
    public void l(hp.InterfaceC0371hp interfaceC0371hp) {
        interfaceC0371hp.hp((String) null);
    }
}
