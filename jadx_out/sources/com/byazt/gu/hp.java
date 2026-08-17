package com.byazt.gu;

import android.util.SparseArray;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, UMErrorCode.E_UM_BE_EMPTY_URL_PATH, 28})
/* loaded from: classes2.dex */
public class hp {
    public final Function<SparseArray<Object>, Object> hp;

    public hp(Object obj) {
        this.hp = obj != null ? (Function) obj : com.byazt.xi.hp.f27665l;
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 223101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
