package com.byazt.owg;

import com.byazt.dnb.s;
import com.byazt.uid.eb;
import com.byazt.xci.mp;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1513, 28})
/* loaded from: classes3.dex */
public class hp implements w {
    public int hp;

    public hp(int i2) {
        this.hp = i2;
    }

    @Override // com.byazt.owg.w
    public void hp(com.byazt.jt.l lVar, mp mpVar, Object obj, boolean z2) {
    }

    @Override // com.byazt.owg.w
    public void l(com.byazt.jt.l lVar, List<mp> list) {
    }

    @Override // com.byazt.owg.w
    public void hp(com.byazt.jt.l lVar, List<mp> list) {
    }

    @Override // com.byazt.owg.w
    public void l(String str) {
        com.byazt.fe.w.hp(this.hp).l(str);
    }

    @Override // com.byazt.owg.w
    public void hp(mp mpVar) {
    }

    @Override // com.byazt.owg.w
    public boolean hp(String str) {
        return true;
    }

    @Override // com.byazt.owg.w
    public void hp(final com.byazt.jt.l lVar, final mp mpVar) {
        if (mpVar.xe() <= 0) {
            mpVar.w((System.currentTimeMillis() + 10500000) / 1000);
        }
        s.w(new eb("PreloadStrategyLoadDelete-onNetworkResponse") { // from class: com.byazt.owg.hp.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.fe.w.hp(hp.this.hp).hp(lVar, mpVar, false);
            }
        });
    }

    @Override // com.byazt.owg.w
    public mp hp(String str, long j2) {
        mp mpVarHp = com.byazt.fe.w.hp(this.hp).hp(str, false, j2);
        if (mpVarHp != null) {
            com.byazt.fe.w.hp(this.hp).hp(str, mpVarHp.sq());
        }
        return mpVarHp;
    }

    @Override // com.byazt.owg.w
    public List<mp> hp(String str, long j2, int i2, double d2) {
        List<mp> listHp = com.byazt.fe.w.hp(this.hp).hp(str, false, j2, i2, d2);
        Iterator<mp> it = listHp.iterator();
        while (it.hasNext()) {
            com.byazt.fe.w.hp(this.hp).hp(str, it.next().sq());
        }
        listHp.size();
        return listHp;
    }

    @Override // com.byazt.owg.w
    public void hp(String str, mp mpVar) {
        com.byazt.fe.w.hp(this.hp).hp(str, mpVar.sq());
    }
}
