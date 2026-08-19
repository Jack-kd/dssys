package kotlinx.coroutines;

/* loaded from: classes5.dex */
public final class O0 {

    /* renamed from: a, reason: collision with root package name */
    public static final O0 f51523a = new O0();

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f51524b = kotlinx.coroutines.internal.L.a(new kotlinx.coroutines.internal.B("ThreadLocalEventLoop"));

    public final AbstractC1632d0 a() {
        return (AbstractC1632d0) f51524b.get();
    }

    public final AbstractC1632d0 b() {
        ThreadLocal threadLocal = f51524b;
        AbstractC1632d0 abstractC1632d0 = (AbstractC1632d0) threadLocal.get();
        if (abstractC1632d0 != null) {
            return abstractC1632d0;
        }
        AbstractC1632d0 abstractC1632d0A = AbstractC1663g0.a();
        threadLocal.set(abstractC1632d0A);
        return abstractC1632d0A;
    }

    public final void c() {
        f51524b.set(null);
    }

    public final void d(AbstractC1632d0 abstractC1632d0) {
        f51524b.set(abstractC1632d0);
    }
}
