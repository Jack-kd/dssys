package com.byazt.hde;

import android.util.SparseArray;
import com.byazt.jz.d;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1006, 30})
/* loaded from: classes2.dex */
public class jx {
    public final Function<SparseArray<Object>, Object> hp;

    /* renamed from: l, reason: collision with root package name */
    public l f20674l;

    public jx(Function<SparseArray<Object>, Object> function) {
        this.hp = function;
    }

    public void hp(l lVar) {
        this.f20674l = lVar;
    }

    public void hp(int i2, SparseArray<Object> sparseArray) {
        l lVar;
        if (com.byazt.xi.hp.hp(sparseArray).l().booleanValue(-999903) && i2 == 8001 && (lVar = this.f20674l) != null) {
            lVar.hp(true);
        } else if (this.hp != null) {
            this.hp.apply(com.byazt.kd.j.hp(d.f21856j) ? com.byazt.wi.j.hp(sparseArray).hp(i2).hp(Void.class).l() : com.byazt.wi.j.hp().hp(i2).hp(Void.class).hp(-99999979, sparseArray).l());
        }
    }
}
