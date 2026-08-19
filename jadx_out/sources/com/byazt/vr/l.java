package com.byazt.vr;

import android.util.SparseArray;
import com.byazt.xi.jx;
import com.bytedance.android.live.base.api.ILiveHostActionParam;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1697, 34})
/* loaded from: classes3.dex */
public class l implements ILiveHostActionParam {
    public Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        this.hp = function;
    }

    @Override // com.bytedance.android.live.base.api.ILiveHostActionParam
    public void logEvent(boolean z2, String str, String str2, Map<String, String> map) {
        if (this.hp != null) {
            this.hp.apply(jx.hp().hp(0, z2).hp(1, str).hp(2, str2).hp(3, map).hp(-99999987, 1).l().sparseArray());
        }
    }
}
