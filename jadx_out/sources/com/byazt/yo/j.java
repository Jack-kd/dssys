package com.byazt.yo;

import android.content.Context;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1198, 38})
/* loaded from: classes3.dex */
public class j implements Bridge, Manager {
    public final Function<SparseArray<Object>, Object> hp;

    public j(Function<SparseArray<Object>, Object> function) {
        this.hp = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i2, ValueSet valueSet, Class<T> cls) {
        if (this.hp == null) {
            return null;
        }
        com.byazt.fp.hp hpVar = new com.byazt.fp.hp(valueSet);
        hpVar.put(-99999987, Integer.valueOf(i2));
        hpVar.put(-99999985, cls);
        T t2 = (T) com.byazt.da.hp.l(this.hp.apply(hpVar));
        return t2 != null ? t2 : (T) com.byazt.xi.jx.jx.apply(hpVar);
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Loader createLoader(Context context) {
        if (this.hp == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -999800);
        sparseArray.put(-99999985, Function.class);
        sparseArray.put(-998000, context);
        Object objApply = this.hp.apply(sparseArray);
        if (objApply instanceof Function) {
            return new jx((Function) objApply);
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Bridge getBridge(int i2) {
        if (this.hp == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        if (i2 == 1) {
            i2 = 999801;
        }
        sparseArray.put(-99999987, Integer.valueOf(i2));
        sparseArray.put(-99999985, Function.class);
        Object objApply = this.hp.apply(sparseArray);
        if (objApply instanceof Function) {
            return new com.byazt.fp.l((Function) objApply);
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        if (this.hp == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -99999986);
        sparseArray.put(-99999985, SparseArray.class);
        Object objApply = this.hp.apply(sparseArray);
        if (objApply instanceof SparseArray) {
            return com.byazt.da.hp.l((SparseArray<Object>) objApply);
        }
        return null;
    }
}
