package com.byazt.cr;

import android.os.Bundle;
import android.util.SparseArray;
import com.byazt.xi.jx;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1783, 28})
/* loaded from: classes2.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public final TTRewardVideoAd.RewardAdInteractionListener hp;

    public hp(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        this.hp = rewardAdInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 121101:
                this.hp.onAdShow();
                return null;
            case 121102:
                this.hp.onAdVideoBarClick();
                return null;
            case 121103:
                this.hp.onAdClose();
                return null;
            case 121104:
                this.hp.onVideoComplete();
                return null;
            case 121105:
                this.hp.onVideoError();
                return null;
            case 121106:
                this.hp.onRewardVerify(valueSetL.booleanValue(0), valueSetL.intValue(1), valueSetL.stringValue(2), valueSetL.intValue(3), valueSetL.stringValue(4));
                return null;
            case 121107:
                this.hp.onRewardArrived(valueSetL.booleanValue(0), valueSetL.intValue(1), (Bundle) valueSetL.objectValue(2, Bundle.class));
                return null;
            case 121108:
                this.hp.onSkippedVideo();
                return null;
            default:
                return null;
        }
    }
}
