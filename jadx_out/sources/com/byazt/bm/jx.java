package com.byazt.bm;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 72, 30})
/* loaded from: classes2.dex */
public class jx {
    public final PluginValueSet hp;

    public jx(SparseArray<Object> sparseArray) {
        this.hp = com.byazt.xi.hp.hp(sparseArray).l();
    }

    public String a() {
        return (String) this.hp.objectValue(265005, String.class);
    }

    public String eb() {
        return (String) this.hp.objectValue(265006, String.class);
    }

    public Map<String, String> hp() {
        return (Map) this.hp.objectValue(265007, Map.class);
    }

    public String j() {
        return (String) this.hp.objectValue(265003, String.class);
    }

    public String jx() {
        return (String) this.hp.objectValue(265002, String.class);
    }

    public String l() {
        return (String) this.hp.objectValue(265001, String.class);
    }

    public int w() {
        return this.hp.intValue(265004);
    }
}
