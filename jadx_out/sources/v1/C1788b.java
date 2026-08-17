package v1;

import java.util.Comparator;
import kotlin.jvm.internal.j;

/* renamed from: v1.b, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1788b implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public static final C1788b f52807b = new C1788b();

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable a3, Comparable b3) {
        j.e(a3, "a");
        j.e(b3, "b");
        return a3.compareTo(b3);
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return c.f52808b;
    }
}
