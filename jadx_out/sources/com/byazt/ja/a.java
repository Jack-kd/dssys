package com.byazt.ja;

import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1767, 54})
/* loaded from: classes.dex */
public class a implements Function<SparseArray<Object>, Object> {
    private final MediationExpressRenderListener hp;

    public a(MediationExpressRenderListener mediationExpressRenderListener) {
        this.hp = mediationExpressRenderListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 142101:
                this.hp.onRenderSuccess((View) valueSetL.objectValue(0, View.class), valueSetL.floatValue(1), valueSetL.floatValue(2), valueSetL.booleanValue(3));
                return null;
            case 142102:
                this.hp.onRenderFail((View) valueSetL.objectValue(0, View.class), valueSetL.stringValue(1), valueSetL.intValue(2));
                return null;
            case 142103:
                this.hp.onAdClick();
                return null;
            case 142104:
                this.hp.onAdShow();
                return null;
            default:
                return null;
        }
    }
}
