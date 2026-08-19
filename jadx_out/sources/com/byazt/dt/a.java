package com.byazt.dt;

import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1622, 54})
/* loaded from: classes2.dex */
public class a extends eb<Integer> {
    public a(List<com.byazt.ch.hp<Integer>> list) {
        super(list);
    }

    public int jx(com.byazt.ch.hp<Integer> hpVar, float f2) {
        float f3;
        if (hpVar.hp == null || hpVar.f18850l == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        com.byazt.ch.jx<A> jxVar = this.jx;
        if (jxVar != 0) {
            f3 = f2;
            Integer num = (Integer) jxVar.hp(hpVar.f18846a, hpVar.eb.floatValue(), hpVar.hp, hpVar.f18850l, f3, j(), s());
            if (num != null) {
                return num.intValue();
            }
        } else {
            f3 = f2;
        }
        return com.byazt.ze.q.hp(hpVar.s(), hpVar.q(), f3);
    }

    @Override // com.byazt.dt.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public Integer hp(com.byazt.ch.hp<Integer> hpVar, float f2) {
        return Integer.valueOf(jx(hpVar, f2));
    }

    public int q() {
        return jx(jx(), w());
    }
}
