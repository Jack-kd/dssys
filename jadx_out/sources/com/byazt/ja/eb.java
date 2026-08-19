package com.byazt.ja;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationShakeViewListener;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1767, 94})
/* loaded from: classes.dex */
public class eb implements Function<SparseArray<Object>, Object> {
    private final MediationShakeViewListener hp;

    public eb(MediationShakeViewListener mediationShakeViewListener) {
        this.hp = mediationShakeViewListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp != null && com.byazt.xi.jx.hp(sparseArray).l().intValue(-99999987) == 270012) {
            this.hp.onDismissed();
        }
        return null;
    }
}
