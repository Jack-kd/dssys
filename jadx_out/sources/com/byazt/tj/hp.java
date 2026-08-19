package com.byazt.tj;

import com.byazt.fub.zy;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.zn.ky;

@com.byazt.kj.hp(hp = {0, 1, 48, 28})
/* loaded from: classes3.dex */
public abstract class hp implements l {
    private int j(mp mpVar) {
        if (mpVar == null) {
            return -1;
        }
        return mpVar.hy();
    }

    public static boolean jx(mp mpVar) {
        return w(mpVar) == 5;
    }

    public static boolean l(mp mpVar) {
        return mpVar != null && hd.jx(mpVar) == 2 && jx(mpVar);
    }

    private static int w(mp mpVar) {
        int iJl;
        if (mpVar == null) {
            return -1;
        }
        com.byazt.jt.l lVarDb = mpVar.db();
        int iSz = lVarDb != null ? lVarDb.sz() : -1;
        return ((iSz <= 0 || iSz >= 10) && (iJl = ky.jl(mpVar)) > 0 && iJl < 10) ? iJl : iSz;
    }

    @Override // com.byazt.tj.l
    public String hp(mp mpVar) {
        int iW = w(mpVar);
        int iJ = j(mpVar);
        if (iW <= 0 || iW > 9 || iJ == -1) {
            return null;
        }
        return hp(mpVar, iW, iJ);
    }

    public abstract String hp(mp mpVar, int i2, int i3);

    public static l hp(mp mpVar, zy zyVar) {
        if (mpVar == null || w(mpVar) != 5) {
            return null;
        }
        if ((zyVar instanceof com.byazt.fb.l) && ((com.byazt.fb.l) zyVar).r()) {
            return new com.byazt.sk.hp();
        }
        return new com.byazt.zk.hp();
    }
}
