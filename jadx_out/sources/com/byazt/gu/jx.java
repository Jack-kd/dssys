package com.byazt.gu;

import android.util.SparseArray;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, UMErrorCode.E_UM_BE_EMPTY_URL_PATH, 30})
/* loaded from: classes2.dex */
public class jx {
    public final Function<SparseArray<Object>, Object> hp;

    public jx(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 221101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void jx(long j2, long j3, String str, String str2) {
        SparseArray<Object> sparseArray = new SparseArray<>(6);
        sparseArray.put(0, Long.valueOf(j2));
        sparseArray.put(1, Long.valueOf(j3));
        sparseArray.put(2, str);
        sparseArray.put(3, str2);
        sparseArray.put(-99999987, 221104);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l(long j2, long j3, String str, String str2) {
        SparseArray<Object> sparseArray = new SparseArray<>(6);
        sparseArray.put(0, Long.valueOf(j2));
        sparseArray.put(1, Long.valueOf(j3));
        sparseArray.put(2, str);
        sparseArray.put(3, str2);
        sparseArray.put(-99999987, 221103);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(long j2, long j3, String str, String str2) {
        SparseArray<Object> sparseArray = new SparseArray<>(6);
        sparseArray.put(0, Long.valueOf(j2));
        sparseArray.put(1, Long.valueOf(j3));
        sparseArray.put(2, str);
        sparseArray.put(3, str2);
        sparseArray.put(-99999987, 221102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(long j2, String str, String str2) {
        SparseArray<Object> sparseArray = new SparseArray<>(5);
        sparseArray.put(0, Long.valueOf(j2));
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(-99999987, 221105);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(String str, String str2) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, str);
        sparseArray.put(1, str2);
        sparseArray.put(-99999987, 221106);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
