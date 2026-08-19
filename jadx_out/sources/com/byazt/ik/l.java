package com.byazt.ik;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 110, 34})
/* loaded from: classes.dex */
public class l implements Loader {
    public final Function<SparseArray<Object>, Void> hp;

    public l(Function<SparseArray<Object>, Void> function) {
        this.hp = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Loader
    public void load(int i2, ValueSet valueSet, EventListener eventListener) {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            if (valueSet != null) {
                sparseArray = valueSet.sparseArray();
            }
            sparseArray.put(-99999982, Integer.valueOf(i2));
            sparseArray.put(-99999985, Void.class);
            this.hp.apply(sparseArray);
        }
    }
}
