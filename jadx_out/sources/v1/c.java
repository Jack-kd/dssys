package v1;

import java.util.Comparator;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public final class c implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public static final c f52808b = new c();

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable a3, Comparable b3) {
        j.e(a3, "a");
        j.e(b3, "b");
        return b3.compareTo(a3);
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return C1788b.f52807b;
    }
}
