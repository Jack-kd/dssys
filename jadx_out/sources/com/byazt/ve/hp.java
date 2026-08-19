package com.byazt.ve;

import android.util.SparseArray;
import com.byazt.b.IDownloadButtonClickListener;
import com.byazt.jz.d;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.LongSupplier;

@com.byazt.kj.hp(hp = {0, 1, 1295, 28})
/* loaded from: classes3.dex */
public abstract class hp extends com.byazt.hde.j implements IDownloadButtonClickListener, LongSupplier {
    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (pluginValueSet == null) {
            return null;
        }
        if (i2 == 223100) {
            if (!com.byazt.kd.j.hp(d.f21856j)) {
                pluginValueSet = com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-99999979, SparseArray.class)).l();
            }
            handleComplianceDialog(com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).l().booleanValue(223101));
        } else if (i2 == 223110) {
            handleMarketFailedComplianceDialog();
        }
        return null;
    }

    @Override // java.util.function.LongSupplier
    public long getAsLong() {
        return -99999981L;
    }
}
