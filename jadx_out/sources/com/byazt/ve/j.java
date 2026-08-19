package com.byazt.ve;

import android.util.SparseArray;
import com.byazt.b.OnItemClickListener;
import com.byazt.jz.d;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import java.util.function.LongSupplier;

@com.byazt.kj.hp(hp = {0, 1, 1295, 38})
/* loaded from: classes3.dex */
public abstract class j extends com.byazt.hde.j implements OnItemClickListener, LongSupplier {
    private void onItemClick(Function<SparseArray<Object>, Object> function, Function<SparseArray<Object>, Object> function2, Function<SparseArray<Object>, Object> function3) {
        onItemClick();
    }

    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (pluginValueSet == null) {
            return null;
        }
        if (!com.byazt.kd.j.hp(d.f21856j)) {
            pluginValueSet = com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-99999979, SparseArray.class)).l();
        }
        if (i2 == 223200 && pluginValueSet != null) {
            PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).l();
            onItemClick((Function<SparseArray<Object>, Object>) pluginValueSetL.objectValue(223201, Function.class), (Function<SparseArray<Object>, Object>) pluginValueSetL.objectValue(223202, Function.class), (Function<SparseArray<Object>, Object>) pluginValueSetL.objectValue(223203, Function.class));
        }
        return null;
    }

    @Override // java.util.function.LongSupplier
    public long getAsLong() {
        return -99999981L;
    }

    public abstract void onItemClick();

    @Override // com.byazt.b.OnItemClickListener
    public void onItemClick(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        onItemClick();
    }
}
