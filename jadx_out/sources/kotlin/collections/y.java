package kotlin.collections;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public abstract class y extends x {

    public static final class a implements kotlin.sequences.g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Iterable f51367a;

        public a(Iterable iterable) {
            this.f51367a = iterable;
        }

        @Override // kotlin.sequences.g
        public Iterator iterator() {
            return this.f51367a.iterator();
        }
    }

    public static kotlin.sequences.g F(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        return new a(iterable);
    }

    public static boolean G(Iterable iterable, Object obj) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).contains(obj) : M(iterable, obj) >= 0;
    }

    public static List H(List list, int i2) {
        kotlin.jvm.internal.j.e(list, "<this>");
        if (i2 >= 0) {
            return X(list, E1.f.b(list.size() - i2, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i2 + " is less than zero.").toString());
    }

    public static final Object I(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        if (iterable instanceof List) {
            return J((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static Object J(List list) {
        kotlin.jvm.internal.j.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static Object K(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static Object L(List list) {
        kotlin.jvm.internal.j.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final int M(Iterable iterable, Object obj) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(obj);
        }
        int i2 = 0;
        for (Object obj2 : iterable) {
            if (i2 < 0) {
                q.u();
            }
            if (kotlin.jvm.internal.j.a(obj, obj2)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static final Appendable N(Iterable iterable, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, Function1 function1) throws IOException {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        kotlin.jvm.internal.j.e(buffer, "buffer");
        kotlin.jvm.internal.j.e(separator, "separator");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        kotlin.jvm.internal.j.e(postfix, "postfix");
        kotlin.jvm.internal.j.e(truncated, "truncated");
        buffer.append(prefix);
        int i3 = 0;
        for (Object obj : iterable) {
            i3++;
            if (i3 > 1) {
                buffer.append(separator);
            }
            if (i2 >= 0 && i3 > i2) {
                break;
            }
            kotlin.text.p.a(buffer, obj, function1);
        }
        if (i2 >= 0 && i3 > i2) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final String P(Iterable iterable, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, Function1 function1) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        kotlin.jvm.internal.j.e(separator, "separator");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        kotlin.jvm.internal.j.e(postfix, "postfix");
        kotlin.jvm.internal.j.e(truncated, "truncated");
        return ((StringBuilder) N(iterable, new StringBuilder(), separator, prefix, postfix, i2, truncated, function1)).toString();
    }

    public static /* synthetic */ String Q(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, Function1 function1, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i3 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i3 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i3 & 8) != 0) {
            i2 = -1;
        }
        if ((i3 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i3 & 32) != 0) {
            function1 = null;
        }
        CharSequence charSequence5 = charSequence4;
        Function1 function12 = function1;
        return P(iterable, charSequence, charSequence2, charSequence3, i2, charSequence5, function12);
    }

    public static Object R(List list) {
        kotlin.jvm.internal.j.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(q.n(list));
    }

    public static Comparable S(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) > 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static List T(Collection collection, Iterable elements) {
        kotlin.jvm.internal.j.e(collection, "<this>");
        kotlin.jvm.internal.j.e(elements, "elements");
        if (!(elements instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            v.z(arrayList, elements);
            return arrayList;
        }
        Collection collection2 = (Collection) elements;
        ArrayList arrayList2 = new ArrayList(collection.size() + collection2.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static List U(Collection collection, Object obj) {
        kotlin.jvm.internal.j.e(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static List V(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            List listB0 = b0(iterable);
            u.x(listB0);
            return listB0;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return a0(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        l.y((Comparable[]) array);
        return l.c(array);
    }

    public static List W(Iterable iterable, Comparator comparator) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        kotlin.jvm.internal.j.e(comparator, "comparator");
        if (!(iterable instanceof Collection)) {
            List listB0 = b0(iterable);
            u.y(listB0, comparator);
            return listB0;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return a0(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        l.z(array, comparator);
        return l.c(array);
    }

    public static final List X(Iterable iterable, int i2) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i2 + " is less than zero.").toString());
        }
        if (i2 == 0) {
            return q.l();
        }
        if (iterable instanceof Collection) {
            if (i2 >= ((Collection) iterable).size()) {
                return a0(iterable);
            }
            if (i2 == 1) {
                return p.e(I(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i2);
        Iterator it = iterable.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i3++;
            if (i3 == i2) {
                break;
            }
        }
        return q.r(arrayList);
    }

    public static final Collection Y(Iterable iterable, Collection destination) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        kotlin.jvm.internal.j.e(destination, "destination");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            destination.add(it.next());
        }
        return destination;
    }

    public static int[] Z(Collection collection) {
        kotlin.jvm.internal.j.e(collection, "<this>");
        int[] iArr = new int[collection.size()];
        Iterator it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = ((Number) it.next()).intValue();
            i2++;
        }
        return iArr;
    }

    public static List a0(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return q.r(b0(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return q.l();
        }
        if (size != 1) {
            return c0(collection);
        }
        return p.e(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static final List b0(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        return iterable instanceof Collection ? c0((Collection) iterable) : (List) Y(iterable, new ArrayList());
    }

    public static List c0(Collection collection) {
        kotlin.jvm.internal.j.e(collection, "<this>");
        return new ArrayList(collection);
    }

    public static Set d0(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        return iterable instanceof Collection ? new LinkedHashSet((Collection) iterable) : (Set) Y(iterable, new LinkedHashSet());
    }

    public static Set e0(Iterable iterable) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return J.g((Set) Y(iterable, new LinkedHashSet()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return J.e();
        }
        if (size != 1) {
            return (Set) Y(iterable, new LinkedHashSet(F.e(collection.size())));
        }
        return I.d(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static List f0(Iterable iterable, Iterable other) {
        kotlin.jvm.internal.j.e(iterable, "<this>");
        kotlin.jvm.internal.j.e(other, "other");
        Iterator it = iterable.iterator();
        Iterator it2 = other.iterator();
        ArrayList arrayList = new ArrayList(Math.min(r.v(iterable, 10), r.v(other, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(kotlin.f.a(it.next(), it2.next()));
        }
        return arrayList;
    }
}
