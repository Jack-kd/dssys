package com.byazt.or;

import android.util.SparseArray;
import com.byazt.fl.v;
import com.byazt.xi.jx;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2224, 28})
/* loaded from: classes3.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public final CSJSplashAd.SplashAdListener hp;

    public hp(CSJSplashAd.SplashAdListener splashAdListener) {
        this.hp = splashAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp != null && sparseArray != null) {
            ValueSet valueSetL = jx.hp(sparseArray).l();
            switch (valueSetL.intValue(-99999987)) {
                case 111101:
                    this.hp.onSplashAdShow(new com.byazt.fl.l(v.hp(valueSetL.objectValue(0, Object.class))));
                    break;
                case 111102:
                    this.hp.onSplashAdClick(new com.byazt.fl.l(v.hp(valueSetL.objectValue(0, Object.class))));
                    break;
                case 111103:
                    this.hp.onSplashAdClose(new com.byazt.fl.l(v.hp(valueSetL.objectValue(0, Object.class))), valueSetL.intValue(1));
                    break;
            }
        }
        return null;
    }
}
