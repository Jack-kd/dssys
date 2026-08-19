package com.byazt.ah;

import android.os.SystemClock;
import com.byazt.ah.hp;
import com.byazt.tgw.e;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 688, 34})
/* loaded from: classes2.dex */
public class l implements hp {
    @Override // com.byazt.ah.hp
    public void hp(hp.InterfaceC0186hp interfaceC0186hp) throws JSONException {
        com.byazt.xl.l lVarHp = interfaceC0186hp.hp();
        com.byazt.ktq.l lVarL = interfaceC0186hp.l();
        e eVarS = lVarHp.s();
        if (eVarS != null) {
            interfaceC0186hp.hp(this);
            return;
        }
        com.byazt.dq.hp hpVar = new com.byazt.dq.hp(840040, com.byazt.dq.hp.hp(840040));
        hpVar.hp("is_dex_adapter", Integer.valueOf(lVarHp.xh() ? 1 : 0));
        com.byazt.lsx.a.hp(eVarS, lVarL.cx(), "", lVarHp.w(), 2, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), hpVar, -1L, lVarL.xh().f25865w, false, SystemClock.elapsedRealtime() - lVarL.r());
        com.byazt.owd.a.hp(lVarL.jx(), lVarL.hp(eVarS), lVarL.r());
        com.byazt.lsx.a.hp(hpVar, lVarL.cx(), eVarS, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), "", 0L, (String) null, (String) null, (String) null, 0L);
        com.byazt.owd.a.hp(lVarL.jx(), lVarL.jx(eVarS), lVarL.r());
        lVarHp.hp(hpVar, eVarS);
    }
}
