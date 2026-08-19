package com.byazt.p000if;

import android.util.SparseArray;
import com.byazt.qt.l;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1188, 28})
/* loaded from: classes.dex */
public class hp {
    public final Function<SparseArray<Object>, Object> hp;

    public hp(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(l lVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, lVar);
        sparseArray.put(-99999987, 114102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l(l lVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, lVar);
        sparseArray.put(-99999987, 114104);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(com.byazt.qt.hp hpVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, hpVar);
        sparseArray.put(-99999987, 114103);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(l lVar, com.byazt.qt.hp hpVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, lVar);
        sparseArray.put(1, hpVar);
        sparseArray.put(-99999987, 114105);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
