package com.byazt.zu;

import android.util.SparseArray;
import com.byazt.fl.s;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1978, 28})
/* loaded from: classes3.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public final TTAdNative.DrawFeedAdListener hp;

    public hp(TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        this.hp = drawFeedAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 172101:
                this.hp.onError(valueSetL.intValue(0), valueSetL.stringValue(1));
                return null;
            case 172102:
                List arrayList = (List) valueSetL.objectValue(0, List.class);
                if (arrayList == null) {
                    arrayList = new ArrayList(0);
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new s((Function) it.next()));
                }
                this.hp.onDrawFeedAdLoad(arrayList2);
                return null;
            default:
                return null;
        }
    }
}
