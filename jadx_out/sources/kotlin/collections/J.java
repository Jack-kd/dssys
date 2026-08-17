package kotlin.collections;

import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes5.dex */
public abstract class J extends I {
    public static Set e() {
        return EmptySet.INSTANCE;
    }

    public static Set f(Object... elements) {
        kotlin.jvm.internal.j.e(elements, "elements");
        return (Set) m.Y(elements, new LinkedHashSet(F.e(elements.length)));
    }

    public static final Set g(Set set) {
        kotlin.jvm.internal.j.e(set, "<this>");
        int size = set.size();
        return size != 0 ? size != 1 ? set : I.d(set.iterator().next()) : e();
    }

    public static Set h(Object... elements) {
        kotlin.jvm.internal.j.e(elements, "elements");
        return m.b0(elements);
    }
}
