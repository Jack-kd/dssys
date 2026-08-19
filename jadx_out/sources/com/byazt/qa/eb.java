package com.byazt.qa;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;

@com.byazt.kj.hp(hp = {0, 1, 1566, 94})
/* loaded from: classes3.dex */
public abstract class eb extends jx {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        return com.byazt.xi.hp.hp(super.values()).l();
    }

    public abstract void destroy();

    @Override // com.byazt.qa.jx
    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetHp = hp();
        this.hp = pluginValueSetHp;
        return pluginValueSetHp;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.byazt.qa.jx, java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        pluginValueSetL.objectValue(-99999985, Class.class);
        if (iIntValue == -99999986) {
            return values().sparseArray();
        }
        if (iIntValue != 270007) {
            return super.apply(sparseArray);
        }
        destroy();
        return null;
    }
}
