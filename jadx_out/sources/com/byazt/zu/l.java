package com.byazt.zu;

import android.util.SparseArray;
import com.byazt.fl.q;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1978, 34})
/* loaded from: classes3.dex */
public class l implements Function<SparseArray<Object>, Object> {
    public final TTAdNative.FeedAdListener hp;

    public l(TTAdNative.FeedAdListener feedAdListener) {
        this.hp = feedAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 164101:
                this.hp.onError(valueSetL.intValue(0), valueSetL.stringValue(1));
                return null;
            case 164102:
                List arrayList = (List) valueSetL.objectValue(0, List.class);
                if (arrayList == null) {
                    arrayList = new ArrayList(0);
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new q((Function) it.next()));
                }
                this.hp.onFeedAdLoad(arrayList2);
                return null;
            default:
                return null;
        }
    }
}
