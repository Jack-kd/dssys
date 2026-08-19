package com.byazt.qt;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 594, 45})
/* loaded from: classes3.dex */
public abstract class e extends zy {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp(super.values());
        hpVarHp.hp(160001, com.byazt.kd.j.hp(new Supplier<Double>() { // from class: com.byazt.qt.e.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Double get() {
                return Double.valueOf(e.this.getVideoDuration());
            }
        }));
        hpVarHp.hp(160002, com.byazt.kd.j.hp(new Supplier<com.byazt.za.hp>() { // from class: com.byazt.qt.e.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public com.byazt.za.hp get() {
                return e.this.getCustomVideo();
            }
        }));
        hpVarHp.hp(160003, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.e.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(e.this.getAdViewWidth());
            }
        }));
        hpVarHp.hp(160004, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qt.e.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(e.this.getAdViewHeight());
            }
        }));
        return hpVarHp.l();
    }

    public abstract int getAdViewHeight();

    public abstract int getAdViewWidth();

    public abstract com.byazt.za.hp getCustomVideo();

    public abstract double getVideoDuration();

    public abstract void setVideoAdListener(com.byazt.nq.hp hpVar);

    public abstract void setVideoRewardListener(com.byazt.nq.l lVar);

    @Override // com.byazt.qt.zy
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
    @Override // com.byazt.qt.zy, com.byazt.qt.s, java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        pluginValueSetL.objectValue(-99999985, Class.class);
        switch (iIntValue) {
            case -99999986:
                return values().sparseArray();
            case 140111:
                Function function = (Function) pluginValueSetL.objectValue(0, Function.class);
                setExpressRenderListener(pluginValueSetL.intValue(1) == 1 ? new com.byazt.tl.w(function) : new com.byazt.pt.jx(function));
                return null;
            case 160101:
                setVideoAdListener(new com.byazt.nq.hp((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            case 160102:
                setVideoRewardListener(new com.byazt.nq.l((Function) pluginValueSetL.objectValue(0, Function.class)));
                return null;
            default:
                return super.apply(sparseArray);
        }
    }
}
