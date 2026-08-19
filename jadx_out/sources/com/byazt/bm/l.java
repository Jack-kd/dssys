package com.byazt.bm;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 72, 34})
/* loaded from: classes2.dex */
public class l {
    public final PluginValueSet hp;

    public l(SparseArray<Object> sparseArray) {
        this.hp = com.byazt.xi.hp.hp(sparseArray).l();
    }

    public List<String> hp() {
        return (List) this.hp.objectValue(262114, List.class);
    }

    public boolean j() {
        return this.hp.booleanValue(262117);
    }

    public boolean jx() {
        return this.hp.booleanValue(262116);
    }

    public List<String> l() {
        return (List) this.hp.objectValue(262115, List.class);
    }

    public boolean w() {
        return this.hp.booleanValue(262118);
    }
}
