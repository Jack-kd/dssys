package kotlinx.coroutines;

/* loaded from: classes5.dex */
public abstract class Q {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f51530a = kotlinx.coroutines.internal.C.f("kotlinx.coroutines.main.delay", false);

    /* renamed from: b, reason: collision with root package name */
    public static final T f51531b = b();

    public static final T a() {
        return f51531b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final T b() {
        if (!f51530a) {
            return P.f51525h;
        }
        B0 b0C = X.c();
        return (kotlinx.coroutines.internal.r.c(b0C) || !(b0C instanceof T)) ? P.f51525h : (T) b0C;
    }
}
