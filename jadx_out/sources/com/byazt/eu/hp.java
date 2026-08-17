package com.byazt.eu;

import android.util.SparseArray;
import android.view.View;
import com.byazt.fl.jl;
import com.byazt.fl.v;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 29, 28})
/* loaded from: classes2.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public final ValueSet hp = com.byazt.xi.jx.hp;

    /* renamed from: l, reason: collision with root package name */
    public final TTNativeAd.AdInteractionListener f19503l;

    public hp(TTNativeAd.AdInteractionListener adInteractionListener) {
        this.f19503l = adInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f19503l == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 141101:
                this.f19503l.onAdClicked((View) valueSetL.objectValue(0, View.class), new jl(v.hp(valueSetL.objectValue(1, Object.class))));
                return null;
            case 141102:
                this.f19503l.onAdCreativeClick((View) valueSetL.objectValue(0, View.class), new jl(v.hp(valueSetL.objectValue(1, Object.class))));
                return null;
            case 141103:
                this.f19503l.onAdShow(new jl(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            default:
                return null;
        }
    }
}
