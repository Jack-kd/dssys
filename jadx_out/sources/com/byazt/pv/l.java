package com.byazt.pv;

import android.util.SparseArray;
import com.byazt.fl.v;
import com.byazt.xi.jx;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1284, 34})
/* loaded from: classes3.dex */
public class l implements Function<SparseArray<Object>, Object> {
    public final TTAdNative.CSJSplashAdListener hp;

    public l(TTAdNative.CSJSplashAdListener cSJSplashAdListener) {
        this.hp = cSJSplashAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 114102:
                this.hp.onSplashLoadSuccess(new com.byazt.fl.l(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            case 114103:
                this.hp.onSplashLoadFail(new com.byazt.fl.hp(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            case 114104:
                this.hp.onSplashRenderSuccess(new com.byazt.fl.l((Function) valueSetL.objectValue(0, Function.class)));
                return null;
            case 114105:
                this.hp.onSplashRenderFail(new com.byazt.fl.l(v.hp(valueSetL.objectValue(0, Object.class))), new com.byazt.fl.hp(v.hp(valueSetL.objectValue(1, Object.class))));
                return null;
            default:
                return null;
        }
    }
}
