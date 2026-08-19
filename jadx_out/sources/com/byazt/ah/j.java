package com.byazt.ah;

import android.os.SystemClock;
import android.util.Pair;
import com.byazt.ah.hp;
import com.byazt.lyn.gu;
import com.byazt.lyn.jl;
import com.byazt.lyn.k;
import com.byazt.lyn.q;
import com.byazt.tgw.e;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 688, 38})
/* loaded from: classes2.dex */
public class j implements hp {
    @Override // com.byazt.ah.hp
    public void hp(hp.InterfaceC0186hp interfaceC0186hp) throws JSONException {
        com.byazt.dq.hp hpVar;
        com.byazt.xl.l lVarHp = interfaceC0186hp.hp();
        com.byazt.ktq.l lVarL = interfaceC0186hp.l();
        e eVarS = lVarHp.s();
        String strSz = lVarL.cx().sz();
        if (eVarS != null) {
            if (eVarS.j() && !gu.hp().jx(strSz, eVarS.vv())) {
                com.byazt.aw.l.l("TMe", "adn 请求触发次数拦截............");
                Pair<String, String> pairHp = gu.hp().hp(strSz, eVarS.vv());
                com.byazt.dq.hp lVar = pairHp != null ? new com.byazt.le.l(41041, com.byazt.dq.hp.hp(41041), (String) pairHp.second, (String) pairHp.first) : new com.byazt.dq.hp(41041, com.byazt.dq.hp.hp(41041));
                com.byazt.lsx.a.hp(eVarS, lVarL.cx(), com.byazt.xob.hp.hp().hp(eVarS.vv()), lVarHp.w(), 2, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), lVar, -1L, lVarL.xh().f25865w, false, SystemClock.elapsedRealtime() - lVarL.r());
                com.byazt.owd.a.hp(lVarL.jx(), lVarL.hp(eVarS), lVarL.r());
                com.byazt.lsx.a.hp(lVar, lVarL.cx(), eVarS, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), com.byazt.xob.hp.hp().hp(eVarS.vv()), 0L, (String) null, (String) null, (String) null, 0L);
                com.byazt.owd.a.hp(lVarL.jx(), lVarL.jx(eVarS), lVarL.r());
                lVarHp.hp(lVar, eVarS);
                return;
            }
            if (eVarS.j() && !jl.hp().jx(strSz, eVarS.vv())) {
                com.byazt.aw.l.l("TMe", "adn 请求触发时间间隔拦截............");
                q qVarJ = jl.hp().j(strSz, eVarS.vv());
                if (qVarJ != null) {
                    String strHp = com.byazt.dq.hp.hp(41042);
                    StringBuilder sb = new StringBuilder();
                    sb.append(jl.hp().hp(strSz, eVarS.vv()));
                    hpVar = new com.byazt.le.jx(41042, strHp, sb.toString(), qVarJ.e());
                } else {
                    hpVar = new com.byazt.dq.hp(41042, com.byazt.dq.hp.hp(41042));
                }
                com.byazt.dq.hp hpVar2 = hpVar;
                com.byazt.lsx.a.hp(eVarS, lVarL.cx(), com.byazt.xob.hp.hp().hp(eVarS.vv()), lVarHp.w(), 2, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), hpVar2, -1L, lVarL.xh().f25865w, false, SystemClock.elapsedRealtime() - lVarL.r());
                com.byazt.owd.a.hp(lVarL.jx(), lVarL.hp(eVarS), lVarL.r());
                com.byazt.lsx.a.hp(hpVar2, lVarL.cx(), eVarS, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), com.byazt.xob.hp.hp().hp(eVarS.vv()), 0L, (String) null, (String) null, (String) null, 0L);
                com.byazt.owd.a.hp(lVarL.jx(), lVarL.jx(eVarS), lVarL.r());
                lVarHp.hp(hpVar2, eVarS);
                return;
            }
            if (k.hp().hp(strSz, eVarS.xs())) {
                com.byazt.dq.hp hpVarHp = k.hp().hp(strSz, eVarS.v(), eVarS.vv());
                if (hpVarHp != null) {
                    com.byazt.aw.l.l("TMe", "adn 请求触发了rit级别的错误码拦截............");
                    com.byazt.lsx.a.hp(eVarS, lVarL.cx(), com.byazt.xob.hp.hp().hp(eVarS.vv()), lVarHp.w(), 2, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), hpVarHp, -1L, lVarL.xh().f25865w, false, SystemClock.elapsedRealtime() - lVarL.r());
                    com.byazt.owd.a.hp(lVarL.jx(), lVarL.hp(eVarS), lVarL.r());
                    com.byazt.lsx.a.hp(hpVarHp, lVarL.cx(), eVarS, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), com.byazt.xob.hp.hp().hp(eVarS.vv()), 0L, (String) null, (String) null, (String) null, 0L);
                    com.byazt.owd.a.hp(lVarL.jx(), lVarL.jx(eVarS), lVarL.r());
                    lVarHp.hp(hpVarHp, eVarS);
                    return;
                }
            } else {
                com.byazt.dq.hp hpVarHp2 = com.byazt.lyn.jx.hp().hp(eVarS.v(), eVarS.vv());
                if (hpVarHp2 != null) {
                    com.byazt.aw.l.l("TMe", "adn 请求触发了错误码拦截............");
                    com.byazt.lsx.a.hp(eVarS, lVarL.cx(), com.byazt.xob.hp.hp().hp(eVarS.vv()), lVarHp.w(), 2, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), hpVarHp2, -1L, lVarL.xh().f25865w, false, SystemClock.elapsedRealtime() - lVarL.r());
                    com.byazt.owd.a.hp(lVarL.jx(), lVarL.hp(eVarS), lVarL.r());
                    com.byazt.lsx.a.hp(hpVarHp2, lVarL.cx(), eVarS, lVarHp.jx(), lVarHp.eb(), lVarHp.a(), com.byazt.xob.hp.hp().hp(eVarS.vv()), 0L, (String) null, (String) null, (String) null, 0L);
                    com.byazt.owd.a.hp(lVarL.jx(), lVarL.jx(eVarS), lVarL.r());
                    lVarHp.hp(hpVarHp2, eVarS);
                    return;
                }
            }
        }
        interfaceC0186hp.hp(this);
    }
}
