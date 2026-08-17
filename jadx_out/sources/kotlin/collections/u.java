package kotlin.collections;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class u extends t {
    public static void x(List list) {
        kotlin.jvm.internal.j.e(list, "<this>");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static final void y(List list, Comparator comparator) {
        kotlin.jvm.internal.j.e(list, "<this>");
        kotlin.jvm.internal.j.e(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
