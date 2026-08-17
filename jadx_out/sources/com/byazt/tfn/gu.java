package com.byazt.tfn;

import android.os.SystemClock;
import com.byazt.tfn.hp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 842, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu implements hp {
    @Override // com.byazt.tfn.hp
    public void hp(hp.InterfaceC0371hp interfaceC0371hp) throws JSONException, NumberFormatException {
        com.byazt.ktq.l lVarHp = interfaceC0371hp.hp();
        com.byazt.iqm.l lVarCx = lVarHp.cx();
        lVarCx.sz();
        if (!lVarCx.vq()) {
            interfaceC0371hp.hp(interfaceC0371hp.hp());
            return;
        }
        String str = com.byazt.aw.j.hp(lVarCx.sz()) + "V2 公共缓存池广告请求......";
        String str2 = MediationConstant.TAG;
        com.byazt.aw.l.l(MediationConstant.TAG, str);
        String strNd = lVarHp.u() != null ? lVarHp.u().nd() : null;
        boolean z2 = !lVarHp.o();
        if (!com.byazt.di.l.l().s()) {
            com.byazt.ano.hp.hp(lVarCx, "-2");
            com.byazt.le.hp hpVar = new com.byazt.le.hp(41007, com.byazt.dq.hp.hp(41007));
            com.byazt.lsx.a.hp(lVarCx, strNd, z2, lVarHp.xh().hp, hpVar.hp, (Map<String, Object>) null);
            lVarHp.hp(hpVar);
            return;
        }
        List<com.byazt.gp.eb> listHp = com.byazt.ano.hp.hp().hp(lVarCx);
        if (listHp == null || listHp.isEmpty()) {
            com.byazt.ano.hp.hp(lVarCx, "-1");
            com.byazt.le.hp hpVar2 = new com.byazt.le.hp(41008, com.byazt.dq.hp.hp(41008));
            com.byazt.lsx.a.hp(lVarCx, strNd, z2, lVarHp.xh().hp, hpVar2.hp, (Map<String, Object>) null);
            lVarHp.hp(hpVar2);
            return;
        }
        com.byazt.lsx.a.hp(listHp.get(0).hp, lVarCx, lVarHp.u(), 0L, lVarHp.xh().hp, z2, listHp.size(), lVarHp.xh().f25865w, false);
        com.byazt.iqm.l lVar = lVarCx;
        int size = listHp.size() - 1;
        String strA = null;
        while (size >= 0) {
            com.byazt.gp.eb ebVar = listHp.get(size);
            com.byazt.rt.jx jxVar = ebVar.hp;
            jxVar.setOriginPrimeRit(ebVar.a());
            jxVar.setOriginLinkId(ebVar.j() != null ? ebVar.j().hp() : null);
            if (size == 0) {
                strA = ebVar.a();
            }
            String str3 = strA;
            ArrayList arrayList = new ArrayList();
            arrayList.add(jxVar);
            com.byazt.ano.hp.hp(lVar, ebVar.a());
            int i2 = size;
            com.byazt.iqm.l lVar2 = lVar;
            com.byazt.lsx.a.hp(com.byazt.di.l.l().hp(ebVar.a(), lVar.ec(), 102).a(jxVar.getAdNetworkSlotId()), lVar2, com.byazt.xob.hp.hp().hp(jxVar.getAdNetworkSlotId()), true, 1, 0, 3, 3, null, -1L, false, false, ebVar.j() != null ? ebVar.j().hp() : null, SystemClock.elapsedRealtime() - lVarHp.r());
            com.byazt.owd.a.hp(lVarHp.jx(), lVarHp.hp(jxVar), lVarHp.r());
            lVarHp.l(arrayList);
            com.byazt.lsx.a.hp(jxVar, 0, "adn cache命中", 0L, lVar2, 0, arrayList.size(), 2, null, 0L, -1L);
            lVar = lVar2;
            com.byazt.owd.a.hp(lVarHp.jx(), lVarHp.l(jxVar), lVarHp.r());
            size = i2 - 1;
            strA = str3;
            listHp = listHp;
            str2 = str2;
        }
        com.byazt.ano.hp.hp(lVar, strA);
        com.byazt.aw.l.l(str2, com.byazt.aw.j.hp(lVar.sz()) + "V2 resetAdLinkInfo......");
        com.byazt.lsx.a.hp(lVar, strNd, z2, lVarHp.xh().hp, 0, (Map<String, Object>) null);
        lVarHp.s();
    }

    @Override // com.byazt.tfn.hp
    public void l(hp.InterfaceC0371hp interfaceC0371hp) {
        interfaceC0371hp.hp((String) null);
    }
}
