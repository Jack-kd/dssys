package com.byazt.wi;

import android.util.SparseArray;

@com.byazt.kj.hp(hp = {0, 1, 1789, 28})
/* loaded from: classes3.dex */
public class hp<E> extends SparseArray<E> {
    public final SparseArray<Object> hp;

    public hp(SparseArray<Object> sparseArray) {
        this.hp = sparseArray;
    }

    @Override // android.util.SparseArray
    public boolean contains(int i2) {
        if (super.contains(i2)) {
            return true;
        }
        SparseArray<Object> sparseArray = this.hp;
        return sparseArray != null && sparseArray.indexOfKey(i2) >= 0;
    }

    @Override // android.util.SparseArray
    public E get(int i2, E e2) {
        Object obj;
        E e3 = (E) super.get(i2, null);
        if (e3 != null) {
            return e3;
        }
        SparseArray<Object> sparseArray = this.hp;
        if (sparseArray != null && (obj = sparseArray.get(i2, null)) != null) {
            e3 = (E) obj;
        }
        return e3 != null ? e3 : e2;
    }

    public SparseArray<Object> hp() {
        return this.hp;
    }
}
