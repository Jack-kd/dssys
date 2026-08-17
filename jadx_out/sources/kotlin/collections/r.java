package kotlin.collections;

import java.util.Collection;

/* loaded from: classes5.dex */
public abstract class r extends q {
    public static int v(Iterable iterable, int i2) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i2;
    }

    public static final Integer w(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return Integer.valueOf(((Collection) iterable).size());
        }
        return null;
    }
}
