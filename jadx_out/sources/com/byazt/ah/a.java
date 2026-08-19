package com.byazt.ah;

import android.os.SystemClock;
import com.byazt.tgw.e;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 688, 54})
/* loaded from: classes2.dex */
public class a implements hp {
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ad  */
    @Override // com.byazt.ah.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.ah.hp.InterfaceC0186hp r9) {
        /*
            r8 = this;
            com.byazt.xl.l r0 = r9.hp()
            com.byazt.tgw.e r6 = r0.s()
            com.byazt.ktq.l r0 = r9.l()
            com.byazt.iqm.l r4 = r0.cx()
            if (r6 == 0) goto Lad
            java.lang.String r5 = r6.vv()
            boolean r0 = r6.sz()
            if (r0 == 0) goto Lad
            com.byazt.xob.hp r0 = com.byazt.xob.hp.hp()
            java.lang.String r1 = r4.sz()
            int r2 = r4.w()
            boolean r0 = r0.j(r1, r5, r2)
            if (r0 == 0) goto Lad
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "--==-- 广告复用，模式："
            r0.<init>(r1)
            com.byazt.xob.hp r1 = com.byazt.xob.hp.hp()
            java.lang.String r2 = r4.sz()
            int r3 = r4.w()
            int r1 = r1.w(r2, r5, r3)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "TTMediationSDK"
            com.byazt.aw.l.l(r1, r0)
            com.byazt.xob.hp r0 = com.byazt.xob.hp.hp()
            r1 = 1
            int r0 = r0.hp(r5, r4, r1)
            com.byazt.xl.l r1 = r9.hp()
            r1.jx(r0)
            r1 = 3
            r2 = 2
            if (r0 != r1) goto L7d
            com.byazt.xl.l r0 = r9.hp()
            r0.hp(r2)
            com.byazt.ktq.l r2 = r9.l()
            com.byazt.xl.l r3 = r9.hp()
            r7 = 2
            r1 = r8
            boolean r0 = r1.hp(r2, r3, r4, r5, r6, r7)
            if (r0 == 0) goto Lae
            return
        L7d:
            r1 = r8
            if (r0 != r2) goto Lae
            com.byazt.xob.hp r0 = com.byazt.xob.hp.hp()
            int r2 = r4.w()
            java.util.List r0 = r0.hp(r5, r4, r2)
            if (r0 == 0) goto Lae
            int r2 = r0.size()
            if (r2 <= 0) goto Lae
            r2 = 0
            java.lang.Object r0 = r0.get(r2)
            com.byazt.gp.eb r0 = (com.byazt.gp.eb) r0
            com.byazt.rt.jx r0 = r0.hp
            java.lang.String r2 = r4.hp()
            int r0 = r0.getMediationRitReqType(r2)
            com.byazt.xl.l r2 = r9.hp()
            r2.l(r0)
            goto Lae
        Lad:
            r1 = r8
        Lae:
            r9.hp(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ah.a.hp(com.byazt.ah.hp$hp):void");
    }

    private boolean hp(com.byazt.ktq.l lVar, com.byazt.xl.l lVar2, com.byazt.iqm.l lVar3, String str, e eVar, int i2) throws JSONException {
        com.byazt.xob.hp.hp().hp(lVar3.sz(), str, eVar, i2);
        List<com.byazt.gp.eb> listHp = com.byazt.xob.hp.hp().hp(str, lVar3, lVar3.w());
        if (listHp == null || listHp.size() <= 0) {
            return false;
        }
        int mediationRitReqType = listHp.get(0).hp.getMediationRitReqType(lVar3.hp());
        com.byazt.lsx.a.hp(eVar, lVar3, com.byazt.xob.hp.hp().hp(str), !lVar.o(), 1, i2, 3, mediationRitReqType, null, -1L, false, false, SystemClock.elapsedRealtime() - lVar.r());
        com.byazt.owd.a.hp(lVar.jx(), lVar.hp(eVar), lVar.r());
        ArrayList arrayList = new ArrayList();
        for (com.byazt.gp.eb ebVar : listHp) {
            ebVar.hp.setMediationRitReqType(3);
            ebVar.hp.setMediationRitReqTypeSrc(mediationRitReqType);
            ebVar.hp.setTimeoutFill(false);
            ebVar.hp.setIsCallback(false);
            com.byazt.mey.a.hp(ebVar.hp, lVar3.sz(), str);
            arrayList.add(ebVar.hp);
        }
        com.byazt.lsx.a.hp(listHp.get(0).hp, 0, "adn cache命中", 0L, lVar3, i2, arrayList.size(), 2, null, 0L, -1L);
        com.byazt.owd.a.hp(lVar.jx(), lVar.l(eVar), lVar.r());
        lVar2.hp(arrayList, eVar);
        return true;
    }
}
