package com.byazt.dz;

import android.os.Bundle;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.IMediationInterstitialFullAdListener;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1141, 34})
/* loaded from: classes2.dex */
public class l implements Function<SparseArray<Object>, Object> {
    private final IMediationInterstitialFullAdListener hp;

    public l(IMediationInterstitialFullAdListener iMediationInterstitialFullAdListener) {
        this.hp = iMediationInterstitialFullAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 131101:
                this.hp.onAdShow();
                return null;
            case 131102:
                this.hp.onAdVideoBarClick();
                return null;
            case 131103:
                this.hp.onAdClose();
                return null;
            case 131104:
                this.hp.onVideoComplete();
                return null;
            case 131105:
                this.hp.onSkippedVideo();
                return null;
            case 131106:
                this.hp.onInterstitialFullShowFail(valueSetL.intValue(0), valueSetL.stringValue(1));
                return null;
            case 131107:
                this.hp.onVideoError();
                return null;
            case 131108:
                this.hp.onAdOpened();
                return null;
            case 131109:
                this.hp.onAdLeftApplication();
                return null;
            case 131110:
                this.hp.onRewardVerify((Bundle) valueSetL.objectValue(0, Bundle.class));
                return null;
            default:
                return null;
        }
    }
}
