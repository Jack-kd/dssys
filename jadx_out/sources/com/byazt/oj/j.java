package com.byazt.oj;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1810, 38})
/* loaded from: classes3.dex */
public abstract class j implements Function<SparseArray<Object>, Object> {
    public PluginValueSet hp;

    public abstract Map<String, Object> getAppInfoExtra();

    public abstract String getAppName();

    public abstract String getAuthorName();

    public abstract String getFunctionDescUrl();

    public abstract long getPackageSizeBytes();

    public abstract Map<String, String> getPermissionsMap();

    public abstract String getPermissionsUrl();

    public abstract String getPrivacyAgreement();

    public abstract String getRegUrl();

    public abstract String getVersionName();

    public PluginValueSet hp() {
        return com.byazt.xi.hp.hp().l();
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
            if (iIntValue == 271047) {
                return getFunctionDescUrl();
            }
            if (iIntValue == 271051) {
                return getRegUrl();
            }
            switch (iIntValue) {
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
