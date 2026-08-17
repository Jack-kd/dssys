package com.byazt.dz;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1141, 38})
/* loaded from: classes2.dex */
public class j implements Function<SparseArray<Object>, Object> {
    private final IMediationPreloadRequestInfo hp;

    public j(IMediationPreloadRequestInfo iMediationPreloadRequestInfo) {
        this.hp = iMediationPreloadRequestInfo;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        switch (com.byazt.xi.jx.hp(sparseArray).l().intValue(-99999987)) {
            case 271044:
                return Integer.class.cast(Integer.valueOf(this.hp.getAdType()));
            case 271045:
                SparseArray<Object> sparseArrayHp = com.byazt.ta.l.hp(this.hp.getAdSlot());
                return sparseArrayHp != null ? sparseArrayHp : new SparseArray();
            case 271046:
                return this.hp.getPrimeRitList();
            default:
                return com.byazt.xi.jx.jx.apply(sparseArray);
        }
    }
}
