package com.byazt.tfn;

import com.byazt.tfn.hp;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 842, 38})
/* loaded from: classes3.dex */
public class j implements hp {
    @Override // com.byazt.tfn.hp
    public void hp(hp.InterfaceC0371hp interfaceC0371hp) {
        com.byazt.ktq.l lVarHp = interfaceC0371hp.hp();
        lVarHp.xs().hp(0);
        int iJx = lVarHp.cx().jx();
        List<com.byazt.tgw.e> list = lVarHp.u().wv().get(0);
        JSONObject jSONObject = new JSONObject();
        String strHp = com.byazt.ur.hp.hp().hp(lVarHp.b(), lVarHp.getContext(), lVarHp.cx(), list, lVarHp.u(), iJx, !lVarHp.o(), jSONObject);
        com.byazt.lsx.a.hp(lVarHp.cx(), jSONObject);
        lVarHp.hp(strHp);
    }

    @Override // com.byazt.tfn.hp
    public void l(hp.InterfaceC0371hp interfaceC0371hp) {
        interfaceC0371hp.hp((String) null);
    }
}
