package com.byazt.pt;

import android.util.SparseArray;
import android.view.View;
import com.byazt.qt.zy;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1805, 28})
/* loaded from: classes3.dex */
public class hp {
    public final Function<SparseArray<Object>, Object> hp;

    public hp(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(View view, zy zyVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, view);
        sparseArray.put(1, zyVar);
        sparseArray.put(-99999987, 141101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l(View view, zy zyVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, view);
        sparseArray.put(1, zyVar);
        sparseArray.put(-99999987, 141102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(zy zyVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, zyVar);
        sparseArray.put(-99999987, 141103);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
