package com.byazt.zu;

import android.util.SparseArray;
import com.byazt.fl.k;
import com.byazt.fl.v;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1978, 54})
/* loaded from: classes3.dex */
public class a implements Function<SparseArray<Object>, Object> {
    public final TTAdNative.RewardVideoAdListener hp;

    public a(TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        this.hp = rewardVideoAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        ValueSet valueSetL;
        if (this.hp != null && (valueSetL = com.byazt.xi.jx.hp(sparseArray).l()) != null) {
            switch (valueSetL.intValue(-99999987)) {
                case 124101:
                    this.hp.onError(valueSetL.intValue(0), valueSetL.stringValue(1));
                    break;
                case 124102:
                    this.hp.onRewardVideoAdLoad(new k(v.hp(valueSetL.objectValue(0, Object.class))));
                    break;
                case 124103:
                    this.hp.onRewardVideoCached(new k(v.hp(valueSetL.objectValue(0, Object.class))));
                    break;
                case 124104:
                    this.hp.onRewardVideoCached();
                    break;
            }
        }
        return null;
    }
}
