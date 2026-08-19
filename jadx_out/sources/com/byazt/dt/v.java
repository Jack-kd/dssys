package com.byazt.dt;

import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1622, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public class v extends eb<com.byazt.yg.l> {
    public v(List<com.byazt.ch.hp<com.byazt.yg.l>> list) {
        super(list);
    }

    @Override // com.byazt.dt.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public com.byazt.yg.l hp(com.byazt.ch.hp<com.byazt.yg.l> hpVar, float f2) {
        com.byazt.yg.l lVar;
        com.byazt.ch.jx<A> jxVar = this.jx;
        if (jxVar == 0) {
            return (f2 != 1.0f || (lVar = hpVar.f18850l) == null) ? hpVar.hp : lVar;
        }
        float f3 = hpVar.f18846a;
        Float f4 = hpVar.eb;
        float fFloatValue = f4 == null ? Float.MAX_VALUE : f4.floatValue();
        com.byazt.yg.l lVar2 = hpVar.hp;
        com.byazt.yg.l lVar3 = hpVar.f18850l;
        return (com.byazt.yg.l) jxVar.hp(f3, fFloatValue, lVar2, lVar3 == null ? lVar2 : lVar3, f2, w(), s());
    }
}
