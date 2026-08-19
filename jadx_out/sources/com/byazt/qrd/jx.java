package com.byazt.qrd;

import android.util.SparseArray;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2056, 30})
/* loaded from: classes3.dex */
public class jx {
    public final Function<SparseArray<Object>, Object> hp;

    public jx(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 152101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void j() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 152105);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void jx() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 152104);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 152103);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void w() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 152107);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(int i2, int i3) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, Integer.valueOf(i2));
        sparseArray.put(1, Integer.valueOf(i3));
        sparseArray.put(-99999987, 152102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(long j2, long j3) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, Long.valueOf(j2));
        sparseArray.put(1, Long.valueOf(j3));
        sparseArray.put(-99999987, 152106);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
