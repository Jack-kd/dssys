package E1;

import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public interface a {

    /* renamed from: E1.a$a, reason: collision with other inner class name */
    public static final class C0003a {
        public static boolean a(a aVar, Comparable value) {
            j.e(value, "value");
            return value.compareTo(aVar.getStart()) >= 0 && value.compareTo(aVar.getEndInclusive()) <= 0;
        }

        public static boolean b(a aVar) {
            return aVar.getStart().compareTo(aVar.getEndInclusive()) > 0;
        }
    }

    Comparable getEndInclusive();

    Comparable getStart();
}
