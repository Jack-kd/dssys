package com.byazt.uhd;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 935, 54})
/* loaded from: classes3.dex */
public class a extends com.byazt.hde.j implements Supplier<SparseArray<Object>> {
    public com.byazt.jt.jx hp;

    public a(com.byazt.jt.jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == -99999986) {
            return (T) values().sparseArray();
        }
        return null;
    }

    public PluginValueSet values() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        com.byazt.jt.jx jxVar = this.hp;
        hpVarHp.hp(8481, jxVar != null ? jxVar.hp() : 0.0d);
        com.byazt.jt.jx jxVar2 = this.hp;
        hpVarHp.hp(8482, jxVar2 != null ? jxVar2.l() : 0.0d);
        return hpVarHp.l();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.function.Supplier
    public SparseArray<Object> get() {
        PluginValueSet pluginValueSetValues = values();
        if (pluginValueSetValues != null) {
            return pluginValueSetValues.sparseArray();
        }
        return null;
    }
}
