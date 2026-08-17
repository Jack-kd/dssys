package com.byazt.qrd;

import android.util.SparseArray;
import android.view.View;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2056, 34})
/* loaded from: classes3.dex */
public class l {
    public final Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(View view, int i2) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, view);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(-99999987, 151101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l(View view, int i2) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, view);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(-99999987, 151102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(View view, String str, int i2) {
        SparseArray<Object> sparseArray = new SparseArray<>(5);
        sparseArray.put(0, view);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i2));
        sparseArray.put(-99999987, 151103);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(View view, float f2, float f3) {
        SparseArray<Object> sparseArray = new SparseArray<>(5);
        sparseArray.put(0, view);
        sparseArray.put(1, Float.valueOf(f2));
        sparseArray.put(2, Float.valueOf(f3));
        sparseArray.put(-99999987, 151104);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
