package com.byazt.or;

import android.util.SparseArray;
import com.byazt.fl.v;
import com.byazt.xi.jx;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2224, 34})
/* loaded from: classes3.dex */
public class l implements Function<SparseArray<Object>, Object> {
    public final CSJSplashAd.SplashCardListener hp;

    public l(CSJSplashAd.SplashCardListener splashCardListener) {
        this.hp = splashCardListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 112102:
                this.hp.onSplashCardClick();
                return null;
            case 112103:
                this.hp.onSplashCardClose();
                return null;
            case 121201:
                this.hp.onSplashCardReadyToShow(new com.byazt.fl.l(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            default:
                return null;
        }
    }
}
