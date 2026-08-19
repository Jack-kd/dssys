package com.byazt.bz;

import com.byazt.gr.j;
import com.byazt.ir.eb;
import com.byazt.la.jx;
import com.byazt.uid.eb;
import com.byazt.uid.w;
import com.byazt.xci.hd;
import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 1029, 28})
/* loaded from: classes2.dex */
public class hp {
    public static void hp(mp mpVar, final jx jxVar) {
        final j jVarQ;
        if (mpVar == null || hd.s(mpVar) || (jVarQ = hd.q(mpVar)) == null) {
            return;
        }
        w.hp(new eb("saveTemplate") { // from class: com.byazt.bz.hp.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.ir.eb.hp().hp(jVarQ, new eb.hp() { // from class: com.byazt.bz.hp.1.1
                    @Override // com.byazt.ir.eb.hp
                    public void hp() {
                        jx jxVar2 = jxVar;
                        if (jxVar2 != null) {
                            jxVar2.hp(null);
                        }
                    }

                    @Override // com.byazt.ir.eb.hp
                    public void l() {
                        jx jxVar2 = jxVar;
                        if (jxVar2 != null) {
                            jxVar2.hp();
                        }
                    }
                });
            }
        }, 10);
    }
}
