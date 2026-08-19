package com.byazt.dw;

import android.util.SparseArray;
import com.byazt.dw.hp;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1104, 34})
/* loaded from: classes2.dex */
public class l implements hp.InterfaceC0211hp {
    public Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        this.hp = function;
    }

    @Override // com.byazt.dw.hp.InterfaceC0211hp
    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 0);
        Function<SparseArray<Object>, Object> function = this.hp;
        if (function != null) {
            function.apply(sparseArray);
        }
    }

    @Override // com.byazt.dw.hp.InterfaceC0211hp
    public void l() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 1);
        Function<SparseArray<Object>, Object> function = this.hp;
        if (function != null) {
            function.apply(sparseArray);
        }
    }
}
