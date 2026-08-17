package com.byazt.ik;

import android.content.Context;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 110, 30})
/* loaded from: classes.dex */
public class jx implements Manager {
    public final Function<SparseArray<Object>, Object> hp;

    public jx(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.jx.jx : function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Loader createLoader(Context context) {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -999800);
        sparseArray.put(-998000, context);
        sparseArray.put(-99999985, Function.class);
        return new l((Function) this.hp.apply(sparseArray));
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Bridge getBridge(int i2) {
        return null;
    }

    public Function<SparseArray<Object>, Object> hp(int i2) {
        SparseArray<Object> sparseArray = new SparseArray<>();
        if (i2 == 1) {
            i2 = 999801;
        }
        sparseArray.put(-99999987, Integer.valueOf(i2));
        Object objApply = this.hp.apply(sparseArray);
        if (objApply instanceof Function) {
            return (Function) objApply;
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public ValueSet values() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -99999986);
        Object objApply = this.hp.apply(sparseArray);
        if (objApply instanceof SparseArray) {
            return com.byazt.xi.jx.hp((SparseArray<Object>) objApply).l();
        }
        return null;
    }
}
