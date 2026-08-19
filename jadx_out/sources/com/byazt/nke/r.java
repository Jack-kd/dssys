package com.byazt.nke;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1081, 572})
@ATSKeep
/* loaded from: classes3.dex */
public class r implements lv, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile lv f23678l;

    public r(lv lvVar) {
        this.f23678l = lvVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            Object obj2 = sparseArray.get(1);
            Object zyVar = sparseArray.get(2);
            if (zyVar != null) {
                zyVar = new zy((Function) zyVar);
            }
            this.f23678l.onStepStart((String) obj2, (jl) zyVar);
            return null;
        }
        if (iIntValue != 2) {
            return null;
        }
        Object obj3 = sparseArray.get(1);
        Object zyVar2 = sparseArray.get(2);
        if (zyVar2 != null) {
            zyVar2 = new zy((Function) zyVar2);
        }
        this.f23678l.onStepEnd((String) obj3, (jl) zyVar2);
        return null;
    }

    @Override // com.byazt.nke.lv
    public void onStepEnd(String str, jl jlVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        if (jlVar != null) {
            jlVar = new zy(jlVar);
        }
        sparseArray.put(2, jlVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.nke.lv
    public void onStepStart(String str, jl jlVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        if (jlVar != null) {
            jlVar = new zy(jlVar);
        }
        sparseArray.put(2, jlVar);
        this.hp.apply(sparseArray);
    }

    public r(Function function) {
        this.hp = function;
    }
}
