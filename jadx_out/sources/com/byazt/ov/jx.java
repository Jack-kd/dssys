package com.byazt.ov;

import com.byazt.gg.a;
import com.byazt.ql.vv;

@com.byazt.kj.hp(hp = {0, 1, 707, 30})
/* loaded from: classes3.dex */
public class jx extends hp {

    /* renamed from: q, reason: collision with root package name */
    public vv f24193q;

    public jx(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
        super(jxVar, str, hpVar);
    }

    @Override // com.byazt.ov.hp
    public void hp() {
        vv vvVarNs = this.jx.ns();
        this.f24193q = vvVarNs;
        if (vvVarNs != null) {
            vvVarNs.hp(this.jx, this.eb, this.f24190l);
        }
    }
}
