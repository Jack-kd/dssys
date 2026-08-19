package com.byazt.qa;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 1566, 34})
/* loaded from: classes3.dex */
public abstract class l implements Function<SparseArray<Object>, Object> {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(271001, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qa.l.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return l.this.getMediationRit();
            }
        }));
        hpVarHp.hp(271002, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qa.l.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return l.this.getAdnName();
            }
        }));
        hpVarHp.hp(271003, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qa.l.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return l.this.getAdType();
            }
        }));
        hpVarHp.hp(271004, com.byazt.kd.j.hp(new Supplier<Integer>() { // from class: com.byazt.qa.l.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(l.this.getErrCode());
            }
        }));
        hpVarHp.hp(271005, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qa.l.5
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return l.this.getErrMsg();
            }
        }));
        return hpVarHp.l();
    }

    public abstract String getAdType();

    public abstract String getAdnName();

    public abstract int getErrCode();

    public abstract String getErrMsg();

    public abstract String getMediationRit();

    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return com.byazt.xi.hp.hp(pluginValueSet).l();
        }
        PluginValueSet pluginValueSetHp = hp();
        this.hp = pluginValueSetHp;
        return com.byazt.xi.hp.hp(pluginValueSetHp).l();
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
