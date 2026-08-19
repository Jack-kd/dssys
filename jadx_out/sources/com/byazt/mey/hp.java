package com.byazt.mey;

import android.os.SystemClock;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 589, 28})
/* loaded from: classes3.dex */
public class hp {
    public static void hp(com.byazt.ktq.l lVar, List<com.byazt.rt.jx> list, boolean z2) {
        if (lVar == null) {
            return;
        }
        com.byazt.rt.jx jxVarHp = hp(list);
        if (lVar.ky()) {
            return;
        }
        lVar.jx(SystemClock.elapsedRealtime());
        com.byazt.lsx.a.hp(jxVarHp, lVar.cx(), lVar.u(), lVar.pu() - lVar.r(), lVar.xh().hp, !lVar.o(), list != null ? list.size() : 0, lVar.xh().f25865w, z2);
        lVar.w(true);
    }

    private static com.byazt.rt.jx hp(List<com.byazt.rt.jx> list) {
        com.byazt.rt.jx jxVar = null;
        if (list != null && list.size() != 0) {
            for (com.byazt.rt.jx jxVar2 : list) {
                if (jxVar == null || jxVar2.getFillTime() < jxVar.getFillTime()) {
                    jxVar = jxVar2;
                }
            }
        }
        return jxVar;
    }
}
