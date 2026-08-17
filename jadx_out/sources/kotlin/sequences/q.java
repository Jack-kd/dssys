package kotlin.sequences;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public abstract class q extends o {

    public static final class a implements Iterable, B1.a {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ g f51441b;

        public a(g gVar) {
            this.f51441b = gVar;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return this.f51441b.iterator();
        }
    }

    public static g A(g gVar, Function1 transform) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        kotlin.jvm.internal.j.e(transform, "transform");
        return r(new r(gVar, transform));
    }

    public static final Collection B(g gVar, Collection destination) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        kotlin.jvm.internal.j.e(destination, "destination");
        Iterator it = gVar.iterator();
        while (it.hasNext()) {
            destination.add(it.next());
        }
        return destination;
    }

    public static List C(g gVar) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        Iterator it = gVar.iterator();
        if (!it.hasNext()) {
            return kotlin.collections.q.l();
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return kotlin.collections.p.e(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static final List D(g gVar) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        return (List) B(gVar, new ArrayList());
    }

    public static Iterable m(g gVar) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        return new a(gVar);
    }

    public static boolean n(g gVar, Object obj) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        return u(gVar, obj) >= 0;
    }

    public static int o(g gVar) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        Iterator it = gVar.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            it.next();
            i2++;
            if (i2 < 0) {
                kotlin.collections.q.t();
            }
        }
        return i2;
    }

    public static g p(g gVar, int i2) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        if (i2 >= 0) {
            return i2 == 0 ? gVar : gVar instanceof c ? ((c) gVar).a(i2) : new b(gVar, i2);
        }
        throw new IllegalArgumentException(("Requested element count " + i2 + " is less than zero.").toString());
    }

    public static final g q(g gVar, Function1 predicate) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        kotlin.jvm.internal.j.e(predicate, "predicate");
        return new e(gVar, false, predicate);
    }

    public static final g r(g gVar) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        g gVarQ = q(gVar, new Function1() { // from class: kotlin.sequences.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(q.s(obj));
            }
        });
        kotlin.jvm.internal.j.c(gVarQ, "null cannot be cast to non-null type kotlin.sequences.Sequence<T of kotlin.sequences.SequencesKt___SequencesKt.filterNotNull>");
        return gVarQ;
    }

    public static final boolean s(Object obj) {
        return obj == null;
    }

    public static Object t(g gVar) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        Iterator it = gVar.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static final int u(g gVar, Object obj) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        int i2 = 0;
        for (Object obj2 : gVar) {
            if (i2 < 0) {
                kotlin.collections.q.u();
            }
            if (kotlin.jvm.internal.j.a(obj, obj2)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static final Appendable v(g gVar, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, Function1 function1) throws IOException {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        kotlin.jvm.internal.j.e(buffer, "buffer");
        kotlin.jvm.internal.j.e(separator, "separator");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        kotlin.jvm.internal.j.e(postfix, "postfix");
        kotlin.jvm.internal.j.e(truncated, "truncated");
        buffer.append(prefix);
        int i3 = 0;
        for (Object obj : gVar) {
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

    public static final String w(g gVar, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, Function1 function1) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        kotlin.jvm.internal.j.e(separator, "separator");
        kotlin.jvm.internal.j.e(prefix, "prefix");
        kotlin.jvm.internal.j.e(postfix, "postfix");
        kotlin.jvm.internal.j.e(truncated, "truncated");
        return ((StringBuilder) v(gVar, new StringBuilder(), separator, prefix, postfix, i2, truncated, function1)).toString();
    }

    public static /* synthetic */ String x(g gVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, Function1 function1, int i3, Object obj) {
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
        return w(gVar, charSequence, charSequence2, charSequence3, i2, charSequence5, function12);
    }

    public static Object y(g gVar) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        Iterator it = gVar.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Sequence is empty.");
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static g z(g gVar, Function1 transform) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        kotlin.jvm.internal.j.e(transform, "transform");
        return new r(gVar, transform);
    }
}
