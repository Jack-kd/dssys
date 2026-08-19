package com.byazt.ash;

import com.byazt.jz.sz;
import com.byazt.sr.l;
import com.byazt.xci.hq;
import com.byazt.xci.lv;
import com.byazt.xci.mp;
import com.byazt.xci.zx;
import com.byazt.zn.n;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 513, 28})
/* loaded from: classes2.dex */
public class hp extends w<com.byazt.bp.l> {
    public hp(com.byazt.pc.l lVar) {
        super(lVar);
    }

    @Override // com.byazt.ash.w
    public boolean hp() {
        return false;
    }

    @Override // com.byazt.ash.w
    public /* synthetic */ void l(com.byazt.jt.l lVar, List list, com.byazt.bp.l lVar2) {
        hp(lVar, (List<mp>) list, lVar2);
    }

    @Override // com.byazt.sr.l
    public void hp(com.byazt.jt.l lVar, List<mp> list, l.hp<com.byazt.bp.l> hpVar) {
        com.byazt.bp.l lVar2 = new com.byazt.bp.l(sz.getContext(), list.get(0), lVar);
        if (hpVar != null) {
            hpVar.hp(lVar2);
        }
    }

    @Override // com.byazt.ash.w
    public boolean hp(com.byazt.xci.hp hpVar) {
        List<mp> listL;
        if (hpVar != null && (listL = hpVar.l()) != null) {
            mp mpVar = listL.get(0);
            if (hq.hp(mpVar)) {
                return mpVar.wg().jx() != 1;
            }
            if (lv.l(hp(), mpVar, false) && lv.j(mpVar) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.ash.w
    public void hp(com.byazt.bp.l lVar) {
        lVar.setVideoCacheCallbackResult(1);
    }

    public void hp(com.byazt.jt.l lVar, List<mp> list, com.byazt.bp.l lVar2) {
        mp mpVar = list.get(0);
        if (mpVar.xe() <= 0) {
            lVar2.setExpirationTimestamp(System.currentTimeMillis() + 10500000);
        } else {
            lVar2.setExpirationTimestamp(mpVar.xe() * 1000);
        }
        if (com.byazt.we.hp.hp(mpVar) || n.jx(mpVar) || zx.hp(mpVar) || !mpVar.uj()) {
            return;
        }
        lVar2.setPreload();
    }
}
