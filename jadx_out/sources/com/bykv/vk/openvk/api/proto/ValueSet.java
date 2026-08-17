package com.bykv.vk.openvk.api.proto;

import android.annotation.TargetApi;
import android.util.SparseArray;
import java.util.Set;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public interface ValueSet {

    @TargetApi(24)
    public interface ValueGetter<T> extends Supplier<T> {
        @Override // java.util.function.Supplier
        T get();
    }

    <T> T[] arrayValue(int i2, Class<T> cls);

    boolean booleanValue(int i2);

    boolean booleanValue(int i2, boolean z2);

    boolean containsKey(int i2);

    double doubleValue(int i2);

    float floatValue(int i2);

    float floatValue(int i2, float f2);

    int intValue(int i2);

    int intValue(int i2, int i3);

    boolean isEmpty();

    Set<Integer> keys();

    long longValue(int i2);

    long longValue(int i2, long j2);

    <T> T objectValue(int i2, Class<T> cls);

    void remove(int i2);

    int size();

    SparseArray<Object> sparseArray();

    String stringValue(int i2);

    String stringValue(int i2, String str);
}
