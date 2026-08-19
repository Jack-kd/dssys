package com.byazt.ash;

import com.byazt.jz.sz;
import com.byazt.sr.l;
import com.byazt.xci.lv;
import com.byazt.xci.mp;
import com.byazt.xci.zx;
import com.byazt.zn.n;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 513, 54})
/* loaded from: classes2.dex */
public class a extends w<com.byazt.bp.jx> {
    public a(com.byazt.pc.l lVar) {
        super(lVar);
    }

    @Override // com.byazt.ash.w
    public boolean hp() {
        return true;
    }

    @Override // com.byazt.ash.w
    public /* synthetic */ void l(com.byazt.jt.l lVar, List list, com.byazt.bp.jx jxVar) {
        hp(lVar, (List<mp>) list, jxVar);
    }

    @Override // com.byazt.sr.l
    public void hp(com.byazt.jt.l lVar, List<mp> list, l.hp<com.byazt.bp.jx> hpVar) {
        com.byazt.bp.jx jxVar = new com.byazt.bp.jx(sz.getContext(), list.get(0), lVar);
        if (hpVar != null) {
            hpVar.hp(jxVar);
        }
    }

    @Override // com.byazt.ash.w
    public boolean hp(com.byazt.xci.hp hpVar) {
        List<mp> listL;
        if (hpVar != null && (listL = hpVar.l()) != null) {
            mp mpVar = listL.get(0);
            if (lv.l(hp(), mpVar, false) && lv.j(mpVar) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.ash.w
    public void hp(com.byazt.bp.jx jxVar) {
        jxVar.setVideoCacheCallbackResult(1);
    }

    public void hp(com.byazt.jt.l lVar, List<mp> list, com.byazt.bp.jx jxVar) {
        mp mpVar = list.get(0);
        if (mpVar.xe() <= 0) {
            jxVar.setExpirationTimestamp(System.currentTimeMillis() + 10500000);
        } else {
            jxVar.setExpirationTimestamp(mpVar.xe() * 1000);
        }
        if (com.byazt.we.hp.hp(mpVar) || n.jx(mpVar) || zx.hp(mpVar) || !mpVar.uj()) {
            return;
        }
        jxVar.setPreload();
    }
}
