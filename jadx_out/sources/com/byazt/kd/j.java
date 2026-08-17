package com.byazt.kd;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 860, 38})
/* loaded from: classes2.dex */
public class j {
    public static boolean hp(int i2) {
        return i2 >= 6803 && i2 < 7000;
    }

    public static <T> Object hp(final Supplier<T> supplier) {
        return hp(com.byazt.nn.hp.hp().l()) ? new ValueSet.ValueGetter<Object>() { // from class: com.byazt.kd.j.1
            /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter, java.util.function.Supplier
            public T get() {
                return supplier.get();
            }
        } : supplier;
    }

    public static Object hp(SparseArray<Object> sparseArray) {
        return hp(com.byazt.nn.hp.hp().l()) ? com.byazt.xi.jx.hp(sparseArray).l() : sparseArray;
    }

    public static PluginValueSet hp(int i2, PluginValueSet pluginValueSet) {
        if (hp(com.byazt.nn.hp.hp().l())) {
            return com.byazt.xi.hp.hp(((ValueSet) pluginValueSet.objectValue(i2, ValueSet.class)).sparseArray()).l();
        }
        return com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(i2, SparseArray.class)).l();
    }
}
