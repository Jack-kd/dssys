package com.byazt.p000if;

import android.util.SparseArray;
import com.byazt.kj.hp;
import com.byazt.qt.gu;
import java.util.function.Function;

@hp(hp = {0, 1, 1188, 38})
/* loaded from: classes.dex */
public class j {
    public final Function<SparseArray<Object>, Object> hp;

    public j(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(int i2, String str) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, Integer.valueOf(i2));
        sparseArray.put(1, str);
        sparseArray.put(-99999987, 132101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l(gu guVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, guVar);
        sparseArray.put(-99999987, 132103);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(gu guVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, guVar);
        sparseArray.put(-99999987, 132102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 132104);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
