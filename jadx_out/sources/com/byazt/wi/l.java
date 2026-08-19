package com.byazt.wi;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;

@com.byazt.kj.hp(hp = {0, 1, 1789, 34})
/* loaded from: classes3.dex */
public class l {
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public PluginValueSet f26911j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f26912l;

    public l(SparseArray<Object> sparseArray) {
        if (sparseArray != null) {
            PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
            this.hp = pluginValueSetL.booleanValue(-999903);
            this.f26912l = pluginValueSetL.intValue(-999900);
            this.jx = pluginValueSetL.stringValue(-999901);
            this.f26911j = com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSetL.objectValue(-999902, SparseArray.class)).l();
        }
    }

    public boolean hp() {
        return this.hp;
    }

    public PluginValueSet j() {
        return this.f26911j;
    }

    public String jx() {
        return this.jx;
    }

    public int l() {
        return this.f26912l;
    }
}
