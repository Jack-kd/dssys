package com.byazt.ri;

import android.util.SparseArray;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2091, 28})
/* loaded from: classes3.dex */
public class hp {
    public static Function<SparseArray<Object>, Object> hp;

    public static void hp(Function<SparseArray<Object>, Object> function) {
        hp = function;
    }

    public static void hp(boolean z2) {
        if (hp != null) {
            com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
            jVarHp.hp(10000).hp(Boolean.class);
            jVarHp.hp(20000, Boolean.valueOf(z2));
            hp.apply(jVarHp.l());
        }
    }
}
