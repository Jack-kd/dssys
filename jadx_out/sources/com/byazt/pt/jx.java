package com.byazt.pt;

import android.util.SparseArray;
import android.view.View;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1805, 30})
/* loaded from: classes3.dex */
public class jx {
    public final Function<SparseArray<Object>, Object> hp;

    public jx(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(View view, float f2, float f3, boolean z2) {
        SparseArray<Object> sparseArray = new SparseArray<>(6);
        sparseArray.put(0, view);
        sparseArray.put(1, Float.valueOf(f2));
        sparseArray.put(2, Float.valueOf(f3));
        sparseArray.put(3, Boolean.valueOf(z2));
        sparseArray.put(-99999987, 142101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
