package com.byazt.lg;

import android.util.SparseArray;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 838, 38})
/* loaded from: classes3.dex */
public class j {
    public final Function<SparseArray<Object>, Object> hp;

    public j(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(int i2) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, Integer.valueOf(i2));
        sparseArray.put(-99999987, 270025);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
