package com.byazt.fsc;

import com.byazt.aqw.jx;

@com.byazt.kj.hp(hp = {0, 1, 1899, 34})
/* loaded from: classes2.dex */
public class l extends jx {
    public com.byazt.cg.hp hp;

    public l(com.byazt.cg.hp hpVar) {
        this.hp = hpVar;
    }

    @Override // com.byazt.aqw.jx
    public void onCancel() {
        com.byazt.cg.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.l();
        }
    }

    @Override // com.byazt.aqw.jx
    public void onSelected(int i2, String str) {
        com.byazt.cg.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(i2, str, false);
        }
    }

    @Override // com.byazt.aqw.jx
    public void onShow() {
        com.byazt.cg.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp();
        }
    }
}
