package com.byazt.wi;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 1789, 30})
/* loaded from: classes3.dex */
public class jx {
    public static boolean hp(int i2) {
        return i2 >= 6803 && i2 < 7000;
    }

    public static PluginValueSet l(Function<SparseArray<Object>, Object> function) {
        if (function == null) {
            return com.byazt.xi.hp.hp().l();
        }
        Object objApply = ((function instanceof Supplier) && hp(com.byazt.nn.hp.hp().l())) ? ((Supplier) function).get() : function.apply(j.hp().hp(-99999986).hp(SparseArray.class).l());
        return objApply instanceof SparseArray ? com.byazt.xi.hp.hp((SparseArray<Object>) objApply).l() : com.byazt.xi.hp.hp().l();
    }

    public static SparseArray<Object> hp(Function<SparseArray<Object>, Object> function) {
        if (function == null) {
            return new SparseArray<>();
        }
        Object objApply = function.apply(j.hp().hp(-99999986).hp(SparseArray.class).l());
        return objApply instanceof SparseArray ? (SparseArray) objApply : new SparseArray<>();
    }
}
