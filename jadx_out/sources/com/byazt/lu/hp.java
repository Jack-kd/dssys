package com.byazt.lu;

import android.util.SparseArray;
import com.byazt.xi.jx;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;
import java.util.function.IntSupplier;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, 1986, 28})
/* loaded from: classes3.dex */
public abstract class hp implements Function<SparseArray<Object>, Object>, IntSupplier {
    public static <T> T objectValue(Object obj, Class<T> cls, T t2) {
        if (obj instanceof ValueSet.ValueGetter) {
            obj = (T) ((ValueSet.ValueGetter) obj).get();
        } else if ((obj instanceof Supplier) && !(obj instanceof Function) && !(obj instanceof ValueSet)) {
            obj = (T) ((Supplier) obj).get();
        }
        return cls.isInstance(obj) ? (T) obj : t2;
    }

    public abstract <T> T applyFunction(int i2, ValueSet valueSet, Class<T> cls);

    public abstract SparseArray<Object> get();

    @Override // java.util.function.IntSupplier
    public int getAsInt() {
        return 7000;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        ValueSet valueSetL = jx.hp(sparseArray).l();
        int iIntValue = valueSetL.intValue(-99999987, 0);
        return iIntValue == -99999986 ? get() : applyFunction(iIntValue, valueSetL, (Class) valueSetL.objectValue(-99999985, Class.class));
    }
}
