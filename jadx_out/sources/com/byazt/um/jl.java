package com.byazt.um;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.um.e;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 18, 19})
@ATSKeep
/* loaded from: classes3.dex */
public class jl implements e, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile e f26262l;

    public jl(e eVar) {
        this.f26262l = eVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        Object obj2 = sparseArray.get(1);
        Object kVar = sparseArray.get(2);
        Object guVar = sparseArray.get(3);
        if (kVar != null) {
            kVar = new k((Function) kVar);
        }
        if (guVar != null) {
            guVar = new gu((Function) guVar);
        }
        this.f26262l.execVideoPreload((Context) obj2, (zy) kVar, (e.hp) guVar);
        return null;
    }

    @Override // com.byazt.um.e
    public void execVideoPreload(Context context, zy zyVar, e.hp hpVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, context);
        if (zyVar != null) {
            zyVar = new k(zyVar);
        }
        sparseArray.put(2, zyVar);
        if (hpVar != null) {
            hpVar = new gu(hpVar);
        }
        sparseArray.put(3, hpVar);
        this.hp.apply(sparseArray);
    }

    public jl(Function function) {
        this.hp = function;
    }
}
