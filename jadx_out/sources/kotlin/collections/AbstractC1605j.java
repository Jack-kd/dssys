package kotlin.collections;

import java.lang.reflect.Array;

/* renamed from: kotlin.collections.j, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1605j {
    public static final Object[] a(Object[] reference, int i2) throws NegativeArraySizeException {
        kotlin.jvm.internal.j.e(reference, "reference");
        Object objNewInstance = Array.newInstance(reference.getClass().getComponentType(), i2);
        kotlin.jvm.internal.j.c(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (Object[]) objNewInstance;
    }

    public static final void b(int i2, int i3) {
        if (i2 <= i3) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i2 + ") is greater than size (" + i3 + ").");
    }
}
