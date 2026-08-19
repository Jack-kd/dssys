package com.byazt.uhd;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 935, 30})
/* loaded from: classes3.dex */
public class jx {
    public final PluginValueSet hp;

    private jx(PluginValueSet pluginValueSet) {
        this.hp = pluginValueSet;
    }

    public static jx hp(PluginValueSet pluginValueSet) {
        return new jx(pluginValueSet);
    }

    private boolean l() {
        PluginValueSet pluginValueSet = this.hp;
        return (pluginValueSet == null || pluginValueSet.isEmpty()) ? false : true;
    }

    public Function<SparseArray<Object>, Object> hp() {
        if (l()) {
            return (Function) this.hp.objectValue(8301, Function.class);
        }
        return null;
    }
}
