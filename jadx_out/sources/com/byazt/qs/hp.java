package com.byazt.qs;

import android.util.SparseArray;
import com.byazt.xi.jx;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1119, 28})
/* loaded from: classes3.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public final TTDrawFeedAd.DrawVideoListener hp;

    public hp(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        this.hp = drawVideoListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        switch (jx.hp(sparseArray).l().intValue(-99999987)) {
            case 171101:
                this.hp.onClick();
                return null;
            case 171102:
                this.hp.onClickRetry();
                return null;
            default:
                return null;
        }
    }
}
