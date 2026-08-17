package com.byazt.dz;

import android.util.SparseArray;
import com.byazt.fl.v;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.IMediationDrawAdTokenCallback;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1141, 28})
/* loaded from: classes2.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    private final IMediationDrawAdTokenCallback hp;

    public hp(IMediationDrawAdTokenCallback iMediationDrawAdTokenCallback) {
        this.hp = iMediationDrawAdTokenCallback;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        int iIntValue = valueSetL.intValue(-99999987);
        valueSetL.objectValue(-99999985, Class.class);
        switch (iIntValue) {
            case 270029:
                this.hp.onAdTokenLoaded(valueSetL.stringValue(0), new com.byazt.tu.hp(v.hp(valueSetL.objectValue(1, Object.class))));
                return null;
            case 270030:
                this.hp.onAdTokenLoadedFail(valueSetL.intValue(0), valueSetL.stringValue(1));
                return null;
            default:
                return null;
        }
    }
}
