package v1;

import java.util.Comparator;
import kotlin.jvm.internal.j;

/* renamed from: v1.a, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1787a {
    public static int a(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static Comparator b() {
        C1788b c1788b = C1788b.f52807b;
        j.c(c1788b, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.naturalOrder>");
        return c1788b;
    }
}
