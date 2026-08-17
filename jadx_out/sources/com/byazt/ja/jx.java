package com.byazt.ja;

import android.util.SparseArray;
import com.byazt.fl.v;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeToBannerListener;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1767, 30})
/* loaded from: classes.dex */
public class jx implements Function<SparseArray<Object>, Object> {
    private final IMediationNativeToBannerListener hp;

    public jx(IMediationNativeToBannerListener iMediationNativeToBannerListener) {
        this.hp = iMediationNativeToBannerListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        if (valueSetL.intValue(-99999987) != 266013) {
            return null;
        }
        return this.hp.getMediationBannerViewFromNativeAd(new com.byazt.ix.hp(v.hp(valueSetL.objectValue(0, Object.class))));
    }
}
