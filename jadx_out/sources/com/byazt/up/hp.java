package com.byazt.up;

import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1757, 28})
/* loaded from: classes3.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public final TTNativeExpressAd.AdInteractionListener hp;

    public hp(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        this.hp = adInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 151101:
                this.hp.onAdClicked((View) valueSetL.objectValue(0, View.class), valueSetL.intValue(1));
                return null;
            case 151102:
                this.hp.onAdShow((View) valueSetL.objectValue(0, View.class), valueSetL.intValue(1));
                return null;
            case 151103:
                this.hp.onRenderFail((View) valueSetL.objectValue(0, View.class), valueSetL.stringValue(1), valueSetL.intValue(2));
                return null;
            case 151104:
                this.hp.onRenderSuccess((View) valueSetL.objectValue(0, View.class), valueSetL.floatValue(1), valueSetL.floatValue(2));
                return null;
            case 151105:
                this.hp.onAdDismiss();
                return null;
            default:
                return null;
        }
    }
}
