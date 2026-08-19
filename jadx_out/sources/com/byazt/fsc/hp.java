package com.byazt.fsc;

import android.util.SparseArray;
import com.byazt.wi.jx;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1899, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.qjq.hp {
    public hp(Function<SparseArray<Object>, Object> function) {
        PluginValueSet pluginValueSetL;
        if (function == null || (pluginValueSetL = jx.l(function)) == null) {
            return;
        }
        j(pluginValueSetL.stringValue(8505));
        w(pluginValueSetL.stringValue(8506));
        hp(pluginValueSetL.longValue(8507));
        a(pluginValueSetL.stringValue(8508));
        hp((Map<String, String>) pluginValueSetL.objectValue(8509, Map.class));
        eb(pluginValueSetL.stringValue(8510));
        s(pluginValueSetL.stringValue(8511));
        l((Map<String, Object>) pluginValueSetL.objectValue(8512, Map.class));
        jx(pluginValueSetL.stringValue(8551));
        hp(pluginValueSetL.stringValue(8559));
    }
}
