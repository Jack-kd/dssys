package com.byazt.ah;

import android.os.SystemClock;
import com.byazt.ah.hp;
import com.byazt.mey.w;
import com.byazt.tgw.e;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 688, 94})
/* loaded from: classes2.dex */
public class eb implements hp {
    @Override // com.byazt.ah.hp
    public void hp(hp.InterfaceC0186hp interfaceC0186hp) throws JSONException {
        w.hp hpVarHp;
        com.byazt.ktq.l lVarL = interfaceC0186hp.l();
        com.byazt.xl.l lVarHp = interfaceC0186hp.hp();
        if (lVarL != null && lVarHp != null) {
            com.byazt.iqm.l lVarCx = lVarL.cx();
            e eVarS = lVarHp.s();
            if (lVarCx != null && eVarS != null && (hpVarHp = com.byazt.mey.w.hp(lVarCx, eVarS)) != null) {
                com.byazt.dq.hp hpVar = new com.byazt.dq.hp(81018, hpVarHp.hp);
                hpVar.hp("is_dex_adapter", Integer.valueOf(lVarHp.xh() ? 1 : 0));
                com.byazt.lsx.a.hp(eVarS, lVarCx, com.byazt.xob.hp.hp().hp(eVarS.vv()), lVarHp.w(), 2, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), hpVar, -1L, false, false, SystemClock.elapsedRealtime() - lVarL.r());
                com.byazt.owd.a.hp(lVarL.jx(), lVarL.hp(eVarS), lVarL.r());
                com.byazt.lsx.a.hp(hpVar, lVarCx, eVarS, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), com.byazt.xob.hp.hp().hp(eVarS.vv()), 0L, (String) null, (String) null, (String) null, 0L);
                com.byazt.owd.a.hp(lVarL.jx(), lVarL.jx(eVarS), lVarL.r());
                lVarHp.hp(hpVar, eVarS);
                return;
            }
        }
        interfaceC0186hp.hp(this);
    }
}
