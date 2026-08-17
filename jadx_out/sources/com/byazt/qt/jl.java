package com.byazt.qt;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 594, 19})
/* loaded from: classes3.dex */
public abstract class jl implements Function<SparseArray<Object>, Object> {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(230002, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.jl.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(jl.this.getHeight());
            }
        }));
        hpVarHp.hp(230001, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.jl.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(jl.this.getWidth());
            }
        }));
        hpVarHp.hp(230003, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.jl.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return jl.this.getImageUrl();
            }
        }));
        hpVarHp.hp(230004, com.byazt.kd.j.hp(new Supplier<Double>() { // from class: com.byazt.qt.jl.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Double get() {
                return Double.valueOf(jl.this.getDuration());
            }
        }));
        hpVarHp.hp(230005, com.byazt.kd.j.hp(new Supplier<Boolean>() { // from class: com.byazt.qt.jl.5
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(jl.this.isValid());
            }
        }));
        return hpVarHp.l();
    }

    public abstract double getDuration();

    public abstract int getHeight();

    public abstract String getImageUrl();

    public abstract int getWidth();

    public abstract boolean isValid();

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
        if (sparseArray != null && com.byazt.xi.hp.hp(sparseArray).l().intValue(-99999987) == -99999986) {
            return values().sparseArray();
        }
        return null;
    }
}
