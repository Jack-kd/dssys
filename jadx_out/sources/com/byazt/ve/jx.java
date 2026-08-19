package com.byazt.ve;

import android.util.SparseArray;
import com.byazt.b.DownloadMarketInterceptor;
import com.byazt.jz.d;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.LongSupplier;

@com.byazt.kj.hp(hp = {0, 1, 1295, 30})
/* loaded from: classes3.dex */
public abstract class jx extends com.byazt.hde.j implements DownloadMarketInterceptor, LongSupplier {
    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (pluginValueSet != null && i2 == 223901) {
            if (!com.byazt.kd.j.hp(d.f21856j)) {
                pluginValueSet = com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-99999979, SparseArray.class)).l();
            }
            if (pluginValueSet != null) {
                return (T) com.byazt.wi.j.hp().hp(223902, interceptObmMarket((Map) com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).l().objectValue(223902, Map.class))).l();
            }
        }
        return null;
    }

    @Override // java.util.function.LongSupplier
    public long getAsLong() {
        return -99999981L;
    }
}
