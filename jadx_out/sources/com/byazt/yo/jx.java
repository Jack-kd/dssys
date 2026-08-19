package com.byazt.yo;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1198, 30})
/* loaded from: classes3.dex */
public class jx implements Loader {
    public Function<SparseArray<Object>, Object> hp;

    public jx(Function<SparseArray<Object>, Object> function) {
        this.hp = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Loader
    public void load(int i2, ValueSet valueSet, EventListener eventListener) {
        if (valueSet == null || this.hp == null) {
            return;
        }
        com.byazt.fp.hp hpVar = new com.byazt.fp.hp(valueSet);
        hpVar.put(-99999987, Integer.valueOf(i2));
        hpVar.put(-99999982, Integer.valueOf(i2));
        this.hp.apply(hpVar);
    }
}
