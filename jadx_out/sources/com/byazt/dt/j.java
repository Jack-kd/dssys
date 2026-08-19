package com.byazt.dt;

import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1622, 38})
/* loaded from: classes2.dex */
public class j extends eb<Float> {
    public j(List<com.byazt.ch.hp<Float>> list) {
        super(list);
    }

    public float jx(com.byazt.ch.hp<Float> hpVar, float f2) {
        float f3;
        if (hpVar.hp == null || hpVar.f18850l == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        com.byazt.ch.jx<A> jxVar = this.jx;
        if (jxVar != 0) {
            f3 = f2;
            Float f4 = (Float) jxVar.hp(hpVar.f18846a, hpVar.eb.floatValue(), hpVar.hp, hpVar.f18850l, f3, j(), s());
            if (f4 != null) {
                return f4.floatValue();
            }
        } else {
            f3 = f2;
        }
        return com.byazt.ze.q.hp(hpVar.a(), hpVar.eb(), f3);
    }

    @Override // com.byazt.dt.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public Float hp(com.byazt.ch.hp<Float> hpVar, float f2) {
        return Float.valueOf(jx(hpVar, f2));
    }

    public float q() {
        return jx(jx(), w());
    }
}
