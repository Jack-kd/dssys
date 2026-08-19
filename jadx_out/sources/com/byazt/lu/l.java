package com.byazt.lu;

import android.util.SparseArray;
import com.byazt.xi.jx;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1986, 34})
/* loaded from: classes3.dex */
public class l extends hp {
    private final Bridge hp;

    public l(Bridge bridge) {
        this.hp = bridge == null ? jx.f27668l : bridge;
    }

    public static Function<SparseArray<Object>, Object> covertToFunction(Object obj) {
        if (obj instanceof Function) {
            return (Function) obj;
        }
        if (obj instanceof Bridge) {
            return new l((Bridge) obj);
        }
        return null;
    }

    @Override // com.byazt.lu.hp
    public <T> T applyFunction(int i2, ValueSet valueSet, Class<T> cls) {
        return (T) this.hp.call(i2, valueSet, cls);
    }

    @Override // com.byazt.lu.hp
    public SparseArray<Object> get() {
        if (this.hp.values() == null) {
            return null;
        }
        SparseArray<Object> sparseArray = this.hp.values().sparseArray();
        return sparseArray == null ? new SparseArray<>() : sparseArray;
    }

    public Bridge getBridge() {
        return this.hp;
    }
}
