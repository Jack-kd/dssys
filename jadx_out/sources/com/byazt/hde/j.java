package com.byazt.hde;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1006, 38})
/* loaded from: classes2.dex */
public abstract class j implements Function<SparseArray<Object>, Object> {
    public abstract <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls);

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        return applyFunction(pluginValueSetL.intValue(-99999987, 0), pluginValueSetL, (Class) pluginValueSetL.objectValue(-99999985, Class.class));
    }
}
