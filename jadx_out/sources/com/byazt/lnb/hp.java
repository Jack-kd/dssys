package com.byazt.lnb;

import android.util.SparseArray;
import com.byazt.di.jx;
import com.byazt.di.l;
import com.byazt.pg.sz;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1123, 28})
@ATSKeep
/* loaded from: classes3.dex */
public class hp implements sz, Function {
    public com.byazt.pg.hp hp;

    public hp(com.byazt.pg.hp hpVar) {
        this.hp = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        int iIntValue = ((Integer) ((SparseArray) obj).get(0)).intValue();
        if (iIntValue == 1) {
            return getMediationAppLogUrl();
        }
        if (iIntValue == 2) {
            return Boolean.valueOf(isAppLogV2());
        }
        if (iIntValue != 3) {
            return null;
        }
        return Integer.valueOf(getEventBatchSize());
    }

    @Override // com.byazt.pg.sz
    public int getEventBatchSize() {
        return l.l().pu();
    }

    @Override // com.byazt.pg.sz
    public String getMediationAppLogUrl() {
        return jx.l();
    }

    @Override // com.byazt.pg.sz
    public boolean isAppLogV2() {
        return l.l().j();
    }
}
