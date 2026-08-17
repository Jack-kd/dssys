package com.byazt.cg;

import android.util.SparseArray;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2492, 28})
/* loaded from: classes2.dex */
public class hp {
    public final Function<SparseArray<Object>, Object> hp;

    public hp(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 244101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 244103);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(int i2, String str, boolean z2) {
        SparseArray<Object> sparseArray = new SparseArray<>(5);
        sparseArray.put(0, Integer.valueOf(i2));
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z2));
        sparseArray.put(-99999987, 244102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
