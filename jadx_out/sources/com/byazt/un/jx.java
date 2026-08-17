package com.byazt.un;

import com.byazt.gy.s;
import com.byazt.uid.eb;

@com.byazt.kj.hp(hp = {0, 1, 1167, 30})
/* loaded from: classes3.dex */
public class jx implements com.byazt.gj.l {
    @Override // com.byazt.gj.l
    public void hp(com.byazt.kf.l lVar, s sVar) {
        if (lVar == null) {
            return;
        }
        final long jHp = sVar != null ? sVar.hp() : System.currentTimeMillis();
        final String strHp = lVar.hp();
        final int i2 = lVar.eb;
        final String str = lVar.f20630s;
        com.byazt.dnb.s.hp(new eb("tmax_record_on_ad_started") { // from class: com.byazt.un.jx.1
            @Override // java.lang.Runnable
            public void run() {
                a.hp().hp(strHp, i2, str, jHp);
            }
        });
    }

    @Override // com.byazt.gj.l
    public void j(com.byazt.kf.l lVar, s sVar) {
        if (lVar == null) {
            return;
        }
        final String strHp = lVar.hp();
        if (lVar.jx) {
            final long jHp = sVar != null ? sVar.hp() : System.currentTimeMillis();
            com.byazt.dnb.s.hp(new eb("tmax_record_on_ad_loaded") { // from class: com.byazt.un.jx.2
                @Override // java.lang.Runnable
                public void run() {
                    a.hp().hp(strHp, jHp);
                }
            });
        }
    }

    @Override // com.byazt.gj.l
    public void jx(com.byazt.kf.l lVar, s sVar) {
    }

    @Override // com.byazt.gj.l
    public void l(com.byazt.kf.l lVar, s sVar) {
    }
}
