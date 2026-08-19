package com.byazt.efq;

import com.byazt.hq.cx;

@com.byazt.kj.hp(hp = {0, 1, 1388, 94})
/* loaded from: classes2.dex */
public class eb extends com.byazt.uhg.j {
    public cx hp;

    public eb(cx cxVar) {
        this.hp = cxVar;
    }

    @Override // com.byazt.uhg.j
    public void hp(int i2) {
        this.hp.ec().hp(i2);
    }

    @Override // com.byazt.uhg.j
    public void l(int i2) {
        if (i2 < 5) {
            this.hp.ec().l(5);
        } else {
            this.hp.ec().l(i2);
        }
    }
}
