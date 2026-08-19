package com.byazt.uhd;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.List;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 935, 94})
/* loaded from: classes3.dex */
public class eb extends com.byazt.hde.j implements Supplier<SparseArray<Object>> {
    public com.byazt.bm.l hp;

    public eb(com.byazt.bm.l lVar) {
        this.hp = lVar;
    }

    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == -99999986) {
            return (T) values().sparseArray();
        }
        return null;
    }

    public List<String> getCustomAppList() {
        com.byazt.bm.l lVar = this.hp;
        if (lVar != null) {
            return lVar.hp();
        }
        return null;
    }

    public List<String> getCustomDevImeis() {
        com.byazt.bm.l lVar = this.hp;
        if (lVar != null) {
            return lVar.l();
        }
        return null;
    }

    public boolean isCanUseOaid() {
        com.byazt.bm.l lVar = this.hp;
        if (lVar != null) {
            return lVar.jx();
        }
        return true;
    }

    public boolean isLimitPersonalAds() {
        com.byazt.bm.l lVar = this.hp;
        if (lVar != null) {
            return lVar.j();
        }
        return false;
    }

    public boolean isProgrammaticRecommend() {
        com.byazt.bm.l lVar = this.hp;
        if (lVar != null) {
            return lVar.w();
        }
        return true;
    }

    public PluginValueSet values() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(8476, getCustomAppList());
        hpVarHp.hp(8477, getCustomDevImeis());
        hpVarHp.hp(8478, isCanUseOaid());
        hpVarHp.hp(8027, isLimitPersonalAds());
        hpVarHp.hp(8028, isProgrammaticRecommend());
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
