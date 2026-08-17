package kotlin.collections;

import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes5.dex */
public abstract class K extends J {
    public static Set i(Set set, Iterable elements) {
        int size;
        kotlin.jvm.internal.j.e(set, "<this>");
        kotlin.jvm.internal.j.e(elements, "elements");
        Integer numW = r.w(elements);
        if (numW != null) {
            size = set.size() + numW.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(F.e(size));
        linkedHashSet.addAll(set);
        v.z(linkedHashSet, elements);
        return linkedHashSet;
    }

    public static Set j(Set set, Object obj) {
        kotlin.jvm.internal.j.e(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(F.e(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(obj);
        return linkedHashSet;
    }
}
