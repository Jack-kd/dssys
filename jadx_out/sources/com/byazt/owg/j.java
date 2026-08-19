package com.byazt.owg;

import com.byazt.dnb.s;
import com.byazt.uid.eb;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1513, 38})
/* loaded from: classes3.dex */
public class j implements w {
    public final int hp;

    public j(int i2) {
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
    public boolean hp(String str) {
        return true;
    }

    @Override // com.byazt.owg.w
    public void hp(final com.byazt.jt.l lVar, final mp mpVar) {
        if (mpVar.xe() <= 0) {
            mpVar.w((System.currentTimeMillis() + 10500000) / 1000);
        }
        s.w(new eb("PreloadStrategyShowDelete-onNetworkResponse") { // from class: com.byazt.owg.j.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.fe.w.hp(j.this.hp).hp(lVar, mpVar, false);
            }
        });
    }

    @Override // com.byazt.owg.w
    public mp hp(String str, long j2) {
        return com.byazt.fe.w.hp(this.hp).hp(str, false, j2);
    }

    @Override // com.byazt.owg.w
    public List<mp> hp(String str, long j2, int i2, double d2) {
        List<mp> listHp = com.byazt.fe.w.hp(this.hp).hp(str, false, j2, i2, d2);
        listHp.size();
        return listHp;
    }

    @Override // com.byazt.owg.w
    public void hp(String str, mp mpVar) {
        com.byazt.fe.w.hp(this.hp).hp(str, mpVar.sq());
    }

    @Override // com.byazt.owg.w
    public void hp(final mp mpVar) {
        final int iZy = ky.zy(mpVar);
        s.hp(new eb("PreloadStrategyShowDelete-onShow") { // from class: com.byazt.owg.j.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.fe.w wVarHp = com.byazt.fe.w.hp(j.this.hp);
                StringBuilder sb = new StringBuilder();
                sb.append(iZy);
                wVarHp.hp(sb.toString(), mpVar.sq());
            }
        });
    }
}
