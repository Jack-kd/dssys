package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import v1.AbstractC1787a;

/* loaded from: classes5.dex */
public abstract class q extends p {
    public static ArrayList g(Object... elements) {
        kotlin.jvm.internal.j.e(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(h(elements, true));
    }

    public static final Collection h(Object[] objArr, boolean z2) {
        kotlin.jvm.internal.j.e(objArr, "<this>");
        return new C1603h(objArr, z2);
    }

    public static /* synthetic */ Collection i(Object[] objArr, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z2 = false;
        }
        return h(objArr, z2);
    }

    public static final int j(List list, Comparable comparable, int i2, int i3) {
        kotlin.jvm.internal.j.e(list, "<this>");
        s(list.size(), i2, i3);
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int iA = AbstractC1787a.a((Comparable) list.get(i5), comparable);
            if (iA < 0) {
                i2 = i5 + 1;
            } else {
                if (iA <= 0) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static /* synthetic */ int k(List list, Comparable comparable, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = list.size();
        }
        return j(list, comparable, i2, i3);
    }

    public static List l() {
        return EmptyList.INSTANCE;
    }

    public static E1.d m(Collection collection) {
        kotlin.jvm.internal.j.e(collection, "<this>");
        return new E1.d(0, collection.size() - 1);
    }

    public static int n(List list) {
        kotlin.jvm.internal.j.e(list, "<this>");
        return list.size() - 1;
    }

    public static List o(Object... elements) {
        kotlin.jvm.internal.j.e(elements, "elements");
        return elements.length > 0 ? l.c(elements) : l();
    }

    public static List p(Object... elements) {
        kotlin.jvm.internal.j.e(elements, "elements");
        return m.C(elements);
    }

    public static List q(Object... elements) {
        kotlin.jvm.internal.j.e(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(h(elements, true));
    }

    public static final List r(List list) {
        kotlin.jvm.internal.j.e(list, "<this>");
        int size = list.size();
        return size != 0 ? size != 1 ? list : p.e(list.get(0)) : l();
    }

    public static final void s(int i2, int i3, int i4) {
        if (i3 > i4) {
            throw new IllegalArgumentException("fromIndex (" + i3 + ") is greater than toIndex (" + i4 + ").");
        }
        if (i3 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i3 + ") is less than zero.");
        }
        if (i4 <= i2) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i4 + ") is greater than size (" + i2 + ").");
    }

    public static void t() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void u() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
