package com.byazt.tu;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.mediation.IMediationNativeTokenInfo;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 671, 30})
/* loaded from: classes3.dex */
public class jx implements IMediationNativeTokenInfo {
    private final Function<SparseArray<Object>, Object> hp;

    public jx(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.jx.jx : function;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationNativeTokenInfo
    public void loadNativeAdByAdm(String str, TTAdNative.FeedAdListener feedAdListener) {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(0, str);
        sparseArray.put(1, new com.byazt.zu.l(feedAdListener));
        sparseArray.put(-99999987, 270028);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
