package com.byazt.ri;

import android.util.SparseArray;
import com.byazt.jz.s;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2091, 30})
/* loaded from: classes3.dex */
public class jx {
    public static Function<SparseArray<Object>, Object> hp;

    public static void hp(Function<SparseArray<Object>, Object> function) {
        hp = function;
    }

    private static void l(com.byazt.lsx.hp hpVar, boolean z2) {
        if (hp != null) {
            com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
            if (z2) {
                jVarHp.hp(10002).hp(Void.class);
                jVarHp.hp(20003, hpVar.jx());
                hp.apply(jVarHp.l());
            } else {
                jVarHp.hp(10002).hp(Void.class);
                jVarHp.hp(20002, hpVar.jx());
                hp.apply(jVarHp.l());
            }
        }
    }

    public static void hp(com.byazt.lsx.hp hpVar, boolean z2) {
        if (hpVar != null && s.u().rz()) {
            l(hpVar, z2);
        }
    }
}
