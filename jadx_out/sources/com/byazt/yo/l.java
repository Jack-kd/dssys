package com.byazt.yo;

import android.content.Context;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Initializer;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1198, 34})
/* loaded from: classes3.dex */
public class l implements Initializer {
    public final Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        this.hp = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public Manager getManager() {
        if (this.hp == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -999000);
        sparseArray.put(-99999985, Function.class);
        Object objApply = this.hp.apply(sparseArray);
        if (objApply instanceof Function) {
            return new j((Function) objApply);
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public void init(Context context, ValueSet valueSet) {
        com.byazt.fp.hp hpVar = new com.byazt.fp.hp(valueSet);
        hpVar.put(-99999987, -999001);
        hpVar.put(-99999985, Void.class);
        hpVar.put(-998000, context);
        Function<SparseArray<Object>, Object> function = this.hp;
        if (function != null) {
            function.apply(hpVar);
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public boolean isInitSuccess() {
        if (this.hp != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, -999002);
            sparseArray.put(-99999985, Boolean.TYPE);
            Object objApply = this.hp.apply(sparseArray);
            if (objApply != null && ((Boolean) objApply).booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
