package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public abstract class v extends u {
    public static boolean A(Collection collection, Object[] elements) {
        kotlin.jvm.internal.j.e(collection, "<this>");
        kotlin.jvm.internal.j.e(elements, "elements");
        return collection.addAll(l.c(elements));
    }

    public static final boolean B(Iterable iterable, Function1 function1, boolean z2) {
        Iterator it = iterable.iterator();
        boolean z3 = false;
        while (it.hasNext()) {
            if (((Boolean) function1.invoke(it.next())).booleanValue() == z2) {
                it.remove();
                z3 = true;
            }
        }
        return z3;
    }

    public static Object C(List list) {
        kotlin.jvm.internal.j.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(q.n(list));
    }

    public static Object D(List list) {
        kotlin.jvm.internal.j.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(q.n(list));
    }

    public static boolean E(Iterable iterable, Function1 predicate) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        kotlin.jvm.internal.j.e(predicate, "predicate");
        return B(iterable, predicate, false);
    }

    public static boolean z(Collection collection, Iterable elements) {
        kotlin.jvm.internal.j.e(collection, "<this>");
        kotlin.jvm.internal.j.e(elements, "elements");
        if (elements instanceof Collection) {
            return collection.addAll((Collection) elements);
        }
        Iterator it = elements.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z2 = true;
            }
        }
        return z2;
    }
}
