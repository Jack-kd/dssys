package com.byazt.up;

import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1757, 34})
/* loaded from: classes3.dex */
public class l implements Function<SparseArray<Object>, Object> {
    public final ValueSet hp = com.byazt.xi.jx.hp;

    /* renamed from: l, reason: collision with root package name */
    public final TTNativeExpressAd.ExpressAdInteractionListener f26290l;

    public l(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.f26290l = expressAdInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f26290l == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 151101:
                this.f26290l.onAdClicked((View) valueSetL.objectValue(0, View.class), valueSetL.intValue(1));
                return null;
            case 151102:
                this.f26290l.onAdShow((View) valueSetL.objectValue(0, View.class), valueSetL.intValue(1));
                return null;
            case 151103:
                this.f26290l.onRenderFail((View) valueSetL.objectValue(0, View.class), valueSetL.stringValue(1), valueSetL.intValue(2));
                return null;
            case 151104:
                this.f26290l.onRenderSuccess((View) valueSetL.objectValue(0, View.class), valueSetL.floatValue(1), valueSetL.floatValue(2));
                return null;
            default:
                return null;
        }
    }
}
