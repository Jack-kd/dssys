package com.byazt.de;

import com.byazt.jz.cx;

@com.byazt.kj.hp(hp = {0, 1, 465, 28})
/* loaded from: classes2.dex */
public class hp implements cx.l {
    public cx.l hp;

    /* renamed from: l, reason: collision with root package name */
    public int f19113l;

    public hp(cx.l lVar) {
        this.hp = lVar;
    }

    public void hp(int i2) {
        this.f19113l = i2;
    }

    @Override // com.byazt.jz.cx.l
    public void hp(int i2, String str, com.byazt.xci.l lVar) {
        cx.l lVar2 = this.hp;
        if (lVar2 != null) {
            lVar2.hp(i2, str, lVar);
        }
    }

    @Override // com.byazt.jz.cx.l
    public void hp(final com.byazt.xci.hp hpVar, final com.byazt.xci.l lVar) {
        com.byazt.ff.hp.hp(hpVar);
        int i2 = this.f19113l;
        boolean z2 = i2 == 3 || i2 == 4;
        if (z2 && (com.byazt.lca.w.hp().jl() & 1) == 1) {
            cx.l lVar2 = this.hp;
            if (lVar2 != null) {
                lVar2.hp(hpVar, lVar);
                return;
            }
            return;
        }
        if (this.hp != null) {
            Runnable runnable = new Runnable() { // from class: com.byazt.de.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.hp.hp(hpVar, lVar);
                }
            };
            if (z2) {
                com.byazt.dnb.s.hp(runnable);
            } else {
                com.byazt.dnb.s.jx(runnable);
            }
        }
    }
}
