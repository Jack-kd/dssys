package com.byazt.cp;

import android.util.SparseArray;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 726, 34})
/* loaded from: classes2.dex */
public abstract class l implements Function<SparseArray<Object>, Object> {
    public abstract void hp(Object obj);

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null || ((Integer) sparseArray.get(-99999987)).intValue() != 1) {
            return null;
        }
        hp(sparseArray.get(0, Object.class));
        return null;
    }
}
