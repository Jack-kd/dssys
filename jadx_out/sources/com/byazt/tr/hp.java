package com.byazt.tr;

import android.os.Bundle;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2340, 28})
/* loaded from: classes3.dex */
public abstract class hp implements Function<SparseArray<Object>, Object> {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        return com.byazt.xi.hp.hp().l();
    }

    public abstract void onConditionReturn(Bundle bundle);

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        pluginValueSetL.objectValue(-99999985, Class.class);
        if (iIntValue != -99999986) {
            if (iIntValue == 123101) {
                onConditionReturn((Bundle) pluginValueSetL.objectValue(0, Bundle.class));
            }
            return null;
        }
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return pluginValueSet.sparseArray();
        }
        PluginValueSet pluginValueSetHp = hp();
        this.hp = pluginValueSetHp;
        return pluginValueSetHp.sparseArray();
    }
}
