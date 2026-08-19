package com.byazt.ix;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1117, 34})
/* loaded from: classes.dex */
public class l implements MediationAdDislike {
    private final Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.jx.jx : function;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike
    public void setDislikeCallback(IMediationDislikeCallback iMediationDislikeCallback) {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 270033);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, new com.byazt.ja.l(iMediationDislikeCallback));
        this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike
    public void showDislikeDialog() {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 270032);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
