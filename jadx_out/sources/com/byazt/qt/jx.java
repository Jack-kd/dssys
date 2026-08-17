package com.byazt.qt;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 594, 30})
/* loaded from: classes3.dex */
public abstract class jx implements Function<SparseArray<Object>, Object> {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        hpVarHp.hp(250001, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.jx.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return jx.this.getAppName();
            }
        }));
        hpVarHp.hp(250002, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.jx.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return jx.this.getAppVersion();
            }
        }));
        hpVarHp.hp(250003, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.jx.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return jx.this.getDeveloperName();
            }
        }));
        hpVarHp.hp(250004, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.jx.4
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return jx.this.getPrivacyUrl();
            }
        }));
        hpVarHp.hp(250006, com.byazt.kd.j.hp(new Supplier<Map<String, String>>() { // from class: com.byazt.qt.jx.5
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Map<String, String> get() {
                return jx.this.getPermissionsMap();
            }
        }));
        hpVarHp.hp(250005, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.jx.6
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return jx.this.getPermissionUrl();
            }
        }));
        hpVarHp.hp(250007, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.jx.7
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return jx.this.getFunctionDescUrl();
            }
        }));
        hpVarHp.hp(250008, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.jx.8
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return jx.this.getRegNumber();
            }
        }));
        hpVarHp.hp(250009, com.byazt.kd.j.hp(new Supplier<String>() { // from class: com.byazt.qt.jx.9
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return jx.this.getRegUrl();
            }
        }));
        return hpVarHp.l();
    }

    public abstract String getAppName();

    public abstract String getAppVersion();

    public abstract String getDeveloperName();

    public abstract String getFunctionDescUrl();

    public abstract String getPermissionUrl();

    public abstract Map<String, String> getPermissionsMap();

    public abstract String getPrivacyUrl();

    public abstract String getRegNumber();

    public abstract String getRegUrl();

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
