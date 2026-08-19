package com.byazt.ow;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1736, 34})
@ATSKeep
/* loaded from: classes3.dex */
public class l implements hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile hp f24197l;

    public l(hp hpVar) {
        this.f24197l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        return this.f24197l.convert(sparseArray.get(1));
    }

    @Override // com.byazt.ow.hp
    public Object convert(Object obj) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, obj);
        return this.hp.apply(sparseArray);
    }

    public l(Function function) {
        this.hp = function;
    }
}
