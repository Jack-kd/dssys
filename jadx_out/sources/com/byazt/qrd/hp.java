package com.byazt.qrd;

import android.util.SparseArray;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2056, 28})
/* loaded from: classes3.dex */
public class hp extends l {
    public final Function<SparseArray<Object>, Object> hp;

    public hp(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 151105);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
