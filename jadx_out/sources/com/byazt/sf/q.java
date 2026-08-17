package com.byazt.sf;

import android.util.SparseArray;

@com.byazt.kj.hp(hp = {0, 1, 847, 150})
/* loaded from: classes3.dex */
public class q {
    public int hp;
    public SparseArray<Object> jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.wi.l f25452l;

    public q(SparseArray<Object> sparseArray, int i2) {
        this.hp = i2;
        this.jx = sparseArray != null ? sparseArray : new SparseArray<>();
        this.f25452l = new com.byazt.wi.l(sparseArray);
    }

    public int getType() {
        return this.hp;
    }

    public SparseArray<Object> j() {
        return this.jx;
    }

    public com.byazt.wi.l jx() {
        return this.f25452l;
    }

    public void setResult(SparseArray<Object> sparseArray) {
        this.f25452l = new com.byazt.wi.l(sparseArray);
    }
}
