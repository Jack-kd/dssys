package kotlin.collections;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.collections.builders.ListBuilder;

/* loaded from: classes5.dex */
public abstract class p {
    public static List a(List builder) {
        kotlin.jvm.internal.j.e(builder, "builder");
        return ((ListBuilder) builder).build();
    }

    public static final Object[] b(Object[] objArr, boolean z2) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        if (z2 && kotlin.jvm.internal.j.a(objArr.getClass(), Object[].class)) {
            return objArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        kotlin.jvm.internal.j.d(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }

    public static List c() {
        return new ListBuilder(0, 1, null);
    }

    public static List d(int i2) {
        return new ListBuilder(i2);
    }

    public static List e(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        kotlin.jvm.internal.j.d(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }

    public static Object[] f(int i2, Object[] array) {
        kotlin.jvm.internal.j.e(array, "array");
        if (i2 < array.length) {
            array[i2] = null;
        }
        return array;
    }
}
