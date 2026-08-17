package com.byazt.p000if;

import android.util.SparseArray;
import com.byazt.kj.hp;
import com.byazt.qt.v;
import java.util.function.Function;

@hp(hp = {0, 1, 1188, 94})
/* loaded from: classes.dex */
public class eb {
    public final Function<SparseArray<Object>, Object> hp;

    public eb(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(int i2, String str) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, Integer.valueOf(i2));
        sparseArray.put(1, str);
        sparseArray.put(-99999987, 124101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l(v vVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, vVar);
        sparseArray.put(-99999987, 124103);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(v vVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, vVar);
        sparseArray.put(-99999987, 124102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(-99999987, 124104);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
