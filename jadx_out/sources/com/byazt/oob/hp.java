package com.byazt.oob;

import android.util.SparseArray;
import com.byazt.xi.jx;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1906, 28})
/* loaded from: classes3.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public final TTAdDislike.DislikeInteractionCallback hp;

    public hp(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        this.hp = dislikeInteractionCallback;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 244101:
                this.hp.onShow();
                return null;
            case 244102:
                this.hp.onSelected(valueSetL.intValue(0), valueSetL.stringValue(1), valueSetL.booleanValue(2));
                return null;
            case 244103:
                this.hp.onCancel();
                return null;
            default:
                return null;
        }
    }
}
