package com.byazt.gh;

import android.util.SparseArray;
import com.byazt.fl.v;
import com.byazt.xi.jx;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1758, 34})
/* loaded from: classes2.dex */
public class l implements Function<SparseArray<Object>, Object> {
    private final MediationAdDislike hp;

    public l(MediationAdDislike mediationAdDislike) {
        this.hp = mediationAdDislike;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 270032:
                this.hp.showDislikeDialog();
                return null;
            case 270033:
                this.hp.setDislikeCallback(new hp(v.hp(valueSetL.objectValue(0, Object.class))));
                return null;
            default:
                return null;
        }
    }
}
