package com.byazt.tfn;

import android.util.Pair;
import com.byazt.tfn.hp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 842, 54})
/* loaded from: classes3.dex */
public class a implements hp {
    @Override // com.byazt.tfn.hp
    public void hp(hp.InterfaceC0371hp interfaceC0371hp) {
        com.byazt.ktq.l lVarHp = interfaceC0371hp.hp();
        String strSz = lVarHp.cx().sz();
        if (com.byazt.qca.hp.hp().l()) {
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(strSz) + "请求过于频繁，触发了熔断机制");
            hp(lVarHp, 840043);
            lVarHp.hp(new com.byazt.le.hp(840043, com.byazt.dq.hp.hp(840043)));
            return;
        }
        com.byazt.tgw.l lVarU = lVarHp.u();
        if (lVarU != null && lVarU.zy()) {
            if (!com.byazt.lyn.zy.hp().s(String.valueOf(strSz))) {
                com.byazt.aw.l.l("TMe", "广告位 请求触发次数拦截............");
                Pair<String, String> pairA = com.byazt.lyn.zy.hp().a(strSz);
                com.byazt.le.l lVar = new com.byazt.le.l(840041, com.byazt.dq.hp.hp(840041), pairA != null ? (String) pairA.second : "", pairA != null ? (String) pairA.first : "");
                hp(lVarHp, lVar.hp);
                lVarHp.hp(lVar);
                return;
            }
            if (!com.byazt.lyn.zy.hp().jx(String.valueOf(strSz)) && !lVarHp.o()) {
                com.byazt.aw.l.l("TMe", "广告位 请求触发时间间隔拦截............");
                com.byazt.lyn.q qVarW = com.byazt.lyn.zy.hp().w(String.valueOf(strSz));
                String strHp = com.byazt.dq.hp.hp(840042);
                StringBuilder sb = new StringBuilder();
                sb.append(com.byazt.lyn.zy.hp().hp(strSz));
                com.byazt.le.jx jxVar = new com.byazt.le.jx(840042, strHp, sb.toString(), qVarW != null ? qVarW.e() : "");
                hp(lVarHp, jxVar.hp);
                lVarHp.hp(jxVar);
                return;
            }
        }
        interfaceC0371hp.hp(interfaceC0371hp.hp());
    }

    @Override // com.byazt.tfn.hp
    public void l(hp.InterfaceC0371hp interfaceC0371hp) {
        interfaceC0371hp.hp((String) null);
    }

    private void hp(com.byazt.ktq.l lVar, int i2) {
        com.byazt.lsx.a.hp(lVar.cx(), (String) null, !lVar.o(), lVar.xh().hp, i2, (Map<String, Object>) null);
    }
}
