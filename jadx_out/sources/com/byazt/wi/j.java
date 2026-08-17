package com.byazt.wi;

import android.util.SparseArray;

@com.byazt.kj.hp(hp = {0, 1, 1789, 38})
/* loaded from: classes3.dex */
public class j {
    public final SparseArray<Object> hp;

    private j() {
        this.hp = new SparseArray<>();
    }

    public static j hp() {
        return new j();
    }

    public SparseArray<Object> l() {
        return this.hp;
    }

    public static j hp(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            sparseArray = new SparseArray<>();
        }
        return new j(sparseArray);
    }

    public j(SparseArray<Object> sparseArray) {
        this.hp = com.byazt.nn.hp.hp().l() < 6803 ? new hp(sparseArray) : sparseArray;
    }

    public j hp(int i2) {
        this.hp.put(-99999987, Integer.valueOf(i2));
        return this;
    }

    public j hp(Class<?> cls) {
        this.hp.put(-99999985, cls);
        return this;
    }

    public j hp(int i2, Object obj) {
        this.hp.put(i2, obj);
        return this;
    }
}
