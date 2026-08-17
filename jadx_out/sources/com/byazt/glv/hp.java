package com.byazt.glv;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.sm.l;
import com.byazt.ym.gu;
import com.byazt.ym.j;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1262, 28})
/* loaded from: classes2.dex */
public class hp {
    public final l hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ym.hp f20513l;

    public hp(l lVar, com.byazt.ym.hp hpVar) {
        this.hp = lVar;
        this.f20513l = hpVar;
    }

    private int jx(SparseArray sparseArray) {
        Object obj = sparseArray.get(1);
        if (!(obj instanceof String)) {
            return 0;
        }
        gu guVarHp = this.hp.hp((String) obj);
        if (guVarHp == null || !guVarHp.f28053w) {
            return -1;
        }
        return guVarHp.jx;
    }

    private Object l(SparseArray sparseArray) {
        Object obj = sparseArray.get(1);
        String str = (String) sparseArray.get(2);
        return this.f20513l.hp((String) obj, !TextUtils.isEmpty(str) ? this.f20513l.hp(str) : null, false);
    }

    public Object hp(SparseArray sparseArray) {
        Object obj = sparseArray.get(0);
        if (!(obj instanceof Integer)) {
            return null;
        }
        int iIntValue = ((Integer) obj).intValue();
        if (iIntValue == 0) {
            this.f20513l.hp(true);
            return null;
        }
        if (iIntValue == 1) {
            return Boolean.valueOf(this.f20513l.l());
        }
        if (iIntValue == 2) {
            return Integer.valueOf(jx(sparseArray));
        }
        if (iIntValue == 3) {
            return l(sparseArray);
        }
        if (iIntValue != 4) {
            return null;
        }
        return Integer.valueOf(j.getInstance().getVersion());
    }

    public static int jx(Function function) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        Object objApply = function.apply(sparseArray);
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    public static Function l(Function function) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, -5);
        return (Function) function.apply(sparseArray);
    }

    public static int hp(Function function, String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        Object objApply = function.apply(sparseArray);
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    public static Object hp(Function function, String str, com.byazt.pg.hp hpVar) {
        if (jx(function) < 7500) {
            return function.apply(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        if (hpVar != null) {
            sparseArray.put(2, hpVar.getAppId());
        }
        return function.apply(sparseArray);
    }

    public static Boolean hp(Function function) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        Object objApply = function.apply(sparseArray);
        if (objApply instanceof Boolean) {
            return (Boolean) objApply;
        }
        return Boolean.FALSE;
    }
}
