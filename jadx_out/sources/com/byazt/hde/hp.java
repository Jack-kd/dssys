package com.byazt.hde;

import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.LongSupplier;

@com.byazt.kj.hp(hp = {0, 1, 1006, 28})
/* loaded from: classes2.dex */
public abstract class hp extends j implements LongSupplier {
    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == 0) {
            onAppBackground();
            return null;
        }
        if (i2 != 1) {
            return null;
        }
        onAppForeground();
        return null;
    }

    @Override // java.util.function.LongSupplier
    public long getAsLong() {
        return -99999981L;
    }

    public abstract void onAppBackground();

    public abstract void onAppForeground();
}
