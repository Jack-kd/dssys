package com.byazt.ja;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1767, 34})
/* loaded from: classes.dex */
public class l implements Function<SparseArray<Object>, Object> {
    private final IMediationDislikeCallback hp;

    public l(IMediationDislikeCallback iMediationDislikeCallback) {
        this.hp = iMediationDislikeCallback;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 268013:
                this.hp.onSelected(valueSetL.intValue(0), valueSetL.stringValue(1));
                return null;
            case 268014:
                this.hp.onCancel();
                return null;
            case 268015:
                this.hp.onShow();
                return null;
            default:
                return null;
        }
    }
}
