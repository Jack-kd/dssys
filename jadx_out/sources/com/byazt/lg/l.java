package com.byazt.lg;

import android.os.Bundle;
import android.util.SparseArray;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 838, 34})
/* loaded from: classes3.dex */
public class l extends com.byazt.pk.hp {
    public final Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void a() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 131108);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void eb() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 131109);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(int i2, String str) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, Integer.valueOf(i2));
        sparseArray.put(1, str);
        sparseArray.put(-99999987, 131106);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l(Bundle bundle) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, bundle);
        sparseArray.put(-99999987, 131110);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void w() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 131107);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
