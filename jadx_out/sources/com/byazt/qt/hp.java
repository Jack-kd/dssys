package com.byazt.qt;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 594, 28})
/* loaded from: classes3.dex */
public abstract class hp implements Function<SparseArray<Object>, Object> {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(263001, com.byazt.kd.j.hp(new Supplier<Object>() { // from class: com.byazt.qt.hp.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(hp.this.getCode());
            }
        }));
        hpVarHp.hp(263002, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.hp.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return hp.this.getMsg();
            }
        }));
        return hpVarHp.l();
    }

    public abstract int getCode();

    public abstract String getMsg();

    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetHp = hp();
        this.hp = pluginValueSetHp;
        return pluginValueSetHp;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        pluginValueSetL.objectValue(-99999985, Class.class);
        if (iIntValue != -99999986) {
            return null;
        }
        return values().sparseArray();
    }
}
