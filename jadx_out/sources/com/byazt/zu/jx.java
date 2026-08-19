package com.byazt.zu;

import android.util.SparseArray;
import com.byazt.fl.e;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1978, 30})
/* loaded from: classes3.dex */
public class jx implements Function<SparseArray<Object>, Object> {
    public final TTAdNative.FullScreenVideoAdListener hp;

    public jx(TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        this.hp = fullScreenVideoAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 132101:
                this.hp.onError(valueSetL.intValue(0), valueSetL.stringValue(1));
                return null;
            case 132102:
                this.hp.onFullScreenVideoAdLoad(new e((Function) valueSetL.objectValue(0, Function.class)));
                return null;
            case 132103:
                this.hp.onFullScreenVideoCached(new e((Function) valueSetL.objectValue(0, Function.class)));
                return null;
            case 132104:
                this.hp.onFullScreenVideoCached();
                return null;
            default:
                return null;
        }
    }
}
