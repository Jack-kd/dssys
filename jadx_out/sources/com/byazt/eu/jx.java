package com.byazt.eu;

import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 29, 30})
/* loaded from: classes2.dex */
public class jx implements Function<SparseArray<Object>, Object> {
    public final TTNativeAd.ExpressRenderListener hp;

    public jx(TTNativeAd.ExpressRenderListener expressRenderListener) {
        this.hp = expressRenderListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        if (valueSetL.intValue(-99999987) == 142101) {
            this.hp.onRenderSuccess((View) valueSetL.objectValue(0, View.class), valueSetL.floatValue(1), valueSetL.floatValue(2), valueSetL.booleanValue(3));
        }
        return null;
    }
}
