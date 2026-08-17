package com.byazt.ri;

import android.util.SparseArray;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2091, 54})
/* loaded from: classes3.dex */
public class a {
    public static void hp(com.byazt.lz.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        Function<SparseArray<Object>, Object> functionDi = hpVar.di();
        if (functionDi != null) {
            Object objApply = functionDi.apply(com.byazt.wi.j.hp().hp(10001).hp(Boolean.class).l());
            if (objApply instanceof Boolean) {
                l.hp(((Boolean) objApply).booleanValue());
            }
        }
        if (hpVar.d() != null) {
            Object objApply2 = functionDi.apply(com.byazt.wi.j.hp().hp(10003).hp(Map.class).l());
            if (objApply2 instanceof Map) {
                System.out.println("onetap " + objApply2.toString());
                j.hp((Map) objApply2);
            }
        }
        jx.hp(hpVar.o());
        w.hp(hpVar.wv());
        hp.hp(hpVar.hq());
    }
}
