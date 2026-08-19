package com.byazt.gq;

import android.util.SparseArray;
import com.byazt.wi.j;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 665, 28})
/* loaded from: classes2.dex */
public class hp {
    public static Function<SparseArray<Object>, Object> hp;

    public static void hp(Function<SparseArray<Object>, Object> function) {
        hp = function;
    }

    public static void hp(boolean z2) {
        if (hp != null) {
            j jVarHp = j.hp();
            jVarHp.hp(10000).hp(Void.class);
            jVarHp.hp(20000, Boolean.valueOf(z2));
            hp.apply(jVarHp.l());
        }
    }
}
