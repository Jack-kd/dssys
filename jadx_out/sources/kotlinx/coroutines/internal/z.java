package kotlinx.coroutines.internal;

/* loaded from: classes5.dex */
public abstract class z {
    public static Object a(Object obj) {
        return obj;
    }

    public static final y b(Object obj) {
        if (obj == AbstractC1668a.f51773a) {
            throw new IllegalStateException("Does not contain segment");
        }
        kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (y) obj;
    }

    public static final boolean c(Object obj) {
        return obj == AbstractC1668a.f51773a;
    }
}
