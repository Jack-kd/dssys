package com.byazt.oj;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1810, 34})
/* loaded from: classes3.dex */
public abstract class l implements Function<SparseArray<Object>, Object> {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        return com.byazt.xi.hp.hp().l();
    }

    public abstract int getCallToActionId();

    public abstract int getDecriptionTextId();

    public abstract Map<String, Integer> getExtras();

    public abstract int getGroupImage1Id();

    public abstract int getGroupImage2Id();

    public abstract int getGroupImage3Id();

    public abstract int getIconImageId();

    public abstract int getLayoutId();

    public abstract int getLogoLayoutId();

    public abstract int getMainImageId();

    public abstract int getMediaViewId();

    public abstract int getShakeViewContainerId();

    public abstract int getSourceId();

    public abstract int getTitleId();

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        pluginValueSetL.objectValue(-99999985, Class.class);
        if (iIntValue != -99999986) {
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
