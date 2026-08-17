package com.byazt.vde;

import android.util.Pair;
import android.util.SparseArray;
import com.byazt.ym.gu;
import com.byazt.ym.q;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1898, 28})
/* loaded from: classes3.dex */
public class hp {
    public final q hp;

    public hp(q qVar) {
        this.hp = qVar;
    }

    public boolean hp(gu guVar, Function function) {
        int iHp = com.byazt.glv.hp.hp(function, guVar.f28046a);
        if (iHp <= guVar.jx) {
            return false;
        }
        guVar.l(iHp);
        guVar.hp(function);
        return true;
    }

    public void hp(gu guVar, com.byazt.ym.hp hpVar, Function function) {
        if (guVar.a()) {
            if (!guVar.eb) {
                Object objJ = guVar.j();
                if (objJ != null) {
                    hp(guVar, null, objJ, hpVar);
                    return;
                }
                return;
            }
            for (Map.Entry<com.byazt.pg.hp, Object> entry : guVar.jx().entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    hp(guVar, entry.getKey(), value, hpVar);
                }
            }
        }
    }

    private void hp(gu guVar, com.byazt.pg.hp hpVar, Object obj, com.byazt.ym.hp hpVar2) {
        int iHp;
        Object obj2;
        Pair<Function, Object> pairHp = hpVar2.w().hp(guVar, hpVar);
        if (pairHp != null && (iHp = com.byazt.glv.hp.hp((Function) pairHp.first, guVar.f28046a)) > guVar.hp() && (obj2 = pairHp.second) != null && (obj instanceof Function) && (obj2 instanceof Function)) {
            Function function = (Function) obj;
            Function function2 = (Function) obj2;
            if (function.getClass().getClassLoader() == function2.getClass().getClassLoader()) {
                if (this.hp != null) {
                    this.hp.hp(guVar, 3, "source:" + obj + " target:" + function2 + " classloader:" + function.getClass().getClassLoader() + " target classloader:" + function2.getClass().getClassLoader(), null);
                    return;
                }
                return;
            }
            hp(function, function2);
            guVar.hp(iHp);
            hp(function, guVar);
        }
    }

    private boolean hp(Function function, gu guVar) {
        Function functionL = com.byazt.glv.hp.l(function);
        if (functionL == null) {
            q qVar = this.hp;
            if (qVar != null) {
                qVar.hp(2, "get origin service impl failed:" + guVar.f28046a, null);
            }
            return false;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, -1);
        functionL.apply(sparseArray);
        return true;
    }

    private void hp(Function function, Function function2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, -4);
        sparseArray.put(1, function2);
        function.apply(sparseArray);
    }
}
